## Strings in elixir are actually not a dedicated string type.
## They exists but are actually binary or list types.

## Binary Strings

<<104, 101, 108, 108, 111>> # => "hello" | Binaries and (double-quoted) strings are actually equivalent
"I'm a string" # => "I'm a string"
"My name is #{name}" # => "My name is Clement" | String interpolation is possible with #{}

"
I'm a multiline
string. How awesome.
" # => "\nI'm a multiline\nstring. How awesome.\n" | Multiline string are also possible.

"""
Heredoc works almost
the same
""" # => "Heredoc works almost\nthe same\n" | Heredocs handles multiline text a little differently

~s("I'm a quote" - author) # => "\"I'm a quote\" - author" | Sigils are useful to avoid escaping quotes
~S("I'm a quote" - #{author}) # => "\"I'm a quote\" - \#{author}" | The uppercase Sigil also does'nt do interpolation
                              # or escape characters

"String" <> " " <> "Concatenation" # => Since strings are binaries, they can be concanated as such
"String" + " " + "Concatenation" # => (ArithmeticError) bad argument in arithmetic expression | the + operator cannot
                                 # be used for concatenation


## Character Lists
## They are an alternative way to represent strings. Less used, they are mostly needed for some third-party libaries

'ABC' # => 'ABC' | Character Lists have single-quotes. It's basically a list of integers, representing characters
[65, 66, 67] # => 'ABC' | The runtime treats integers list as Character Lists if they match characters
'ABC' == [65, 66, 67] # => true

'My name is #{name}' # => 'My name is Clement' | Interpolation works the same

'''
Heredoc character list
with multiline
''' # => 'Heredoc character list\nwith multiline\n' | Heredoc and multiline works basically the same

~c(Sigils also exists for character lists) # => 'Sigils also exists for character lists'
~C(Sigils also exists for #{type}) # => 'Sigils also exists for \#{type}'

String.to_char_list("String") # => 'String' | Strings can be converted to char lists
List.to_string('String') # => "String" | And Char Lists can be converted to strings
