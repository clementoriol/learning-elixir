## Lambdas are just anonymous functions
## In Elixir, they are first-class citizens, meaning:
## - They can be assigned to a variable
## - They can be passed as arguments, as any other type

square = fn(x) ->
  x * x
end
square.(2) # => 4 | Note the '.' before the invocation parenthesis
           # In Elixir, the '.' is needed for invoking lambdas

Enum.each(
  [1, 2, 3],
  fn(x) -> IO.puts(x) end
) # => 1; 2; 3; :ok;

## ^ In this case, Elixir even allows you to directly reference to the IO.puts.1 function,
## without the need of the lambda

Enum.each(
  [1, 2, 3],
  &IO.puts/1
) # => 1; 2; 3; :ok; | Note the usage of the '&' symbol (capture operator)
  # It turns a full function qualifier (module name, function name and arity) into a lambda

## The capture operator (&) also allows for shorter lamda definitions
lambda = fn(x, y, z) -> x + y * z end
lambda.(1, 2, 3) # => 7

## Can be written as:
lambda = &(&1 + &2 * &3)
lambda.(1, 2, 3) # => 7

## Closures: Lambdas can reference any variables from outside its scope, creating a closure
outside = 5
add_outside = fn (x) -> outside + x end
outside = 10
add_outside.(1) # => 6 | the var 'outside' is captured by the add_outside fn
                # Rebinding the variable doesn't affect the lambda
                # This is different than how some languages handle closures (eg. JavaScript)
