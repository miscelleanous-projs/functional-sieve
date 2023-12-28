import std.stdio: writeln;
import std.algorithm: all, filter;
import std.range: iota;
import std.math;

void main() {
    auto isPrime = (int number) => 
        number >= 2 &&
        (number == 2 || number == 3 || 
        (number % 2 != 0 && number % 3 != 0 &&
        iota(5, cast(int)sqrt(cast(real)number) + 1).all!(x => (number % x) != 0)));

    writeln(iota(5_000).filter!isPrime);
}
