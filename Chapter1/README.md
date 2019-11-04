### Exercise 1.2-1
> Determine the cardinality of `Either Bool (Bool, Maybe Bool) -> Bool`

Cardinality of `Either Bool (Bool, Maybe Bool)` = `2 + |(Bool, Maybe Bool)|`
= `2 + (2 * 3)`
= `8`

cardinality of function = `2^8` = `256`

### 1.4 Curry-Howard Isomorphism

| Algebra  | Logic | Types |
| ------------- | ------------- | --- |
| a + b  | a ⋁ b  | `Either a b` |
| a × b  | a ⋀ b | `(a, b)`  |
|  b<sup>a</sup> | a ⇒ b | `a -> b` |
| a = b | a ⟺ b | isomorphism |
| 0 | ⊥ | Void |
| 1 | ⊤ | () |

> profound insight about our universe. It allows us to analyzze mathematically theorems through the lens of functional programming. What's better even "boring" mathematical theorems are interesting when expressed as types.

Example:

```
maths: a^1 = a
types: () -> a  ⟺ a
```

Said another way this theorem shows there is no essential distinction between having a value (`a`) and having a pure program that computes that value (`() -> a`)

### Exercise 1.4-i
Use Curry-Howard to prove that (a<sup>b</sup>)<sup>c</sup> = a<sup>b × c</sup>. That is, provide a function of the type `(b -> c -> a) -> (b, c) -> a` and one of `((b, c) -> a) -> b -> c -> a`. Make sure they satisfy the equalities `to. from = id` and `from . to = id`

... mmm don't understand why (a<sup>b</sup>)<sup>c</sup> isn't equivalent to `c -> (b -> a)` or `c -> b -> a` and why a<sup>b × c</sup> isn't equivalent to `(b, c) -> a` but the question implies that (a<sup>b</sup>)<sup>c</sup> is equivalent to `(b -> c -> a) -> (b, c) -> a` and a<sup>b × c</sup> is equivalent to `((b, c) -> a) -> b -> c -> a` ???
