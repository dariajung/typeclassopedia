-- A one way wrapper. We can wrap things, but we cannot unwrap them.

data W a = W a deriving Show

return :: a -> W a
return x = W x

fmap :: (a -> b) -> (W a -> W b)
fmap f (W x) = W (f x)

f :: Int -> W Int
f x = W (x + 1)

bind :: (a -> W b) -> W a -> W b
bind f (W x) = f x

--  g x (W y) = W (x + y)
--g :: Int -> W Int -> W Int
--g x w = w >>= (Main.return . (+x))