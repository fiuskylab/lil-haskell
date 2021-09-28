## Functions and Types

### Summary
1. [Introduction](#introduction)
2. [Declaring](#declaring)
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
```golang
module Main where

main = putStrLn someString

someString = "Hello, World!"
```

- If you want to type a variable you can do the following:
```
module Main where

main = putStrLn typeString

typeString = "Hello, World!" :: String
```
- Adding `::` and the type after the value: `typeString = "World!" :: String`
