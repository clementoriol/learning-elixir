## Atoms are named constants, similar to symbols in ruby
:an_atom
:"an_atom_with_spaces"

## True and False are atoms
true == :true # => true
false == :false # => true
is_atom(true) # => true
is_boolean(:false) # => true

## Nil is also an atom
nil == :nil # => true
is_nil(:nil) # => true

## Compared to strings, atoms are very performant, they are stored in what's called an "atom table", and only
## the reference to their place in the atom table is kept in memory
