module Main where

import Data.Char as Char

main = do 
  putStrLn "a"
  print (square 4)
  print (fac 3)
  print (lazyFac 3)
  print (anotherFac 3)
  print (doubleSquareRoot 3)
  print infixSum
  putStrLn strToUpper
  print (tupleSum [1,2,3])
  -- Let binding can only be used inside of a do block
  let addOne x = x + 1 in
      print (addOne 2)

square x = x * x :: Integer

fac x = do
  if x == 0 then
    1
  else 
    x * fac (x - 1) 
  :: Integer

lazyFac x = 
  case x :: Integer of
    0 -> 1
    1 -> 1
    2 -> 2
    3 -> 6 :: Integer
    _ -> -1

anotherFac 0 = 1 :: Integer
anotherFac 1 = 1 :: Integer
anotherFac n = n * anotherFac (n - 1) :: Integer

doubleSquareRoot n = 
  let square x = x * x :: Integer
  in 
    2 * square n 

-- Infix

-- the same as infixSum = 1 + 2
infixSum = (+) 1 2

-- Can apply infix in some functions too
-- but instead of parenthesis you use backticks ``
strToUpper =  Char.toUpper `map` "Hello, World!"


tupleSum tup = 
  case tup :: [Integer] of
    [] -> 0
    (x:xs) -> x + tupleSum xs
