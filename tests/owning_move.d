module test_owning_move;
import error_d;
import core.lifetime : move;
import core.stdc.stdlib : abort;
struct Resource {
    int* live;
    @disable this(this);
    this(int* count) @safe nothrow {live=count;++*live;}
    ~this() scope @safe nothrow {if(live)--*live;}
}
void main() @safe {
    int* live=new int;
    {
        auto r=Result!(Resource,int).success(Resource(live));
        auto moved=move(r);
        if(!r.isEmpty || !moved.hasValue || *live!=1)abort();
        auto payload=moved.takeValue();
        if(!moved.isEmpty || *live!=1)abort();
    }
    if(*live!=0)abort();
}
