-- main is special
-- Haskell runtime looks for this and needs type: `IO ()`

-- main = putStrLn "Saluton Mondo"
main = do
    putStrLn "Hello"
    putStrLn "World"
    putStrLn "Enter Name:"
    -- arrow binds answer from getLine
    -- arrow only works in `do` block
    line <- getLine
    putStrLn ("You said:" ++ line)

-- `return` function is a constuctor for IO