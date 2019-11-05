# Chapter2: Terms, Types and Kinds

* Terms - the values you manipulate
* Types - sanity-checks, proofs to the compiler that the programs we're trying to write make some amount of sense
* Kinds - the type system for types

### Exercise 2.1.3-i
If `Show Int` has kind `Constraint` what's the kind of `Show`?
```
GHCi, version 8.6.5
λ> :k Show
Show :: * -> Constraint
λ> :k Show Int
Show Int :: Constraint
```
Answer: the kind of show is `Type -> Constraint`

### Exercise 2.1.3-ii
What is the kind of `Functor`
```
GHCi, version 8.6.5
λ> :k Functor
Functor :: (* -> *) -> Constraint
λ> :k Functor Maybe
Functor Maybe :: Constraint
```
Answer: `(Type -> Type) -> Constraint`

### Exercise 2.1.3-iii
What is the kind of `Monad`
```
GHCi, version 8.6.5
λ> :k Monad
Monad :: (* -> *) -> Constraint
λ> :k Monad Maybe
Monad Maybe :: Constraint
```
Answer: `(Type -> Type) -> Constraint`

### Exercise 2.1.3-iv
What is the kind of `MonadTrans`
```
GHCi, version 8.6.5
:k MonadTrans
MonadTrans :: ((* -> *) -> * -> *) -> Constraint
λ> :k MonadTrans MaybeT
MonadTrans MaybeT :: Constraint
λ> :k MaybeT
MaybeT :: (* -> *) -> * -> *
λ> :k MaybeT Maybe
MaybeT Maybe :: * -> *
```
Answer: `((Type -> Type) -> Type -> Type) -> Constraint`