pass3 f x y = f x y
add x y = x + y
result = pass3 add 1 2

-- partial application
foo x y z = x + y + z

-- operators +,-,*,etc...
-- are all functions
-- can be used as functions in HOF
-- `pass3 (+) 1 2`
-- PLEASE NOTE: (1+) or (+1) is partial application

-- turn functions into operators
norm = mod 10 2
asOp = 10 `mod` 2

-- map
-- map length ["hello", "abc", "1234"]
-- map (1+) [1,2,3]

-- filter
-- filter (\x -> x > 1) [1,2,3,4]

--fold
--- foldl slightly faster - tail recursive
--- foldr works on infinite lists. Not foldl
-- foldl (+) 0 [1,2,3,4]
-- foldr (+) 0 [1,2,3,4]

-- zip
--- stops at shorter list
--- ie zip [1,2] [4,5,6] = [(1,4), (2,5)]
--zip [1,2,3] [4,5,6]
-- zipWith, zipWith3, zipWith4, etc...
-- applies function to resulting tuples
-- zipWith (+) [1,2,3] [4,5,6]
 -- result = [5,7,9]

 -- Function operators
 -- (.) - Function composition
 -- read right to left
 -- functions must have 1 parameter
 --- (length . show) 120
 
 -- ($) - Function Application - takes function and a value and applies function to value
-- helps replace parenthesis -- basically puts paraenthesis to the right of the `$`
--- ie f $ g x = f (g x)
--- ie f $ g $ h $ k x = f(g(h(k x)))

-- another example: Shortening lambdas
{-
Prelude> map (\f -> f 3) [(+1), (\x -> 2*x + 3), (*2)]
[4,9,6]
Prelude> map ($3) [(+1), (\x -> 2*x + 3), (*2)]
[4,9,6]
-}