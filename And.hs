module And where

import CLaSH.Prelude

{-# ANN topEntity
  (defTop
    { t_name     = "lightswitch"
    , t_inputs   = ["Sw0", "Sw1"]
    , t_outputs  = ["Led"]
    }) #-}
topEntity :: Signal (Bool, Bool) -> Signal Bool
topEntity = fmap andgate

andgate :: (Bool, Bool) -> Bool
andgate (a,b) = a .&. b

{-
testInput :: Signal (Bool, Bool)
testInput = stimuliGenerator ((False,False):>(False,True):>(True,False):>(True,True):>Nil)

expectedOutput :: Signal Bool -> Signal Bool
expectedOutput = outputVerifier (False:>False:>False:>True:>Nil)

testbench :: [Bool]
testbench = sampleN 1 $ expectedOutput $ topEntity testInput
-}