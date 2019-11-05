module Main where

{-
Exercise 1.4-i
Use Curry-Howard to prove that (a^b)^c = a^(b × c). 
That is, provide a function of the type `(b -> c -> a) -> (b, c) -> a` and one of `((b, c) -> a) -> b -> c -> a`. 
Make sure they satisfy the equalities `to. from = id` and `from . to = id`

... why (b -> c -> a) **not** (c -> b -> a)??
-}

to1 :: (c -> b -> a) -> (b, c) -> a
to1 f (b, c) = f c b

from1 :: ((b, c) -> a) -> c -> b -> a
from1 f c b = f (b, c)

proof1 = to1 . from1

{-
Exercise 1.4-ii
Give a proof of the exponent law that: (a^b) × (a^c) = a^(b + c)
-}

to2 :: ((b -> a), (c -> a)) -> Either b c -> a
to2 (f1, _ ) (Left  b) = f1 b
to2 (_ , f2) (Right c) = f2 c

from2 :: (Either b c -> a) -> ((b -> a), (c -> a))
from2 f = (f . Left, f . Right)

{-
Exercise 1.4-iii
Prove: (a x b)^c = (a^c) x (b^c)
-}
to3 :: (c -> (a, b)) -> ((c -> a), (c -> b))
to3 f = (fst . f, snd . f)

from3 :: ((c -> a), (c -> b)) -> (c -> (a, b))
from3 (f1, f2) c = (f1 c, f2 c)


-- 
main :: IO ()
main = putStrLn "Chapter1 examples"
