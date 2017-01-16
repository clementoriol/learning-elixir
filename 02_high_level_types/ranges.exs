## Like many other languages, Elixir supports ranges
## They are an abstraction to represent a range of numbers

range = 1..100 # => 1..100

## The 'in' operator allows to check if a number falls into the range :

2 in range # => true
101 in range # => false

## Ranges are Enumerables, which means you can use every method of the Enum module to work on them
## Like Enum.each/2 :

Enum.each(
  1..3,
  &IO.puts/1
) # => 1; 2; 3; :ok;

## Internally, ranges are not a special type. They are actually Structs under the hood.
## The '..' operator is a convenient shorthand.

range = %Range{
  first: 1,
  last: 100,
} # => 1..100
2 in range # => true
