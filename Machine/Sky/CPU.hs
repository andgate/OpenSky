{-# LANGUAGE BinaryLiterals #-}
module Machine.Sky.CPU where

import CLaSH.Prelude

import Machine.Sky.SevenSeg
import Machine.Sky.Types


type CpuIn = (SwitchArray, ButtonArray)

data CpuState = 
  CpuState
  { r1 :: Nibble
  , r2 :: Nibble
  , r3 :: Nibble
  , r4 :: Nibble
  , an :: Nibble
  } deriving Show

initial :: CpuState
initial = CpuState 0b0000 0b0000 0b0000 0b0000 0b1110


cpu :: CpuState -> CpuIn -> (CpuState, (Annodes, Segments))
cpu s (sw, btn) = (update sw btn s, render s)

update :: SwitchArray -> ButtonArray -> CpuState-> CpuState
update sw btn s = s' { an = rotate (an s) 1 }
  where
    s' = case btn of
          0b1000  -> s { r1 = sw }
          0b0100  -> s { r2 = sw }
          0b0010  -> s { r3 = sw }
          0b0001  -> s { r4 = sw }
          _       -> s


render :: CpuState -> (Annodes, Segments)
render s = (an s, seg) 
  where
    seg = convert v
    v = case anode_n (an s) of
        0 -> r1 s
        1 -> r2 s
        2 -> r3 s
        3 -> r4 s