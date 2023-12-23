# Prime Sieves using functional programming in D

## Version 1

```d
import std.stdio: writeln;
import std.algorithm: filter, canFind;
import std.range: iota;

void main(){
    // lambda syntax
	auto isPrime = (int number) => number >= 2 && !iota(2, number).canFind!(x => (number % x) == 0);
	
    writeln(iota(5_000).filter!isPrime);
}
```
## Version 2

```d
import std.stdio: writeln;
import std.algorithm: any, filter;
import std.range: iota;

void main() {
    // lambda syntax
    auto isPrime = (int number) => number >= 2 && !iota(2, number).any!(x => (number % x) == 0);

    writeln(iota(5_000).filter!isPrime);
}
```
## Version 3

```d
import std.stdio: writeln;
import std.algorithm: all, filter, until;
import std.range: iota;

void main() {
	auto isPrime = (int number) => number >= 2 && iota(2, number).until!(x => x * x > number).all!(x => (number % x) != 0);

    writeln(iota(5_000).filter!isPrime);
}
```
## Version 4

```d
import std.stdio: writeln;
import std.algorithm: all, filter;
import std.range: iota;
import std.math;

void main() {
    auto isPrime = (int number) => number >= 2 && iota(2, cast(int)sqrt(cast(real)number) + 1).all!(x => (number % x) != 0);

    writeln(iota(5_000).filter!isPrime);
}
```
## Version 5

```d
import std.stdio: writeln;
import std.algorithm: all, filter;
import std.range: iota;
import std.math;

void main() {
    auto isPrime = (int number) => 
        number >= 2 &&
        (number == 2 || number == 3 || number == 5 || number == 7 || number == 11 || 
		(number % 2 != 0 && number % 3 != 0 && number % 5 != 0 && number % 7 != 0 && number % 11 != 0) &&
        iota(13, cast(int)sqrt(cast(real)number) + 1).all!(x => (number % x) != 0));

    writeln(iota(5_000).filter!isPrime);
}
```


