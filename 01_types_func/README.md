## Functions and Types

### Summary
1. [Introduction](#introduction)
2. [Declaring](#declaring)
3. [Basic Types](#basic-types)
4. [Functions](#functions)

### Introduction
There are 3 main topics for Haskell's type system:
1. __Strong Types__
  - _"[...] type system guarantees that a program cannot contain certain kinds of errors. These errors come from trying to write expressions that don't make sense, such as using an integer as a function. For instance, if a function expects to work with integers, and we pass it a string, a Haskell compiler will reject this.[...]"_
2. __Static Types__
  - _"Having a static type system means that the compiler knows the type of every value and expression at compile time, before any code is executed.[...]"_
3. __Static Types__
  - _"Finally, a Haskell compiler can automatically deduce the types of almost[3] all expressions in a program. This process is known as type inference.[...]"_

### Declaring
- To declare variables 
```haskell
module Main where

main = putStrLn someString

someString = "Hello, World!"
```

- If you want to type a variable you can do the following:
```haskell
module Main where

main = putStrLn typeString

typeString = "Hello, World!" :: String
```
- Adding `::` and the type after the value: `typeString = "World!" :: String`

### Basic Types
- String
- Bool
- Char
- Int
- Pair
  - defined by `()`
  - Can store variables of different types
- Tuple
  - defined by `[]`
  - Store only values of the same type

### Functions
- Function follow the following structure: `funcName param1 param2 ... param3 = funcBody`
```haskell
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
```
