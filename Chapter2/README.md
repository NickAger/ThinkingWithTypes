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

## 2.2 Data Kinds

Need to enable `-XDataKinds`

Can do that in `package.yaml`; example snippet:

```
  ghc-options:
    - -XDataKinds
    - -XTypeOperators
    - -XTypeFamilies
    - -XPolyKinds
```
ghci then says: "Warning: Instead of 'ghc-options: -XDataKinds' use 'extensions: DataKinds'"

- but 'extensions: DataKinds' didn't appear to work???


The example of using promoted data constructors:

```haskell
data UserType
 = User
 | Admin

data User = User
 { userAdminToken :: Maybe (Proxy 'Admin)
 , ...
 }

 doSensitiveThings :: Proxy 'Admin -> IO ()
 doSensitiveThings = 
```

I would have previously coded this as below (see [phantom types](https://wiki.haskell.org/Phantom_type)):

```haskell
data User
data Admin

data User = User
 { userAdminToken :: Maybe Admin
 , ...
 }

 doSensitiveThings :: Admin -> IO ()
 doSensitiveThings = 

```
 
### 2.3.2 Natural Numbers

Need to define two extensions `TypeOperators` and `NoStarIsType`:

```
λ> :set -XTypeOperators
λ> :set -XNoStarIsType
λ> :kind! (1 + 17) * 3
(1 + 17) * 3 :: Nat
= 54
```

### 2.4 Type-Level Functions
> You can think of "closed type families" as functions at the type-level
