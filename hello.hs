string1 = "Saluton"
string2 = "Mondo"
string3 = string1 ++ " " ++ string2



-- calling functions
-- need to assign to variable or doesn't compile?
sqrtResult = sqrt 3
maxAnswer = max 5 7
maxAnswer2 = max (5 + 2) (sqrt 7)

-- create function
triple x = x * x * x
tripleAnswer = triple 3

-- if expression
posOrNeg x =
    if x >= 0
    then "Positive"
    else "Negative"
posOrNegResult = posOrNeg 4 
posOrNegResult2 = posOrNeg (-4) 

-- pow2 n = 2 to the power n
pow2 n =
    if n == 0
    then 1
    else 2 * (pow2 (n-1))

-- Lists
-- need to be homogeneous
xs = [1,2,3]
empty = []
xss = 0 : xs -- [0,1,2,3] - cons operator
xsss = xss ++ [4,5]
headOfXsss = head xsss -- 0
tailOfXsss = tail xsss -- [1,2,3,4,5]
isEmpty = null [] -- True
isNotEmpty = null xsss -- False

-- Tuple
tuple1 = (1, "hello", 3.14)

-- pattern matching
(xh : xt) = [1,2,3]

-- guard
pow22 n
  | n == 0 = 1 -- '|' before every guard
  | otherwise = 2 * (pow22 (n-1))

-- case expressions
-- cannot use guards on case expressions. If you need to, then use normal if expressions
double nums = case nums of
    [] -> []
    (x : xs) -> (2 * x) : (double xs)

-- 'let' binding
-- local binding
-- bottom up
-- does not need to be associated with function definition
fancySeven =
    let a = 3 -- constant
    in 2 * a + 1

fancyNine =
    let x = 4
        y = 5
    in x + y            

-- where binding
-- come after the function that uses it
-- must be associated with function definition
-- top down
fancyNine2 = x + y
  where x = 4
        y = 5

-- lazy evaluation
intsFrom n = n : (intsFrom (n+1))
-- intsFrom 1
-- take 10 intsFrom 1
-- head intsFrom 1
-- null intsFrom 1