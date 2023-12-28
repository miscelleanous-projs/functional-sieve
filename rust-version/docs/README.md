

```rust
fn main() {
    // closure syntax
    let is_prime = |number: usize| -> bool {
        number >= 2 && 
            (number == 2 || number == 3 ||
            (number % 2 != 0 && number % 3 != 0 &&
            !(5..=(number as f64).sqrt() as usize)
            .any(|x| number % x == 0))
        )
    };

    let primes: Vec<usize> = (2..5_000).filter(|&x| is_prime(x)).collect();

    println!("{:?}", primes);
}
```
