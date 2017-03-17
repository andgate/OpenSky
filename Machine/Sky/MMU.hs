module Machine.Sky.MMU where

import CLaSH.Prelude
import Machine.Sky.Model (SKI, Ptr)
import Machine.Sky.MMU.Types


data Pending = Pending Reading Reading Writing Writing
    deriving (Show)
    
data Reading = NotReading | Reading Ptr | DidRead SKI
    deriving (Show)
    
data Writing = NotWriting | Writing Ptr SKI | Written
    deriving (Show)
    
data RamStatus = NoUpdate | ReadComplete SKI | WriteComplete
    deriving (Show)

data RamAction =
    R Ptr       -- Read
  | W Ptr SKI   -- Write
  | X           -- Nothing
  deriving (Show)