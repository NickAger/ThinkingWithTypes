### Exercise 1.2-1
> Determine the cardinality of `Either Bool (Bool, Maybe Bool) -> Bool`

Cardinality of `Either Bool (Bool, Maybe Bool)` = `2 + |(Bool, Maybe Bool)|`
= `2 + (2 * 3)`
= `8`

cardinality of function = `2^8` = `256`

### 1.4 Curry-Howard Isomorphism

| Algebra  | Logic | Types |
| ------------- | ------------- |
| a + b  | a ⋁ b  | `Either a b` |
| a × b  | a ⋀ b | `(a, b)`  |
|  b<sup>a</sup> | a ⇒ b | `a -> b` |
| a = b | a ⟺ b | isomorphism |
| 0 | ⊥ | Void |
| 1 | ⊤ | () |
