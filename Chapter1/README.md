## Cardinality of functions
For my own understanding wrote down the cardinality of function: 
```
Maybe Bool -> Bool
|Maybe Bool -> Bool|
|Bool| ^ |Maybe Bool|
2 ^ 3
= 8
```

```haskell
cardinality1 :: Maybe Bool -> Bool
cardinality1 Nothing = True
cardinality1 (Just True) = True
cardinality1 (Just False) = True

cardinality2 :: Maybe Bool -> Bool
cardinality2 Nothing = False
cardinality2 (Just True) = False
cardinality2 (Just False) = False

cardinality3 :: Maybe Bool -> Bool
cardinality3 Nothing = False
cardinality3 (Just True) = True
cardinality3 (Just False) = False

cardinality4 :: Maybe Bool -> Bool
cardinality4 Nothing = False
cardinality4 (Just True) = False
cardinality4 (Just False) = True

cardinality5 :: Maybe Bool -> Bool
cardinality5 Nothing = True
cardinality5 (Just True) = False
cardinality5 (Just False) = True

cardinality6 :: Maybe Bool -> Bool
cardinality6 Nothing = True
cardinality6 (Just True) = True
cardinality6 (Just False) = False

cardinality7 :: Maybe Bool -> Bool
cardinality7 Nothing = False
cardinality7 (Just True) = True
cardinality7 (Just False) = True

cardinality8 :: Maybe Bool -> Bool
cardinality8 Nothing = True
cardinality8 (Just True) = False
cardinality8 (Just False) = False
```

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
|  b<sup>a</sup> | a ⟹ b | `a -> b` |
| a = b | a ⟺ b | isomorphism |
| 0 | ⊥ | Void |
| 1 | ⊤ | () |

> profound insight about our universe. It allows us to analyze mathematically theorems through the lens of functional programming. What's better even "boring" mathematical theorems are interesting when expressed as types.

Example:

```
maths: a^1 = a
types: () -> a  ⟺ a
```

Said another way this theorem shows there is no essential distinction between having a value (`a`) and having a pure program that computes that value (`() -> a`)

### Exercise 1.4-i
See Exercises.hs

### Exercise 1.4-ii
See Exercises.hs

### Exercise 1.4-iii
See Exercises.hs

### Canonical Representations
* addition on the outside, multiplication on the inside.
* all additions must be represented via `Either`
* all multiplications must be represented via `(,)`

Neither of the following are in their canonical representation:

```
(a, Bool)
(a, Either b c)
```

Are these the canonical representations??:
```
Either (a, True) (a, False)
Either (a,b) (a,c)
```
