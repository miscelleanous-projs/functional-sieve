import std.stdio: writeln;
import std.algorithm: all, filter;
import std.range: iota;
import std.math;

void main() {
    auto isPrime = (int number) => 
        number >= 2 &&
        (number == 2 || number == 3 || number == 5 || number == 7 || number == 11 || number == 13 || number == 17 || number == 19 || number == 23 || number == 29|| 
		(number % 2 && number % 3 && number % 5 && number % 7 && number % 11 && number % 13 && number % 17 && number % 19 && number % 23 && number % 29) &&
        iota(31, cast(int)sqrt(cast(real)number) + 1).all!(x => (number % x)));

    writeln(iota(5_000).filter!isPrime);
}
