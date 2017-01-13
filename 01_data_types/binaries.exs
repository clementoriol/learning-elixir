## Elixir allows to directly manipulate binaries.
## A binary is a chunk of bytes they can be created with the << >> operators

<<1, 2, 3>> # => <<1, 2, 3>>
<<257>> # => << 1 >> | Bigger values than 255 are truncated to the byte size
<<1, 2>> <> <<3, 4>> # => <<1, 2, 3, 4>> | Binaries can be concatenated with <>
