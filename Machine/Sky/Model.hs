module Machine.Sky.Model where

import CLaSH.Prelude

data SKI =
      S
    | K
    | I
    | T SKI SKI
    | L Char
    deriving(Show)