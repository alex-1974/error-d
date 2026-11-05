module test_transitions;
import error_d;
import core.stdc.stdlib : abort;
void check(bool ok) { if(!ok) abort(); }
struct Tracked {
    int* live;
    this(int* p) @safe { live=p; ++*live; }
    this(this) @safe { if(live) ++*live; }
    ~this() @safe nothrow { if(live) --*live; }
}
void main() {
    alias R=Result!(Tracked,Tracked);
    int live;
    foreach (from; 0..3) foreach (to; 0..3) {
        {
            R r;
            if(from==1) r=R.success(Tracked(&live));
            if(from==2) r=R.failure(Tracked(&live));
            if(to==0) r=R.init;
            if(to==1) r=R.success(Tracked(&live));
            if(to==2) r=R.failure(Tracked(&live));
            check(live==(to==0 ? 0 : 1));
            if(to==2) {
                auto error=r.takeError();
                check(r.isEmpty && live==1);
            }
        }
        check(live==0);
    }
    auto r=Result!(int,int).success(4);
    auto n=r.match((int copy) { r=Result!(int,int).failure(9); return copy; },
                   (int e)=>e,()=>0);
    check(n==4 && r.error()==9);
}
