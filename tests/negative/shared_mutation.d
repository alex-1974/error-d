// expected: shared
module negative_shared_mutation;
import error_d;
shared Result!(int,int) sharedResult;
void main() { sharedResult=Result!(int,int).success(1); }
