/** Typed value-or-error results. See docs/guide.md for ownership and empty states. */
module error_d;

import core.attribute : mustuse;
import core.lifetime : move;
import core.stdc.stdlib : abort;
import std.sumtype : SumType, match, get;
import std.traits : isCopyable, CopyTypeQualifiers, hasElaborateDestructor, functionAttributes, FunctionAttribute;

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
    enum storable = !is(T == void) && !is(T == function) && safeDestruction!T && safeTransfer!T;
}

private extern(C) alias Abort = void function() pure nothrow @nogc;

private void badAccess() @trusted pure nothrow @nogc
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
    private alias Storage = SumType!(Empty, Good, Bad);
    private Storage storage = Storage.init;

    static if (isCopyable!Storage)
        this(ref Result other) { storage = other.storage; }
    else
        @disable this(ref Result other);

    static if (isCopyable!(const Storage))
        this(ref const Result other) const { storage = other.storage; }
    else
        @disable this(ref const Result other) const;

    static if (isCopyable!(immutable Storage))
        this(ref immutable Result other) immutable { storage = other.storage; }
    else
        @disable this(ref immutable Result other) immutable;

    private this(Storage payload) { storage = move(payload); }

    static if (is(T == void))
    {
        static Result success()() { return Result(Storage(Good())); }
    }
    else
    {
        static Result success()(T value)
        {
            static if (is(T == const) || is(T == immutable))
                return Result(Storage(Good(value)));
            else return Result(Storage(Good(move(value))));
        }
    }
    static Result failure()(E error)
    {
        static if (is(E == const) || is(E == immutable))
            return Result(Storage(Bad(error)));
        else return Result(Storage(Bad(move(error))));
    }

    ResultState state() const @safe pure nothrow @nogc
    {
        return storage.match!((ref const x) {
            static if (is(typeof(x) == const(Empty))) return ResultState.empty;
            else static if (is(typeof(x) == const(Good))) return ResultState.success;
            else return ResultState.failure;
        });
    }
    bool hasValue() const @safe pure nothrow @nogc { return state == ResultState.success; }
    bool hasError() const @safe pure nothrow @nogc { return state == ResultState.failure; }
    bool isEmpty() const @safe pure nothrow @nogc { return state == ResultState.empty; }

    /// Non-consuming copy. Const payload indirections stay const.
    auto value(this Self)()
    {
        static if (is(T == void))
        {
            if (!hasValue) badAccess();
        }
        else
        {
            alias QualifiedGood = CopyTypeQualifiers!(Self, Good);
            alias V = typeof(storage.get!QualifiedGood.payload);
            static assert(isCopyable!V, "value requires a copyable payload; use takeValue");
            if (!hasValue) badAccess();
            return storage.get!QualifiedGood.payload;
        }
    }
    auto error(this Self)()
    {
        alias QualifiedBad = CopyTypeQualifiers!(Self, Bad);
        alias V = typeof(storage.get!QualifiedBad.payload);
        static assert(isCopyable!V, "error requires a copyable payload; use takeError");
        if (!hasError) badAccess();
        return storage.get!QualifiedBad.payload;
    }

    /// Prepare rhs before touching this; payload opAssign is never called.
    void opAssign(Result rhs)
    {
        replace(rhs.storage);
    }
    private void replace(ref Storage prepared) @trusted
    {
        // No API exposes an alias into private storage. The payload's destructor
        // is constrained @safe nothrow; this move cannot execute a copy hook.
        move(prepared, storage);
    }

    /// Transfer selected payload and leave this result empty.
    auto takeValue()()
    {
        if (!hasValue) badAccess();
        static if (is(T == void))
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
        if (!hasError) badAccess();
        auto owned = takeStorage();
        static if (is(E == const) || is(E == immutable)) return owned.get!Bad.payload;
        else return move(owned.get!Bad.payload);
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
        final switch (state)
        {
            case ResultState.empty: return onEmpty();
            case ResultState.failure: return onFailure(error());
            case ResultState.success:
                static if (is(T == void)) return onSuccess();
                else return onSuccess(value());
        }
    }

    /// Transform a copied success value, preserving failure and empty.
    auto map(Fn, this Self)(scope Fn transform)
    {
        static assert(!(functionAttributes!Fn & FunctionAttribute.ref_), "map callback must not return ref");
        static if (is(T == void)) alias U = typeof(transform());
        else alias U = typeof(transform(value()));
        alias Out = Result!(U, typeof(error()));
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

    /// Explicitly translate a copied error, preserving success and empty.
    auto mapError(Fn, this Self)(scope Fn transform)
    {
        static assert(!(functionAttributes!Fn & FunctionAttribute.ref_), "mapError callback must not return ref");
        alias F = typeof(transform(error()));
        static if (is(T == void)) alias V = void;
        else alias V = typeof(value());
        alias Out = Result!(V, F);
        if (hasError) return Out.failure(transform(error()));
        if (isEmpty) return Out.init;
        static if (is(T == void)) return Out.success();
        else return Out.success(value());
    }

    /// Chain a copied success into another Result with the same error type.
    auto andThen(Fn, this Self)(scope Fn next)
    {
        static assert(!(functionAttributes!Fn & FunctionAttribute.ref_), "andThen callback must not return ref");
        static if (is(T == void)) alias Out = typeof(next());
        else alias Out = typeof(next(value()));
        static assert(IsResult!Out, "andThen callback must return Result");
        static assert(is(Out.ErrorType == typeof(error())),
                      "andThen requires the same error type; use mapError explicitly");
        if (hasError) return Out.failure(error());
        if (isEmpty) return Out.init;
        static if (is(T == void)) return next();
        else return next(value());
    }

}
