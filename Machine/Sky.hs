{-# LANGUAGE BinaryLiterals #-}
module Machine.Sky (topEntity) where

import CLaSH.Prelude
import Machine.Sky.CPU
import Machine.Sky.SevenSeg
import Machine.Sky.Types

import CLaSH.Signal.Explicit


{-# ANN topEntity
  (defTop
    { t_name     = "sky"
    , t_inputs  = ["Sw", "Btn"]
    , t_outputs  = ["an", "seg"]
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
topEntity :: (Signal SwitchArray, Signal ButtonArray) -> (Signal Annodes, Signal Segments, Signal Halt)
topEntity = (an, segs, halt)
  where
    (an, segs) = unbundle vout

    (ramRequest, gpuRequest, halt) = unbundle $ cpuHardware ramResponse
    ramResponse = ramHardware ramRequest
    
    (vramRequest, cpuRequest, vout, halt) = unbundle $ gpuHardware vramResponse gpuRequest
    vramResponse = vramHardware vramRequest

cpuHardware :: Signal CpuIn -> Signal (Annodes, Segments)
cpuHardware = mealy cpu initial