{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module Machine.Sky.Model where

import CLaSH.Prelude

newtype Ptr = Ptr (Unsigned 30)
    deriving (Show, Enum, Num)

data SKI = S | K | I | T Ptr Ptr | L Output
    deriving(Show)
    
data Output = Output (Unsigned 32)
    deriving (Show)

