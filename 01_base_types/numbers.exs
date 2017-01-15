## Integers
42 # => 42
1_000_000 # => 1000000 | Underscores can be used to separate thousands
0b1010 # => 10 | Binary notation
0o777 # => 511 | Octan notation
0x1F # => 31 | Hexadecimal notation

## Floats (64 bit double precision)
42.03 # => 42.03

## Basic Arithmetic
1 + 1 # => 2
5 * 5 # => 25
10 / 2 # => 5.0 | Operator "/" always returns a Float
div(11, 2) # => 5 | Integer division, returns an Integer
rem(11, 2) # => 1 | Remainder of 11 / 2

## Exponents
1.0e-10 # => 1.0e-10
1e-10 # => (SyntaxError) iex:13: syntax error before: e | Exponents supported on Floats only

## Functions
round(3.78) # => 4 | Round to closest

