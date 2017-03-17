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


-- The first step: Generate memory requests.
-- Behavior varies depending on how many thing sare in the stack cache.
-- CLaSH and synthesis optimizers should lift redundant expressions.
step1 :: State -> MemRequest
step1 Terminal = MemRequest Zero Zero -- We are done, nothing to request.
step1 Initializing = MemRequest (One (Read (Ptr 1))) Zero -- Read the start of the program
step1 (State (Stack NoSKIs _ 0) _ current) =
  case current of
      S       -> error "S on empty stack"
      K       -> error "K on empty stack"
      I       -> error "I on empty stack"
      T ap bp -> MemRequest (Two (Read ap) (Read bp)) Zero
      L o     -> MemRequest Zero Zero
step1 (State (Stack (OneSKI x) _ 0) _ current) =
  case current of
      S       -> error "S on 1-elem stack"
      K       -> error "S on 1-elem stack"
      I       -> MemRequest Zero Zero
      T ap bp -> MemRequest (Two (Read ap) (Read bp)) Zero
      L o     -> MemRequest Zero Zero

step1 (State (Stack (TwoSKIs x y) _ 0) _ current) =
  case current of
      S       -> error "S on 2-elem stack"
      K       -> MemRequest Zero Zero
      I       -> MemRequest Zero Zero
      T ap bp -> MemRequest (Two (Read ap) (Read bp)) Zero
      L o     -> MemRequest Zero Zero

step1 (State (Stack (ThreeSKIs x y z) base 0) heap current) =
  case current of
      S       -> MemRequest Zero (Two (Write y (tip heap)) (Write z (pred $ tip heap)))
      K       -> MemRequest Zero Zero
      I       -> MemRequest Zero Zero
      T ap bp -> MemRequest (Two (Read ap) (Read bp)) (One (Write z base))
      L o     -> MemRequest Zero Zero

step1 (State (Stack (ThreeSKIs x y z) base 1) heap current) =
  case current of
      S       -> MemRequest (One (Read stack_head)) (Two (Write y (tip heap)) (Write z (pred $ tip heap)))
      K       -> MemRequest (One (Read stack_head)) Zero
      I       -> MemRequest (One (Read stack_head)) Zero
      T ap bp -> MemRequest (Two (Read ap) (Read bp)) (One (Write z base))
      L o     -> MemRequest (One (Read stack_head)) Zero
  where
    stack_head = pred base

step1 (State (Stack (ThreeSKIs x y z) base n) heap current) =
  case current of
      S       -> MemRequest (One (Read stack_head)) (Two (Write y (tip heap)) (Write z (pred $ tip heap)))
      K       -> MemRequest (Two (Read stack_head) (Read $ pred stack_head)) Zero
      I       -> MemRequest (One (Read stack_head)) Zero
      T ap bp -> MemRequest (Two (Read ap) (Read bp)) (One (Write z base))
      L o     -> MemRequest (One (Read stack_head)) Zero

  where
    stack_head = pred base


default_stack :: Stack
default_stack = Stack NoSKIs (Ptr 0x100) 0

default_heap :: Heap
default_heap = Heap (Ptr 0x4FF)


-- Step 2: Take the memory response and generate the next state.
-- This may seem somewhat complicated, but there is a fair amount of
-- conceptual redundancy. It's just a pain to deal with all the different
-- possible stack configurations.
-- In particular, we have these possibilities: (# in cache, # in RAM)
-- (0,0),(1,0),(2,0)(3,0),(3,1),(3,_)
step2 :: State -> MemResponse -> State
step2 Terminal _ = Terminal
step2 Initializing (MemResponse (One ski)) = State default_stack default_heap ski
step2 (State (Stack NoSKIs base 0) heap current) (MemResponse response)
    = case (current, response) of
          (S,_)            -> error "S on empty stack (step 2)"
          (K,_)            -> error "K on empty stack (step 2)"
          (I,_)            -> error "I on empty stack (step 2)"
          (T _ _, Two a b) -> State (Stack (OneSKI b) base 0) heap a
          (L _, _)         -> Terminal
step2 (State (Stack (OneSKI x) base 0) heap current) (MemResponse response)
    = case (current, response) of
          (S,_)            -> error "S on 1-elem stack (step 2)"
          (K,_)            -> error "K on 1-elem stack (step 2)"
          (I,_)            -> State (Stack NoSKIs base 0)        heap x
          (T _ _, Two a b) -> State (Stack (TwoSKIs b x) base 0) heap a
          (L _,_)          -> State (Stack NoSKIs base 0)        heap x
step2 (State (Stack (TwoSKIs x y) base 0) heap current) (MemResponse response)
    = case (current, response) of
          (S,_)            -> error "S on 2-elem stack (step 2)"
          (K,_)            -> State (Stack (NoSKIs)          base 0)  heap x
          (I,_)            -> State (Stack (OneSKI y)        base 0)  heap x
          (T _ _, Two a b) -> State (Stack (ThreeSKIs b x y) base 0)  heap a
          (L o,_)          -> State (Stack (OneSKI y)        base 0)  heap x
step2 (State (Stack (ThreeSKIs x y z) base 0) heap current) (MemResponse response)
    = case (current, response) of
          (S,_)            -> State (Stack (TwoSKIs z (T y' z')) base 0) heap' x
          (K,_)            -> State (Stack (OneSKI z)            base 0) heap  x
          (I,_)            -> State (Stack (TwoSKIs y z)         base 0) heap  x
          (T _ _, Two a b) -> State (Stack (ThreeSKIs b x y) pushBase 1) heap  a
          (L o,_)          -> State (Stack (TwoSKIs y z)         base 0) heap  x
    where
      y' = tip heap
      z' = pred y'
      heap' = Heap (pred z')
      pushBase = succ base
step2 (State (Stack (ThreeSKIs x y z) base 1) heap current) (MemResponse response)
    = case (current, response) of
          (S,One h)        -> State (Stack (ThreeSKIs z (T y' z') h) popBase 0) heap' x
          (K,One h)        -> State (Stack (TwoSKIs z h)             popBase 0) heap  x
          (I,One h)        -> State (Stack (ThreeSKIs y z h)         popBase 0) heap  x
          (T _ _, Two a b) -> State (Stack (ThreeSKIs b x y)        pushBase 2) heap  a
          (L _,One h)      -> State (Stack (ThreeSKIs y z h)         popBase 0) heap  x
    where
      y' = tip heap
      z' = pred y'
      heap' = Heap (pred z')
      popBase = pred base
      pushBase = succ base
step2 (State (Stack (ThreeSKIs x y z) base n) heap current) (MemResponse response)
  = case (current, response) of
        (S,One h)        -> State (Stack (ThreeSKIs z (T y' z') h) popBase dec) heap' x
        (K,Two h i)      -> State (Stack (ThreeSKIs z h i)   popPopBase decDec) heap  x
        (I,One h)        -> State (Stack (ThreeSKIs y z h)         popBase dec) heap  x
        (T _ _, Two a b) -> State (Stack (ThreeSKIs b x y)        pushBase inc) heap  a
        (L _,One h)      -> State (Stack (ThreeSKIs y z h)         popBase dec) heap  x
  where
    y' = tip heap
    z' = pred y'
    heap' = Heap (pred z')
    popBase = pred base
    popPopBase = pred popBase
    pushBase = succ base
    inc = succ n
    dec = pred n
    decDec = pred dec


outputOf :: State -> Maybe Output
outputOf (State _ _ (L o)) = Just o
outputOf _                 = Nothing

terminal :: State -> Bool
terminal Terminal = True
terminal _        = False