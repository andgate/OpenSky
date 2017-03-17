{-# LANGUAGE BinaryLiterals #-}
module Machine.SevenSeg where

import CLaSH.Prelude

{-
   A
   _
 F| |B
   - G
 E|_|C .H
   D
-}

type Annodes = BitVector 4
type Segments = BitVector 8
type SevenSeg = (Annodes, Segments)


display :: Signal (Vec 4 (Unsigned 32)) -> (Signal Annodes, Signal Segments)
display outputs = (anode <$> active, cathodes)
    where
    cathodes = (xor 0xFF . convert) <$> liftA2 (!!) outputs active
    active = register 0 (next <$> active)

next :: Index 4 -> Index 4
next 3 = 0
next n = n + 1

anode :: Index 4 -> BitVector 4
anode 0 = 0b1110
anode 1 = 0b1101
anode 2 = 0b1011
anode 3 = 0b0111

convert :: Unsigned 32 -> BitVector 8
convert 104 = 0b01110100 -- 'h'
convert 101 = 0b01111011 -- 'e'
convert 108 = 0b00110000 -- 'l'
convert 111 = 0b01011100 -- 'o'
convert 95  = 0b00001000 -- '_'
convert 119 = 0b00101010 -- 'w'
convert 114 = 0b00110001 -- 'r'
convert 100 = 0b01011110 -- 'd'
convert 33  = 0b10000010 -- '!'
convert _   = 0