import Control.Applicative hiding (Maybe)

import Control.Monad (ap)

instance Applicative Maybe where
    pure = return
    (<*>) = ap
