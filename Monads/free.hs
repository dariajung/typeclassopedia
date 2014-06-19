import Control.Applicative
import Control.Monad

data Free f a = Var a
              | Node (f (Free f a))

instance Functor f => Functor (Free f) where
    fmap fx (Var a) = Var (fx a)
    fmap fx (Node x) = Node (fmap (fmap fx) x)

