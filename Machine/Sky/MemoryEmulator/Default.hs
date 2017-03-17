module Machine.Sky.MemoryEmulator.Default (defaultContents) where

import CLaSH.Prelude

-- The contents of memory.
-- Starts with the compiled SKI program and has zeroes everywhere else.
-- Note that, for purposes of making this project easy to compile to different
-- FPGA families, we are using block RAM. This limits our RAM to a few
-- hundred kilobits.
defaultContents :: Vec 0x50 (BitVector 64)
defaultContents = hello4 ++ repeat 0

-- These programs are generated using Compile.hs

-- Program: "SII(SII(hello_world!))"
-- This program prints "hello_world!" 4 times.
hello4 = 0x3000000040000006 :>
         0x3000000080000005 :>
         0x30000000c0000004 :>
         0x0000000000000000 :>
         0x2000000000000000 :>
         0x2000000000000000 :>
         0x30000001c000000c :>
         0x300000020000000b :>
         0x300000024000000a :>
         0x0000000000000000 :>
         0x2000000000000000 :>
         0x2000000000000000 :>
         0x3000000340000022 :>
         0x3000000380000021 :>
         0x30000003c0000020 :>
         0x300000040000001f :>
         0x300000044000001e :>
         0x300000048000001d :>
         0x30000004c000001c :>
         0x300000050000001b :>
         0x300000054000001a :>
         0x3000000580000019 :>
         0x30000005c0000018 :>
         0x4000000000000068 :>
         0x4000000000000065 :>
         0x400000000000006c :>
         0x400000000000006c :>
         0x400000000000006f :>
         0x400000000000005f :>
         0x4000000000000077 :>
         0x400000000000006f :>
         0x4000000000000072 :>
         0x400000000000006c :>
         0x4000000000000064 :>
         0x4000000000000021 :>
         Nil