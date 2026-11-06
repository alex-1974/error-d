module test_composition;
import error_d;
import core.stdc.stdlib : abort;
void check(bool ok) { if(!ok) abort(); }
void main() {
    alias R=Result!(int,int);
    auto r=R.success(4);
    check(r.map((int x)=>x*2).value()==8);
    check(r.andThen((int x)=>Result!(long,int).success(x+1)).value()==5);
    int calls;
    auto fail=R.failure(2);
    auto skipped=fail.map((int x) { ++calls; return x; });
    check(calls==0 && skipped.error()==2);
    auto skippedChain=fail.andThen((int x) { ++calls; return R.success(x); });
    check(calls==0 && skippedChain.error()==2);
    auto unchanged=r.mapError((int e) { ++calls; return e; });
    check(calls==0 && unchanged.value()==4);
    auto translated=fail.mapError((int x)=>cast(long)(x+10));
    check(translated.error()==12);
    check(R.init.map((int x) { ++calls; return x; }).isEmpty);
    check(calls==0);
    auto empty=R.init.andThen((int x) { ++calls; return R.success(x); });
    check(empty.isEmpty && calls==0);
    auto voided=r.map((int x) { calls+=x; });
    check(voided.hasValue && calls==4);
    check(voided.map(()=>8).value()==8);
    check(voided.andThen(()=>R.success(9)).value()==9);
    check(Result!(void,int).failure(7).mapError((int e)=>cast(long)e).error()==7);
    const c=r;
    check(c.map((int x)=>x+1).value()==5);
    auto matched=fail.match((int x)=>x,(int e)=>-e,()=>0);
    check(matched==-2);
    bool threw;
    try { cast(void) r.map((int x) { throw new Exception("callback"); return x; }); }
    catch(Exception e) { threw=true; }
    check(threw && r.value()==4);
}
