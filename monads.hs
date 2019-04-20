{- 
    -- m is parametrized type
    class Monad m where
        return :: a -> m a
        (>>=)  :: m a -> (a -> m b) -> m b
-}

-- monad constraint
join :: Monad m => m (m a) -> m a
join mmx = mmx >>= id