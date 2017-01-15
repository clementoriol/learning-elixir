## Maps are key/value stores, similar to Ruby Hashes or Javascript Objects :
user = %{:name => "Clement", :age => 28, :city => "Paris" } # => %{:name => "Clement", :age => 28, :city => "Paris" }

## Their keys and values can be of any type, even complex ones
%{[1,2] => {"a", "b"}} # => %{[1, 2] => {"a", "b"}}

## Getting a value can be done using a brackets notation:
user[:name] # => "Clement"

## Or, if it's an atom, with the dot notation:
user.age # => 28

## The bracket notation returns nil when a key doesn't exists:
user[:country] # => nil

## but the dot notation throws an error:
user.country # => ** (KeyError) key :country not found in: %{age: 28, city: "Paris", name: "Clement"}

## Updating a value can be easily done:
%{ user | :age => 29 } # => (returns a new Map) %{age: 29, city: "Paris", name: "Clement"}

## However, it can't create new key/value pairs :
%{ user | :country => "France" } # => ** (KeyError) key :country not found in: %{age: 28, city: "Paris", name: "Clement"}

## Adding a new key/value pair is done with Map.put/3
Map.put(user, :country, "France") # => %{age: 28, city: "Paris", country: "France", name: "Clement"}
