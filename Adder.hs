module Adder where

import CLaSH.Prelude

{-# ANN topEntity
  (defTop
    { t_name     = "adder"
    , t_inputs   = ["Sw0", "Sw1"]
    , t_outputs  = ["Led0", "Led1"]
    }) #-}
topEntity :: Signal (Bool, Bool) -> Signal (Bool, Bool)
topEntity = fmap adder

adder :: (Bool, Bool) -> (Bool, Bool)
adder (a, b) = (s, c)
    where
        s = xor a b
        c = a .&. b