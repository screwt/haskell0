{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( someFunc
    ) where

-- import Network.HTTP.Simple
import Data.ByteString.Lazy.Char8 as L8
import Network.Wreq
import Control.Lens

someFunc :: IO ()
someFunc = do
  x <- getLine
  r <- get x
  L8.putStrLn  (r ^. responseBody)
