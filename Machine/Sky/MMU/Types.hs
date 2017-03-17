module Machine.Sky.MMU.Types where

import CLaSH.Prelude hiding (Read)
import Machine.Sky.Model (SKI, Ptr)


-- Maxium read/writes needed at once is two.
data MemRequest = MemRequest (Some Read) (Some Write)
    deriving (Show)
    
-- Return the requested Read results.
data MemResponse = MemResponse (Some SKI)
    deriving (Show)

-- 0 to 2 of something
data Some x =
    Zero | One x | Two x x
    deriving (Show)

-- A memory write
data Write = Write SKI Ptr
    deriving (Show)
    
-- A memory read   
data Read = Read Ptr
    deriving (Show)