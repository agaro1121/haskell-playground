{-# LANGUAGE DerivingStrategies #-}
data RGB = RGB Int Int Int

-- typeclass instance
instance Eq RGB where
    (RGB r1 g1 b1) == (RGB r2 g2 b2) =
        (r1 == r1) && (g1 == g2) && (b1 == b2)

instance Show RGB where
    show (RGB r g b) = 
        "RGB " ++ (show r) ++ " " ++
        (show g) ++ " " ++ (show b)        

-- can derive type classes
-- need the comment above to dervice multiple typeclass instances
data RGB2 = RGB2 Int Int Int
  deriving Eq deriving Show       