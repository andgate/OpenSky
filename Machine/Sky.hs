module Machine.Sky where

import CLaSH.Prelude

import Machine.Sky.Model
import Machine.Sky.Model.StackMachine


type Switches = BitVector 2
type Leds = BitVector 2

{-# ANN topEntity
  (defTop
    { t_name     = "sky"
    , t_inputs   = ["Sw"]
    , t_outputs  = ["Led"]
    }) #-}
topEntity :: Signal Switches -> Signal Leds
topEntity = fmap adder

adder :: Switches -> Leds
adder sw =
  case sw of
    0 -> 0
    1 -> 1
    2 -> 1
    3 -> 2