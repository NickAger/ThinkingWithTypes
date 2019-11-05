module Main where

import           GHC.TypeLits

-- experiment with Phantom types
data UserRights
data Admin = Admin

data User = User
  { userAdminToken :: Maybe Admin
  , userName :: String
  }

doSensitiveThings :: Admin -> IO ()
doSensitiveThings _ = putStrLn "You have to be an admin to do this"

---

{-
Exercise 2.4-i
Write a closed type family to compute Not
-}
type family Not (a :: Bool) :: Bool where
  Not 'True = 'False
  Not 'False = 'True



--
main :: IO ()
main = do
  let a = Admin
  doSensitiveThings Admin

