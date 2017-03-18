module Machine.Sky.Types where

import CLaSH.Prelude

type Nibble = BitVector 4
type Byte = BitVector 8

type Value = Nibble

type Annodes = Nibble
type Segments = Byte

type SwitchArray = Nibble
type ButtonArray = Nibble