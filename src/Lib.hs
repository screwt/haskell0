{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( someFunc
    ) where

-- import Network.HTTP.Simple
import qualified Data.ByteString.Lazy.Char8 as L8 (putStrLn)
import qualified Network.Wreq as Wq (get, responseBody)
import Control.Lens

someFunc :: IO ()
someFunc = do
  x <- getLine
  r <- Wq.get x
  L8.putStrLn  (r ^. Wq.responseBody)
