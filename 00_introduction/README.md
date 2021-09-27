## Introduction

### Summary
1. [Installing](#installing)

### Installing
- I used [asdf](https://github.com/asdf-vm/asdf) to install [asdf-haskell](https://github.com/asdf-community/asdf-haskell)
- For LSP
  - [Ghcup](https://www.haskell.org/ghcup/)
  - [Haskell LSP](https://wiki.haskell.org/Haskell-language-server)

### Hello World
- To run code you can use:
  - `ghc` Compiles the code
  - `ghci` interactive interface 
  - `runghc` run Haskell file as script(I will be using this)
- >
```haskell
-- defining main module
-- to where my application
-- will start
module Main where

-- defining the file's main
-- printing the default
-- Hello, World!
main = putStrLn "Hello, World!"
```
