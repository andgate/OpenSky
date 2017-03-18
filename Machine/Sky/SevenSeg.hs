{-# LANGUAGE BinaryLiterals #-}
module Machine.Sky.SevenSeg where

import CLaSH.Prelude

import Machine.Sky.Types


anode_n :: Annodes -> Value
anode_n 0b1110 = 0
anode_n 0b1101 = 1
anode_n 0b1011 = 2
anode_n 0b0111 = 3


anode :: Int -> BitVector 4
anode 0 = 0b1110
anode 1 = 0b1101
anode 2 = 0b1011
anode 3 = 0b0111


{-
   A
   _
 F| |B
   - G
 E|_|C .H
   D
-}

convert :: Nibble -> Byte
convert 0b0001 = 0b1111001 -- 1
convert 0b0010 = 0b0100100 -- 2
convert 0b0011 = 0b0110000 -- 3
convert 0b0100 = 0b0011001 -- 4
convert 0b0101 = 0b0010010 -- 5
convert 0b0110 = 0b0000010 -- 6
convert 0b0111 = 0b1111000 -- 7
convert 0b1000 = 0b0000000 -- 8
convert 0b1001 = 0b0010000 -- 9
convert 0b1010 = 0b0001000 -- A
convert 0b1011 = 0b0000011 -- B
convert 0b1100 = 0b1000110 -- C
convert 0b1101 = 0b0100001 -- D
convert 0b1110 = 0b0000110 -- E
convert 0b1111 = 0b0001110 -- F
convert _      = 0b1000000 -- 0