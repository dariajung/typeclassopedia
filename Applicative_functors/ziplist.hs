import Control.Applicative hiding (ZipList)

newtype ZipList a = ZipList { getZipList :: [a] }

instance Functor ZipList where
    fmap f (ZipList xs) = ZipList (map f xs)
 
instance Applicative ZipList where
    pure x = ZipList (repeat x)
    (ZipList gs) <*> (ZipList xs) = ZipList (zipWith ($) gs xs)