module test_misuse;
import error_d;
void main(string[] args) {
    alias R=Result!(int,int);
    switch(args[1]) {
        case "empty-value": cast(void) R.init.value(); break;
        case "error-value": cast(void) R.failure(1).value(); break;
        case "success-error": cast(void) R.success(1).error(); break;
        case "empty-error": cast(void) R.init.error(); break;
        case "take-value": cast(void) R.init.takeValue(); break;
        case "take-error": cast(void) R.success(1).takeError(); break;
        case "void-value": Result!(void,int).init.value(); break;
        case "void-take": Result!(void,int).failure(1).takeValue(); break;
        case "slice-empty": cast(void) Result!(int[],int).init.value(); break;
        case "slice-error": cast(void) Result!(int[],int).success(new int[1]).error(); break;
        default: throw new Exception("unknown test");
    }
}
