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

```
## Version 4

```d

```


