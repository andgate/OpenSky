{-# LANGUAGE BinaryLiterals #-}
module Machine.Sky (topEntity) where

import CLaSH.Prelude
import Machine.Sky.CPU
import Machine.Sky.IO.SevenSeg
import Machine.Sky.Types

import CLaSH.Signal.Explicit
import CLaSH.Sized.BitVector ((++#))


{-# ANN topEntity
  (defTop
    { t_name     = "sky"
    , t_inputs  = ["Sw", "Btn"]
    , t_outputs  = ["an", "seg", "Led"]
    , t_extraIn  = [ ("mclk", 1)
                   ]
    , t_clocks  = [ClockSource
                    { c_name  = "clock"
                    , c_inp   = [("clksrc", "mclk")]
                    , c_outp  = [("clk", show systemClock)]
                    , c_reset = Nothing
                    , c_lock  = "clklk"
                    , c_sync  = False
                    }
                  ]
    }) #-}
topEntity :: (Signal Switches, Signal Buttons) -> (Signal Annodes, Signal Segments, Signal Value)
topEntity (sw, btn) = (an, segs, sw)
  where
    (an, segs) = unbundle . sevenSeg $ taggedVal
    taggedVal = (++#) <$> currAddr <*> currVal
    (currAddr, maywrite) = unbundle . cpuHardware . bundle $ (sw, btn)
    currVal = blockRam (replicate d256 0) currAddr maywrite