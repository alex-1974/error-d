/**
Typed success/failure values shared by independently developed D libraries.

Each library defines its own error type $(D E), while $(D Result!(T, E)) provides
checked access, explicit extraction and composition. A default result is empty;
it is neither success nor a domain failure. Wrong-branch access aborts in all
build modes. Results are marked $(D @mustuse).

Payload cleanup and transfer must support $(D @safe nothrow); elaborate move
hooks are rejected. Other attributes are inferred from payloads and callbacks.
Copying a payload with a reference copy constructor is $(D @system).
A result does not provide synchronization or a stable cross-version binary ABI.

See_Also:
$(LINK2 https://github.com/alex-1974/error-d/blob/main/docs/guide.md, User guide),
$(LINK2 https://github.com/alex-1974/error-d/blob/main/docs/api.md, Complete API contracts).
The complete API also covers conditional declarations that DDox may omit.

Examples:
---
import error_d;
enum ParseError { invalidDigit }
alias R = Result!(int, ParseError);
auto result = R.success(21).map((int n) => n * 2);
assert(result.value() == 42);
auto value = result.takeValue();
assert(value == 42 && result.isEmpty);
---
*/
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

/// The three observable states; empty is not a domain failure.
enum ResultState {
    empty,   /// No active value or error, including default construction and after take.
    success, /// A success value is available, or void success was constructed.
    failure  /// A domain error is available.
}

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
    // Use the existing alignment slot, rather than a byte followed by padding.
    // Fully defining the returned state word avoids partial-store/wide-load
    // dependencies on DMD without enlarging the representation.
    static if (Data.alignof >= size_t.alignof) private alias Tag = size_t;
    else static if (Data.alignof >= uint.alignof) private alias Tag = uint;
    else static if (Data.alignof >= ushort.alignof) private alias Tag = ushort;
    else private alias Tag = ubyte;
    private Tag tag;
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

/**
A checked value-or-error carrier, empty by default.

Use $(D Result!(T, E).success(value)) or $(D .failure(error)) to construct an
outcome. For $(D T == void), use $(D .success()) without a payload.
Queries do not consume; $(D value), $(D error), matching and composition copy.
$(D takeValue) and $(D takeError) transfer the selected payload and leave empty.
Operations requiring unavailable copies are rejected at compile time.

Const access preserves payload qualifiers. No getter exposes private storage
by reference. Callbacks are scope arguments and must not return by reference.
Copying does not deep-copy referenced objects or add thread synchronization.

The representation is private. Inactive bytes are unspecified; raw serialization,
bytewise equality, erasure and a stable ABI are not supported contracts.

Params:
    T = Success payload type, or $(D void).
    E = Non-void domain error type owned by the producing library.
*/
@mustuse struct Result(T, E)
if ((is(T == void) || storable!T) && storable!E)
{
    /// The declared success payload type, possibly void.
    alias ValueType = T;
    /// The declared domain error type.
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
        /// Compiler move hook; aborts when moving from or into a dying owner.
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
        /** Construct success: success() for void, success(value) for other value types.
        The conditional value overload copies an lvalue or moves a transferable
        temporary. DDox may display only the void overload's signature here;
        both forms are part of the API. Neither constructs a domain error.
        */
        static Result success()()
        {
            static if (usePlain) return plainSuccess();
            else return Result(Storage(Good()));
        }
    }
    else
    {
        pragma(inline, true)
        /** Construct success from a value. Lvalues copy; transferable temporaries move.
        Params: value = Success payload to store.
        */
        static Result success()(T value)
        {
            static if (usePlain) return plainSuccess(value);
            else static if (is(T == const) || is(T == immutable))
                return Result(Storage(Good(value)));
            else return Result(Storage(Good(move(value))));
        }
    }
    pragma(inline, true)
    /** Construct failure from a domain error.
    Params: error = Error to store; lvalues copy and transferable temporaries move.
    Returns: A result in the failure state.
    */
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
    /// Inspect the active branch. A dying destructible owner reports empty.
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
    /// True exactly for success, including void success.
    bool hasValue() const @safe pure nothrow @nogc { return state == ResultState.success; }
    pragma(inline, true)
    /// True exactly for domain failure.
    bool hasError() const @safe pure nothrow @nogc { return state == ResultState.failure; }
    pragma(inline, true)
    /// True when neither a success nor a failure is active.
    bool isEmpty() const @safe pure nothrow @nogc { return state == ResultState.empty; }

    /** Return a non-consuming success copy, preserving const indirections.
    For void success, only check the state. Aborts unless hasValue is true.
    A non-void payload must be copyable; use takeValue for exclusive ownership.
    Reference-copy payloads make this operation system-only.
    */
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
    /** Return a non-consuming error copy, preserving const indirections.
    Aborts unless hasError is true. Requires a copyable error; use takeError
    for exclusive ownership. Reference-copy payloads require system code.
    */
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

    /** Replace the outcome after preparing rhs; payload opAssign is never called.
    The new state is committed before retired payload destruction. A destructor
    may reenter and replace this result without its update being overwritten.
    Params: rhs = Prepared replacement, copied from an lvalue or moved from a temporary.
    */
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

    /** Transfer success and leave this result empty.
    Aborts unless hasValue is true. For void success, reset to empty without
    returning a value. Only available on a mutable result; no copy is required
    for movable unqualified payloads. Qualified payloads follow their copy rules.
    */
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
    /** Transfer the domain error and leave this result empty.
    Aborts unless hasError is true. Requires a mutable result; qualified payloads
    follow their copy rules. Extraction does not promise bytewise erasure.
    */
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

    /** Handle all three states using copies; callbacks never borrow private storage.
    All handlers must return the same type (possibly void), without ref returns.
    Params:
        onSuccess = Called with the copied value, or no argument for void success.
        onFailure = Called with the copied domain error.
        onEmpty = Called without arguments for the empty state.
    Returns: The selected handler result. The source is not consumed.
    */
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

    /** Transform a success copy, preserving copied failure and empty.
    Params: transform = Called with the copied value, or no argument for void success.
    Returns: A Result with the callback return type (possibly void) as success type.
        Its error type follows this result's copied error qualifiers.
    */
    pragma(inline, true)
    auto map(Fn, this Self)(scope Fn transform)
    {
        static assert(!(functionAttributes!Fn & FunctionAttribute.ref_), "map callback must not return ref");
        static if (is(T == void)) alias U = typeof(transform());
        else alias U = typeof(transform(value()));
        alias Out = Result!(U, typeof(error()));
        static if (usePlain && Out.usePlain && !is(U == void))
        {
            static if (is(Out == typeof(this)))
                return hasError ? this : hasValue ? Out.success(transform(value())) : Out.init;
            else static if (is(T == void))
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

    /** Translate a copied error into another domain, preserving success and empty.
    Params: transform = Called with the copied error; must return a non-void error type.
    Returns: A Result using the translated error type and copied success qualifiers.
    */
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
            static if (is(Out == typeof(this)))
                return hasValue ? this : hasError ? Out.failure(transform(error())) : Out.init;
            else static if (is(T == void))
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

    /** Chain a success copy into another Result with exactly the same copied error type.
    Use mapError explicitly when crossing error domains. Empty and copied failures
    propagate without calling next. The source is not consumed.
    Params: next = Returns a Result, taking a copied value or no argument for void success.
    Returns: The callback Result type, preserving failure and empty as appropriate.
    */
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
            static if (is(Out == typeof(this)))
            {
                static if (is(T == void))
                    return hasError ? this : hasValue ? next() : Out.init;
                else return hasError ? this : hasValue ? next(value()) : Out.init;
            }
            else static if (is(T == void))
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
