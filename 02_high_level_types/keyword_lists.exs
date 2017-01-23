## Keyword lists are a common type of list, containings tuples.
## They're often used as a simple way to define lists of key/value pairs
## In Elixir, when you have a list of tuples where the first element of the tuple is an atom,
## it's' called a "Keyword List".

[{:key, "value"}, {:other_key, "value"}] # => [key: 'value', other_key: 'value'] | Note the return value

## Elixir provides a shorthand notation for the Keyword Lists.
## The brackets of the inner tuples can be ommited, and the ':' char of the atoms too :
my_list = [key: "value", other_key: 42] # => [key: 'value', other_key: 42]

## Values in keyword lists can be fetched using the brackets syntax :
my_list[:key] # => "value"

## Or with the get function in the Keyword module (Keyword lists functions are in the Keyword module):
Keyword.get(my_list, :key) # => "value"

## However, they are still lists, and inherits all the drawbacks and advantages of lists (lookup is still expensive : O(n)).
## They are still useful, because :
## - Keys can be duplicates
## - Keys are ordered

other_list = [key: 0] ++ my_list # => [key: 0, key: 'value', other_key: 42] | (Concatenating, like a list)
other_list[:key] # => 0 | Note that the value fetched is the first from the start
