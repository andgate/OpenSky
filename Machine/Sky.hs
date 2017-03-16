module Machine.Sky where

import CLaSH.Prelude

import Machine.Sky.Model

{-# ANN topEntity
  (defTop
    { t_name     = "sky"
    , t_inputs   = ["Sw0", "Sw1"]
    , t_outputs  = ["Led"]
    }) #-}
topEntity :: Signal (Bool, Bool) -> Signal Bool
topEntity = fmap andgate

andgate :: (Bool, Bool) -> Bool
andgate (a,b) = a .&. b