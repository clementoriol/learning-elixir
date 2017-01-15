## Tuples are used to group a fixed number of element together

person = { "Clement", 28 } # => { "Clement", 28 }

## Kernel.elem/2 function allows you to extract an element from a tuple
## It takes a tuple and a zero-based index

elem(person, 0) # => "Clement"

## Kernel.put_elem/3 function allows to add an element to a tuple
## It takes a tuple, the index of where to add the element, and the element to add

put_elem(person, 1, 20) # => { "Clement", 20 }

## Note that it returns a new tuple, while the orignal tuple remains untouched
## Data in Elixir is immutable.

person # => { "Clement", 28 }

## Trying to add an element with put_elem on a non-existing location in the tuple throws
## an error

put_elem(person, 3, 20) # => ** (ArgumentError) argument error :erlang.setelement(4, {"Clement", 28}, 20)

## Kernel.tuple_size/1 returns the size of a tuple
tuple_size(person) # => 2
