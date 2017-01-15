## As seen previously, booleans in Elixir are actually atoms
## They still work in the expected way :

## They work with logical operators
true and false # => false
false && true # => false
false || true # => true
true or false # => true
not false # => true
!true # => false

## false and nil are treated are falsy values, everything else is a truthy value,
## which allows short-circuiting :

## When using the 'or' ('||') operator, the first expression is evaluated as a boolean.
## If it's falsy, it will continue and will evaluate the next expression.
## If it's truthy, it will return it
## The last expression is always returned
nil || 0 || true # => 0
true || 14 # => true

## When using the 'or' ('||') operator, the first expression is evaluated as a boolean.
## If it's falsy, it will continue and will evaluate the next expression.
## If it's truthy, it will return it
## The last expression is always returned
true && false && 21 # => false
nil && 32 # => nil
