## Elixir Lists can contain any types and can be of any length.

## They look pretty similar to arrays in other languages
list1 = [1, 2, 3] # => [1, 2, 3]

## But actually, Elixir lists are actually Linked Lists.
## Each element of the list consist of a head / tail pair.
## The head contains the value, and the tail points to the next element in the list
## (Let's invent a new syntax to display this (NOTE: not proper elixir syntax)) :
## [ head: 1, tail: -> [ head: 2, tail -> [ head: 3, tail: nil ]]]


## PROS:
## Linked lists has the advantage that prepending to a list is fast (Complexity of 0(1).
## It's basically just creating a new List element and pointing its tail to the existing List.

list2 = [0 | list1] # => [0, 1, 2, 3] | (does : [head: 0, tail -> list1])

## Actually, list1 could be written using this syntax :
[1 | [ 2 | [ 3 ]]] # => [1, 2, 3]
# It's pretty much what's going on under the hood

## Reading the head is fast (0(1))
hd(list1) # => 1

## Reading the tail (not the last element) is fast (0(1))
tl(list1) #  => [2, 3]

## CONS:
## Appending to a list is slow (O(n)).
list1 ++ [4] # => [1, 2, 3, 4]
## Every tail element of the list has to be changed :
## to point to the new list element 4, a new list element 3 has to be made.
## a new list element 2 has to be made too, to point to the new 3
## etc.

## Inserting an element in the list can also be slow (O(n) (worst case))
List.insert_at(list1, 1, 1) # => [1, 1, 2, 3] | Inserts a new integer (1) on list1 at the index 1
## Since the inserted list element 1 is new, the first element of the existing list has to be recreated, with his tail pointing to the new element
## [head: 1, tail: [head: 1, tail: nil]]
## Then, the new element can point at the remaining parts of the original list
## (Elixir can share memory space)

## Lists can also be subtracted :
list1 -- [2, 3] # => [1]
