import Control.Monad hiding ([])

instance Monad [] where
    return x = [x]
    xs >>= g = concat (map g xs)
    fail _ = []