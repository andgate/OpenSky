module Machine.Sky.Model.StackMachine where

import CLaSH.Prelude hiding (Read)
import Machine.Sky.MMU.Types
import Machine.Sky.Model

import Text.Printf (printf)

data Stack = Stack { cache :: SKIs, base :: Ptr, count :: Unsigned 30 }

instance Show Stack where
    show (Stack cache (Ptr base) count) = printf "Stack@%08x [%d in memory] {%s}" (fromEnum base) (fromEnum count) (show cache)

data SKIs = NoSKIs | OneSKI SKI | TwoSKIs SKI SKI | ThreeSKIs SKI SKI SKI
    deriving (Show)

data Heap = Heap { tip :: Ptr }
    deriving (Show)

data State =
      Initializing
    | State
      { stack :: Stack
      , heap :: Heap
      , current :: SKI
      }
    | Terminal
    deriving Show