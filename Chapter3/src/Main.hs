{-# LANGUAGE InstanceSigs #-}
module Main where

import           GHC.TypeLits

{-
Consider the following type declarations. Which have __viable__ `Functor` instances:
-}

newtype T1 a = T1 (Int -> a)

newtype T2 a = T2 (a -> Int)

newtype T3 a = T3 (a -> a)

newtype T4 a = T4 ((Int -> a) -> Int)

newtype T5 a = T5 ((a -> Int) -> Int)

-- see: [George Wilson - Extended Functor family](https://www.youtube.com/watch?v=JZPXzJ5tp9w)

testT1 :: T1 String -> Int -> String
testT1 (T1 f) = f

instance Functor T1 where
  fmap :: (a -> b) -> T1 a -> T1 b
  fmap f (T1 fia) = T1 $ f . fia

-- not possible to create T2
-- can't create (b -> Int) from (a -> b) and (a -> Int)
-- instance Functor T2 where
--   fmap f (T2 f2) = T2 $ f2 . f

-- instance Functor T3 where
--   fmap f (T3 f2) = T3 $ f . f2


main = putStrLn "Chapter3"
