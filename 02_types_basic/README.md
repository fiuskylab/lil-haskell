## Types Basic

### Summary
1. [Lambda](#lambda)
2. [Higher Order Types ](#higher-order-types)
3. [Data Types](#data-types)

### Lambda
- Haskell implementation of Lambda
  - Lambda notation: `λx.x*x`
  - Haskell implementation: `square = \x -> x * x`

### Higher Order Types
- Is the name given to functions
- Take the _square_ function as example
  - It receives an _integer_
  - We know that multiplying _integer_ with _integer_ it results in an _integer_
  - So we can say that the type of _square_ is: _Integer_ -> _Integer_
- Now let's take another function: `sumDouble x y = 2 * (y + x)`
  - We can say _sumDouble_ is: _Integer_ -> _Integer_ -> _Integer_

### Data Types
