module Lib
    ( someFunc
    ) where

import qualified Data.ByteString.Lazy.Char8 as L8
import           Network.HTTP.Simple

someFunc :: IO ()
someFunc = putStrLn "someFunc eu e"
