// expected: @mustuse
module negative_discard;
import error_d;
void main() { Result!(int,int).failure(4); }
