/** Typed value-or-error results. See docs/guide.md for ownership and empty states. */
module error_d;

import core.attribute : mustuse;
import core.lifetime : move;
import core.stdc.stdlib : abort;
import std.sumtype : SumType, match, get;
import std.meta : allSatisfy;
import std.traits : CopyTypeQualifiers, FieldTypeTuple, FunctionAttribute,
    OriginalType, functionAttributes, hasElaborateCopyConstructor,
    hasElaborateDestructor, hasElaborateMove, hasIndirections, hasNested,
    isAssignable, isCopyable, isFloatingPoint, isIntegral, isSomeChar;

enum ResultState { empty, success, failure }

private struct Empty {}
private struct Success(T) { T payload; }
private struct Failure(E) { E payload; }
private struct VoidSuccess {}

private template safeDestruction(T)
{
    enum safeDestruction = !hasElaborateDestructor!T || __traits(compiles, (ref T value) @safe nothrow { destroy(value); });
}

// A foreign payload's destructor must be safe; trusting storage transfer must
// never hide arbitrary @system cleanup. Constructors and copies remain inferred.
private template safeTransfer(T)
{
    static if (is(T == const) || is(T == immutable))
        enum safeTransfer = __traits(compiles, (ref T value) @safe nothrow { T copy = value; });
    else
        enum safeTransfer = __traits(compiles, (ref T value) @safe nothrow { cast(void) move(value); });
}

private template storable(T)
{
    enum storable = !is(T == void) && !is(T == function) && safeDestruction!T && safeTransfer!T && !hasElaborateMove!T;
}

// A reference copy constructor can keep reading its source after arbitrary user
// code has reentered and replaced the owning variant. Such copies are @system;
// postblit copies operate on an already-independent destination instead.
private template referenceCopy(T)
{
    static if (__traits(isStaticArray, T))
        enum referenceCopy = T.length && referenceCopy!(typeof(T.init[0]));
    else static if (is(T == struct))
        enum referenceCopy = __traits(hasCopyConstructor, T);
    else enum referenceCopy = false;
}

private template trivialTransfer(T)
{
    enum trivialTransfer = !hasElaborateCopyConstructor!T && !hasElaborateDestructor!T && !hasElaborateMove!T;
}

private template plainPayload(T)
{
    static if (is(T == void)) enum plainPayload = true;
    else static if (is(T == const) || is(T == immutable) || is(T == shared) || is(T == inout))
        enum plainPayload = false;
    else static if (is(T == enum)) enum plainPayload = plainPayload!(OriginalType!T);
    else static if (__traits(isStaticArray, T))
        enum plainPayload = plainPayload!(typeof(T.init[0]));
    else static if (is(T == struct))
        enum plainPayload = trivialTransfer!T && !hasIndirections!T && !hasNested!T
            && !__traits(hasMember, T, "opAssign") && !__traits(getAliasThis, T).length
            && isAssignable!T && allSatisfy!(error_d.plainPayload, FieldTypeTuple!T);
    else enum plainPayload = isIntegral!T || isFloatingPoint!T || isSomeChar!T;
}

// The specialization contains no pointers, user copy/destruction/move hooks or
// overloaded assignment. Inactive bytes may be unspecified; only the checked
// active branch is read. All resource/reference-bearing types stay on SumType.
private struct PlainStorage(Good, Bad)
{
    private union Data { Good good; Bad bad; }
    private Data data = Data.init;
    private ubyte tag;
}

private extern(C) alias Abort = noreturn function() pure nothrow @nogc;

private noreturn badAccess() @trusted pure nothrow @nogc
{
    // abort does not inspect memory, allocate, return or expose aliases.
    auto terminate = cast(Abort) &abort;
    terminate();
}

private template IsResult(R)
{
    enum IsResult = is(R == Result!(V, F), V, F);
}

/// A result is empty by default. Only hasValue permits reading value().
@mustuse struct Result(T, E)
if ((is(T == void) || storable!T) && storable!E)
{
    alias ValueType = T;
    alias ErrorType = E;

    static if (is(T == void)) private alias Good = VoidSuccess;
    else private alias Good = Success!T;
    private alias Bad = Failure!E;
    private enum usePlain = plainPayload!T && plainPayload!E;
    static if (usePlain)
    {
        private alias Storage = PlainStorage!(Good, Bad);
        static assert(!hasIndirections!Storage && trivialTransfer!Storage);
    }
    else
        private alias Storage = SumType!(Empty, Good, Bad);
    private Storage storage = Storage.init;

    // Only variants with destructible payloads need a lifetime flag. POD size
    // and fast paths remain unchanged.
    static if (hasElaborateDestructor!Storage)
    {
        private bool destroying;
        ~this() @safe pure nothrow @nogc { destroying = true; }
        // Prevent moving an owner out of its own destructor, including implicit
        // compiler moves. scope annotations preserve @safe core.lifetime.move
        // for ordinary owners on the supported compiler baselines.
        void opPostMove(scope ref const Result old) @safe pure nothrow @nogc
        {
            if (destroying || old.destroying) badAccess();
        }
    }

    pragma(inline, true)
    private void requireLive() const @safe pure nothrow @nogc
    {
        static if (hasElaborateDestructor!Storage)
            if (destroying) badAccess();
    }

    private static auto copyStorage(S)(ref S source)
    {
        alias Out = CopyTypeQualifiers!(S, Storage);
        // Select the branch before user copy code runs. SumType's own copy
        // constructor reads the source tag after copying, which is not stable
        // when a postblit callback replaces the source.
        return source.match!((ref branch) => Out(branch));
    }

    static if (!usePlain)
    {
        static if (isCopyable!Storage)
            this(ref Result other)
            {
                other.requireLive();
                static if (referenceCopy!T || referenceCopy!E) cast(void) () @system {}();
                storage = copyStorage(other.storage);
            }
        else
            @disable this(ref Result other);

        static if (isCopyable!(const Storage))
            this(ref const Result other) const
            {
                other.requireLive();
                static if (referenceCopy!T || referenceCopy!E) cast(void) () @system {}();
                storage = copyStorage(other.storage);
            }
        else
            @disable this(ref const Result other) const;

        static if (isCopyable!(immutable Storage))
            this(ref immutable Result other) immutable
            {
                other.requireLive();
                static if (referenceCopy!T || referenceCopy!E) cast(void) () @system {}();
                storage = copyStorage(other.storage);
            }
        else
            @disable this(ref immutable Result other) immutable;
    }

    pragma(inline, true)
    private this(Storage payload)
    {
        storage = move(payload);
    }

    static if (is(T == void))
    {
        pragma(inline, true)
        static Result success()()
        {
            static if (usePlain) return plainSuccess();
            else return Result(Storage(Good()));
        }
    }
    else
    {
        pragma(inline, true)
        static Result success()(T value)
        {
            static if (usePlain) return plainSuccess(value);
            else static if (is(T == const) || is(T == immutable))
                return Result(Storage(Good(value)));
            else return Result(Storage(Good(move(value))));
        }
    }
    pragma(inline, true)
    static Result failure()(E error)
    {
        static if (usePlain) return plainFailure(error);
        else static if (is(E == const) || is(E == immutable))
            return Result(Storage(Bad(error)));
        else return Result(Storage(Bad(move(error))));
    }

    static if (usePlain)
    {
        // Only pointer-free, hook-free, assignable values reach these helpers.
        // NRVO constructs the active member directly, without clearing or copying
        // a full inactive union. There are no uninitialized typed reference slots.
        static if (is(T == void))
        {
            pragma(inline, true)
            private static Result plainSuccess() @trusted
            {
                Result result = void;
                result.storage.tag = 1;
                return result;
            }
        }
        else
        {
            pragma(inline, true)
            private static Result plainSuccess(T value) @trusted
            {
                Result result = void;
                result.storage.data.good.payload = value;
                result.storage.tag = 1;
                return result;
            }
        }
        pragma(inline, true)
        private static Result plainFailure(E error) @trusted
        {
            Result result = void;
            result.storage.data.bad.payload = error;
            result.storage.tag = 2;
            return result;
        }
        static if (!is(T == void))
        {
            pragma(inline, true)
            private auto plainValue(this Self)() @trusted pure nothrow @nogc
            {
                if (storage.tag != 1) badAccess();
                return storage.data.good.payload;
            }
        }
        pragma(inline, true)
        private auto plainError(this Self)() @trusted pure nothrow @nogc
        {
            if (storage.tag != 2) badAccess();
            return storage.data.bad.payload;
        }

    }

    pragma(inline, true)
    ResultState state() const @safe pure nothrow @nogc
    {
        static if (hasElaborateDestructor!Storage)
            if (destroying) return ResultState.empty;
        static if (usePlain) return cast(ResultState) storage.tag;
        else return storage.match!((ref const x) {
            static if (is(typeof(x) == const(Empty))) return ResultState.empty;
            else static if (is(typeof(x) == const(Good))) return ResultState.success;
            else return ResultState.failure;
        });
    }
    pragma(inline, true)
    bool hasValue() const @safe pure nothrow @nogc { return state == ResultState.success; }
    pragma(inline, true)
    bool hasError() const @safe pure nothrow @nogc { return state == ResultState.failure; }
    pragma(inline, true)
    bool isEmpty() const @safe pure nothrow @nogc { return state == ResultState.empty; }

    /// Non-consuming copy. Const payload indirections stay const.
    pragma(inline, true)
    auto value(this Self)()
    {
        requireLive();
        static if (is(T == void))
        {
            if (!hasValue) badAccess();
        }
        else static if (usePlain) return this.plainValue();
        else
        {
            alias QualifiedGood = CopyTypeQualifiers!(Self, Good);
            alias V = typeof(storage.get!QualifiedGood.payload);
            static if (referenceCopy!V) cast(void) () @system {}();
            static assert(isCopyable!V, "value requires a copyable payload; use takeValue");
            if (!hasValue) badAccess();
            return storage.get!QualifiedGood.payload;
        }
    }
    pragma(inline, true)
    auto error(this Self)()
    {
        requireLive();
        static if (usePlain) return this.plainError();
        else
        {
            alias QualifiedBad = CopyTypeQualifiers!(Self, Bad);
            alias V = typeof(storage.get!QualifiedBad.payload);
            static if (referenceCopy!V) cast(void) () @system {}();
            static assert(isCopyable!V, "error requires a copyable payload; use takeError");
            if (!hasError) badAccess();
            return storage.get!QualifiedBad.payload;
        }
    }

    /// Prepare rhs before touching this; payload opAssign is never called.
    void opAssign(Result rhs)
    {
        requireLive();
        static if (usePlain) storage = rhs.storage;
        else replace(rhs.storage);
    }
    private void replace(ref Storage prepared) @trusted
    {
        // Detach the old branch, commit the prepared one, then destroy the
        // retired branch. A destructor may now safely replace this Result:
        // it sees committed storage and its replacement is not overwritten.
        auto retired = move(storage);
        // Explicit reset is necessary when a POD move leaves its source intact.
        auto empty = Storage.init;
        move(empty, storage);
        move(prepared, storage);
        // retired is destroyed here, after commit, never through active storage.
    }

    /// Transfer selected payload and leave this result empty.
    auto takeValue()()
    {
        requireLive();
        if (!hasValue) badAccess();
        static if (usePlain)
        {
            static if (is(T == void)) storage.tag = 0;
            else
            {
                auto value = this.plainValue();
                storage.tag = 0;
                return value;
            }
        }
        else static if (is(T == void))
        {
            auto empty = Storage.init;
            replace(empty);
        }
        else
        {
            auto owned = takeStorage();
            static if (is(T == const) || is(T == immutable)) return owned.get!Good.payload;
            else return move(owned.get!Good.payload);
        }
    }
    auto takeError()()
    {
        requireLive();
        if (!hasError) badAccess();
        static if (usePlain)
        {
            auto error = this.plainError();
            storage.tag = 0;
            return error;
        }
        else
        {
            auto owned = takeStorage();
            static if (is(E == const) || is(E == immutable)) return owned.get!Bad.payload;
            else return move(owned.get!Bad.payload);
        }
    }
    private Storage takeStorage() @trusted
    {
        // Copy-free move into fresh storage, explicitly reset even for POD
        // instantiations where core.lifetime.move need not reset the source.
        auto owned = move(storage);
        auto empty = Storage.init;
        move(empty, storage);
        return move(owned);
    }

    /// Exhaustive copy-based match; callbacks never borrow private storage.
    pragma(inline, true)
    auto match(SuccessFn, FailureFn, EmptyFn, this Self)(scope SuccessFn onSuccess, scope FailureFn onFailure, scope EmptyFn onEmpty)
    {
        alias R = typeof(onEmpty());
        static if (is(T == void)) alias S = typeof(onSuccess());
        else alias S = typeof(onSuccess(value()));
        alias F = typeof(onFailure(error()));
        static assert(is(R == S) && is(R == F), "match handlers must have identical return types");
        static assert(!(functionAttributes!EmptyFn & FunctionAttribute.ref_), "match callbacks must not return ref");
        static assert(!(functionAttributes!SuccessFn & FunctionAttribute.ref_), "match callbacks must not return ref");
        static assert(!(functionAttributes!FailureFn & FunctionAttribute.ref_), "match callbacks must not return ref");
        static if (usePlain)
        {
            static if (is(T == void))
                return hasValue ? onSuccess() : hasError ? onFailure(error()) : onEmpty();
            else return hasValue ? onSuccess(value()) : hasError ? onFailure(error()) : onEmpty();
        }
        else final switch (state)
        {
            case ResultState.empty: return onEmpty();
            case ResultState.failure: return onFailure(error());
            case ResultState.success:
                static if (is(T == void)) return onSuccess();
                else return onSuccess(value());
        }
    }

    /// Transform a copied success value, preserving failure and empty.
    pragma(inline, true)
    auto map(Fn, this Self)(scope Fn transform)
    {
        static assert(!(functionAttributes!Fn & FunctionAttribute.ref_), "map callback must not return ref");
        static if (is(T == void)) alias U = typeof(transform());
        else alias U = typeof(transform(value()));
        alias Out = Result!(U, typeof(error()));
        static if (usePlain && Out.usePlain && !is(U == void))
        {
            static if (is(T == void))
                return hasValue ? Out.success(transform()) : hasError ? Out.failure(error()) : Out.init;
            else return hasValue ? Out.success(transform(value())) : hasError ? Out.failure(error()) : Out.init;
        }
        else
        {
            if (hasError) return Out.failure(error());
            if (isEmpty) return Out.init;
            static if (is(U == void))
            {
                static if (is(T == void)) transform();
                else transform(value());
                return Out.success();
            }
            else
            {
                static if (is(T == void)) return Out.success(transform());
                else return Out.success(transform(value()));
            }
        }
    }

    /// Explicitly translate a copied error, preserving success and empty.
    pragma(inline, true)
    auto mapError(Fn, this Self)(scope Fn transform)
    {
        static assert(!(functionAttributes!Fn & FunctionAttribute.ref_), "mapError callback must not return ref");
        alias F = typeof(transform(error()));
        static if (is(T == void)) alias V = void;
        else alias V = typeof(value());
        alias Out = Result!(V, F);
        static if (usePlain && Out.usePlain)
        {
            static if (is(T == void))
                return hasError ? Out.failure(transform(error())) : hasValue ? Out.success() : Out.init;
            else return hasError ? Out.failure(transform(error())) : hasValue ? Out.success(value()) : Out.init;
        }
        else
        {
            if (hasError) return Out.failure(transform(error()));
            if (isEmpty) return Out.init;
            static if (is(T == void)) return Out.success();
            else return Out.success(value());
        }
    }

    /// Chain a copied success into another Result with the same error type.
    pragma(inline, true)
    auto andThen(Fn, this Self)(scope Fn next)
    {
        static assert(!(functionAttributes!Fn & FunctionAttribute.ref_), "andThen callback must not return ref");
        static if (is(T == void)) alias Out = typeof(next());
        else alias Out = typeof(next(value()));
        static assert(IsResult!Out, "andThen callback must return Result");
        static assert(is(Out.ErrorType == typeof(error())),
                      "andThen requires the same error type; use mapError explicitly");
        static if (usePlain && Out.usePlain)
        {
            static if (is(T == void))
                return hasValue ? next() : hasError ? Out.failure(error()) : Out.init;
            else return hasValue ? next(value()) : hasError ? Out.failure(error()) : Out.init;
        }
        else
        {
            if (hasError) return Out.failure(error());
            if (isEmpty) return Out.init;
            static if (is(T == void)) return next();
            else return next(value());
        }
    }

}
