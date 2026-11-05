// expected: match
module negative_missing_handler;
import error_d;
void main() { auto n=Result!(int,int).success(1).match((int x)=>x,(int e)=>e); }
