-- type Synonym (type alias)
-- type String = [Char] --conflicts with builtin type
type Point = (Double, Double)

-- Newtype
-- defines type alias but types are not interchageable
-- ie type alias for customer id but ids should be allowed to be added like Num
newtype CustomerId = MakeCustomerId Int
-- can't create CustomerId without calling `MakeCustomerId`
-- use pattern matching to extract Int part
customerToInt (MakeCustomerId i) = i
{-|
    you can also give constructor same name as newtype
    newtype CustomerId = CustomerId Int
    customerToInt (CustomerId i) = i
    now the pattern match is easier to understand
-}

-- Records - kind of like a class or struct
-- should generally be avoided
data Customer = MakeCustomer
  { customerId  :: CustomerId
  , name        :: String
  , luckyNumber :: Int
  }

batman = MakeCustomer
  { customerId = MakeCustomerId 1
  , name = "Batman"
  , luckyNumber = 21   
  }
-- can access using `name batman`, `luckyNumber batman` 
-- each field in record gets its own function to get it

-- copy - like case class
batman2 = batman { name = "Batman2" }


-- ADTs
-- name = ConstructorName fields...
data CustomerADT = CustomerADT CustomerId String Int
batmanADT = CustomerADT (MakeCustomerId 1) "Batman" 1
-- pattern matching and wildcards
getCustomerId1 (CustomerADT cust@(MakeCustomerId i) _ _) = cust
getCustomerId (CustomerADT cust@(MakeCustomerId i) _ _) = i

-- with multipile constructors
-- these can be used as enums
data DialogResponse = Yes | No | Help | Quit
-- with params
data MaybeInt = NoInt | JustInt Int
data Tree a = Branch (Tree a) (Tree a) | Leaf a
tree = Branch (Leaf 1) (Leaf 2)