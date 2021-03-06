(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i64_i64_=>_i32 (func (param i64 i64) (result i32)))
 (import "env" "memory" (memory $0 2 16))
 (data (i32.const 1036) "\04\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\d1\83Q+")
 (data (i32.const 1068) "\04\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00j7\12\e2")
 (data (i32.const 1100) "\1e\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l\00")
 (data (i32.const 1164) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1196) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1228) "\18\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\18\00\00\00f\00l\00i\00p\00p\00e\00r\00.\00f\00l\00a\00g\00")
 (data (i32.const 1276) "\08\00\00\00\01\00\00\00\00\00\00\00\18\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1308) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1340) "\04\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\c0\96\a5\f8")
 (data (i32.const 1372) "\04\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\1e\\\a4V")
 (data (i32.const 1404) "\04\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\fe\dc\03\f6")
 (data (i32.const 1436) "\04\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\fc<M\f7")
 (data (i32.const 1468) "\06\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00f\00a\00n\00")
 (data (i32.const 1500) "\10\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00l\00i\00a\00n\00g\00q\00i\00n\00")
 (data (i32.const 1548) "\08\00\00\00\01\00\00\00\00\00\00\00\1a\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00")
 (import "seal0" "seal_input" (func $../../src/seal/seal0/seal_input (param i32 i32)))
 (import "seal0" "seal_hash_sha2_256" (func $../../src/seal/seal0/seal_hash_sha2_256 (param i32 i32 i32)))
 (import "seal0" "seal_set_storage" (func $../../src/seal/seal0/seal_set_storage (param i32 i32 i32)))
 (import "seal0" "seal_get_storage" (func $../../src/seal/seal0/seal_get_storage (param i32 i32 i32) (result i32)))
 (import "seal0" "seal_return" (func $../../src/seal/seal0/seal_return (param i32 i32 i32)))
 (import "seal0" "seal_value_transferred" (func $../../src/seal/seal0/seal_value_transferred (param i32 i32)))
 (table $0 3 funcref)
 (elem (i32.const 1) $../../src/seal/seal0/seal_hash_sha2_256 $../../src/seal/seal0/seal_value_transferred)
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $flipper/msg (mut i32) (i32.const 0))
 (export "deploy" (func $flipper/deploy))
 (export "call" (func $flipper/call))
 (start $~start)
 (func $~lib/rt/stub/computeSize (param $0 i32) (result i32)
  (i32.sub
   (i32.and
    (i32.add
     (local.get $0)
     (i32.const 19)
    )
    (i32.const -16)
   )
   (i32.const 4)
  )
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $1
     (i32.and
      (i32.add
       (i32.shl
        (local.tee $2
         (memory.size)
        )
        (i32.const 16)
       )
       (i32.const 15)
      )
      (i32.const -16)
     )
    )
   )
   (if
    (i32.lt_s
     (memory.grow
      (select
       (local.get $2)
       (local.tee $1
        (i32.shr_u
         (i32.and
          (i32.add
           (i32.sub
            (local.get $0)
            (local.get $1)
           )
           (i32.const 65535)
          )
          (i32.const -65536)
         )
         (i32.const 16)
        )
       )
       (i32.lt_s
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (memory.grow
       (local.get $1)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (global.set $~lib/rt/stub/offset
   (local.get $0)
  )
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (local.set $1
   (global.get $~lib/rt/stub/offset)
  )
  (call $~lib/rt/stub/maybeGrowMemory
   (i32.add
    (local.tee $2
     (i32.add
      (global.get $~lib/rt/stub/offset)
      (i32.const 4)
     )
    )
    (local.tee $0
     (call $~lib/rt/stub/computeSize
      (local.get $0)
     )
    )
   )
  )
  (i32.store
   (local.get $1)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (i32.store offset=4
   (local.tee $2
    (i32.sub
     (local.tee $3
      (call $~lib/rt/stub/__alloc
       (i32.add
        (local.get $0)
        (i32.const 16)
       )
      )
     )
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=8
   (local.get $2)
   (i32.const 0)
  )
  (i32.store offset=12
   (local.get $2)
   (local.get $1)
  )
  (i32.store offset=16
   (local.get $2)
   (local.get $0)
  )
  (i32.add
   (local.get $3)
   (i32.const 16)
  )
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $~lib/util/memory/memmove|inlined.0
   (local.set $4
    (local.get $2)
   )
   (br_if $~lib/util/memory/memmove|inlined.0
    (i32.eq
     (local.get $0)
     (local.get $1)
    )
   )
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $1)
    )
    (loop $while-continue|0
     (if
      (local.get $4)
      (block
       (local.set $0
        (i32.add
         (local.tee $2
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.set $1
        (i32.add
         (local.tee $3
          (local.get $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (local.get $2)
        (i32.load8_u
         (local.get $3)
        )
       )
       (local.set $4
        (i32.sub
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (loop $while-continue|1
     (if
      (local.get $4)
      (block
       (i32.store8
        (i32.add
         (local.tee $4
          (i32.sub
           (local.get $4)
           (i32.const 1)
          )
         )
         (local.get $0)
        )
        (i32.load8_u
         (i32.add
          (local.get $1)
          (local.get $4)
         )
        )
       )
       (br $while-continue|1)
      )
     )
    )
   )
  )
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 5)
    )
   )
  )
  (local.set $3
   (call $~lib/rt/stub/__new
    (local.get $0)
    (i32.const 0)
   )
  )
  (if
   (local.get $1)
   (call $~lib/memory/memory.copy
    (local.get $3)
    (local.get $1)
    (local.get $0)
   )
  )
  (i32.store
   (local.get $4)
   (local.get $3)
  )
  (i32.store offset=4
   (local.get $2)
   (local.get $3)
  )
  (i32.store offset=8
   (local.get $2)
   (local.get $0)
  )
  (i32.store offset=12
   (local.get $2)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $flipper/Flipper#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (i32.store
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 11)
    )
   )
   (i32.const 0)
  )
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 12)
    )
   )
   (i32.const 0)
  )
  (drop
   (i32.load
    (local.get $1)
   )
  )
  (i32.store
   (local.get $1)
   (i32.const 0)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (i32.store
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32)
  (local $2 i32)
  (loop $while-continue|0
   (if
    (local.get $1)
    (block
     (local.set $0
      (i32.add
       (local.tee $2
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (local.get $2)
      (i32.const 0)
     )
     (local.set $1
      (i32.sub
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 12)
        (i32.const 17)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 2)
      )
     )
    )
    (local.get $1)
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (local.get $1)
   (i32.const 0)
  )
  (i32.store offset=8
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $2
    (call $~lib/rt/stub/__new
     (local.get $0)
     (i32.const 0)
    )
   )
   (local.get $0)
  )
  (drop
   (i32.load
    (local.get $1)
   )
  )
  (i32.store
   (local.get $1)
   (local.get $2)
  )
  (i32.store offset=4
   (local.get $1)
   (local.get $2)
  )
  (i32.store offset=8
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $../../src/primitives/readbuffer/ReadBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (i32.store
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 16)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (local.get $2)
   (i32.const 0)
  )
  (local.set $1
   (call $~lib/typedarray/Uint8Array#constructor
    (local.get $0)
   )
  )
  (drop
   (i32.load
    (local.get $2)
   )
  )
  (i32.store
   (local.get $2)
   (local.get $1)
  )
  (local.set $1
   (i32.const 0)
  )
  (i32.store
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 18)
    )
   )
   (i32.const 0)
  )
  (local.set $4
   (call $~lib/typedarray/Uint8Array#constructor
    (i32.const 4)
   )
  )
  (drop
   (i32.load
    (local.get $3)
   )
  )
  (i32.store
   (local.get $3)
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.const 4)
    )
    (block
     (local.set $4
      (i32.and
       (i32.shr_u
        (local.get $0)
        (i32.shl
         (local.get $1)
         (i32.const 3)
        )
       )
       (i32.const 255)
      )
     )
     (if
      (i32.ge_u
       (local.get $1)
       (i32.load offset=8
        (local.tee $5
         (i32.load
          (local.get $3)
         )
        )
       )
      )
      (unreachable)
     )
     (i32.store8
      (i32.add
       (local.get $1)
       (i32.load offset=4
        (local.get $5)
       )
      )
      (local.get $4)
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $2)
   )
  )
  (i32.store offset=4
   (local.get $2)
   (local.get $3)
  )
  (local.get $2)
 )
 (func $../../src/primitives/readbuffer/ReadBuffer#get:valueBuffer (param $0 i32) (result i32)
  (i32.load
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $../../src/primitives/readbuffer/ReadBuffer#get:sizeBuffer (param $0 i32) (result i32)
  (call $../../src/primitives/readbuffer/ReadBuffer#get:valueBuffer
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i32.store
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 5)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (local.get $2)
   (i32.const 0)
  )
  (i32.store offset=8
   (local.get $2)
   (i32.const 0)
  )
  (i32.store offset=12
   (local.get $2)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $0
    (call $~lib/rt/stub/__new
     (local.tee $1
      (local.get $0)
     )
     (i32.const 0)
    )
   )
   (local.get $1)
  )
  (drop
   (i32.load
    (local.get $2)
   )
  )
  (i32.store
   (local.get $2)
   (local.get $0)
  )
  (i32.store offset=4
   (local.get $2)
   (local.get $0)
  )
  (i32.store offset=8
   (local.get $2)
   (local.get $1)
  )
  (i32.store offset=12
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $../../src/primitives/readbuffer/ReadBuffer#get:readSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $0
   (i32.const 3)
  )
  (loop $for-loop|0
   (if
    (i32.ge_s
     (local.get $0)
     (i32.const 0)
    )
    (block
     (if
      (i32.ge_u
       (local.get $0)
       (i32.load offset=8
        (local.tee $3
         (i32.load
          (local.get $2)
         )
        )
       )
      )
      (unreachable)
     )
     (local.set $1
      (i32.or
       (local.get $1)
       (i32.shl
        (i32.load8_u
         (i32.add
          (local.get $0)
          (i32.load offset=4
           (local.get $3)
          )
         )
        )
        (i32.shl
         (local.get $0)
         (i32.const 3)
        )
       )
      )
     )
     (local.set $0
      (i32.sub
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.get $1)
 )
 (func $../../src/utils/ArrayUtils/typedToArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/memory/memory.copy
   (i32.load
    (local.tee $2
     (call $~lib/array/Array<u8>#constructor
      (block (result i32)
       (if
        (i32.eq
         (local.get $1)
         (i32.const -1)
        )
        (local.set $1
         (i32.load offset=8
          (local.get $0)
         )
        )
       )
       (local.get $1)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
   (local.get $1)
  )
  (local.get $2)
 )
 (func $../../src/primitives/readbuffer/ReadBuffer#get:valueBytes (param $0 i32) (result i32)
  (call $../../src/utils/ArrayUtils/typedToArray
   (i32.load
    (local.get $0)
   )
   (call $../../src/primitives/readbuffer/ReadBuffer#get:readSize
    (local.get $0)
   )
  )
 )
 (func $~lib/array/Array<u8>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $3
     (call $~lib/rt/__newArray
      (local.tee $2
       (select
        (local.tee $2
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $2)
            (i32.const 0)
           )
           (select
            (local.tee $2
             (i32.add
              (local.get $2)
              (local.get $3)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $2)
             (i32.const 0)
            )
           )
           (select
            (local.get $2)
            (local.get $3)
            (i32.lt_s
             (local.get $2)
             (local.get $3)
            )
           )
          )
          (local.get $1)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
      )
      (i32.const 0)
     )
    )
   )
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
   (local.get $2)
  )
  (local.get $3)
 )
 (func $../../src/primitives/inputdata/MessageInputReader#get:fnParameters (param $0 i32) (result i32)
  (if
   (i32.eq
    (i32.load offset=12
     (call $../../src/primitives/readbuffer/ReadBuffer#get:valueBytes
      (i32.load
       (local.get $0)
      )
     )
    )
    (i32.const 4)
   )
   (return
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 1184)
    )
   )
  )
  (call $~lib/array/Array<u8>#slice
   (call $../../src/primitives/readbuffer/ReadBuffer#get:valueBytes
    (i32.load
     (local.get $0)
    )
   )
   (i32.const 4)
   (i32.const 2147483647)
  )
 )
 (func $../../src/buildins/Msg/Msg#init_sig_and_data (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (if (result i32)
    (i32.load offset=8
     (local.get $0)
    )
    (i32.eqz
     (i32.load offset=12
      (local.get $0)
     )
    )
    (i32.const 1)
   )
   (block
    (i32.store
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.const 4)
       (i32.const 15)
      )
     )
     (i32.const 0)
    )
    (local.set $2
     (call $../../src/primitives/readbuffer/ReadBuffer#constructor
      (i32.const 1024)
     )
    )
    (drop
     (i32.load
      (local.get $1)
     )
    )
    (i32.store
     (local.get $1)
     (local.get $2)
    )
    (call $../../src/seal/seal0/seal_input
     (call $../../src/primitives/readbuffer/ReadBuffer#get:valueBuffer
      (i32.load
       (local.get $1)
      )
     )
     (call $../../src/primitives/readbuffer/ReadBuffer#get:sizeBuffer
      (i32.load
       (local.get $1)
      )
     )
    )
    (if
     (i32.eqz
      (i32.load offset=8
       (local.get $0)
      )
     )
     (block
      (local.set $2
       (call $~lib/array/Array<u8>#constructor
        (i32.const 4)
       )
      )
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.store offset=8
       (local.get $0)
       (local.get $2)
      )
      (if
       (i32.eqz
        (local.tee $2
         (i32.load offset=8
          (local.get $0)
         )
        )
       )
       (unreachable)
      )
      (call $~lib/memory/memory.copy
       (i32.load
        (local.get $2)
       )
       (i32.load
        (call $~lib/array/Array<u8>#slice
         (call $../../src/primitives/readbuffer/ReadBuffer#get:valueBytes
          (i32.load
           (local.get $1)
          )
         )
         (i32.const 0)
         (i32.const 4)
        )
       )
       (i32.const 4)
      )
     )
    )
    (local.set $3
     (i32.load offset=12
      (call $../../src/primitives/inputdata/MessageInputReader#get:fnParameters
       (local.get $1)
      )
     )
    )
    (if
     (i32.eqz
      (i32.load offset=12
       (local.get $0)
      )
     )
     (if
      (i32.gt_s
       (local.get $3)
       (i32.const 0)
      )
      (block
       (local.set $2
        (call $~lib/array/Array<u8>#constructor
         (local.get $3)
        )
       )
       (drop
        (i32.load offset=12
         (local.get $0)
        )
       )
       (i32.store offset=12
        (local.get $0)
        (local.get $2)
       )
       (if
        (i32.eqz
         (local.tee $0
          (i32.load offset=12
           (local.get $0)
          )
         )
        )
        (unreachable)
       )
       (call $~lib/memory/memory.copy
        (i32.load
         (local.get $0)
        )
        (i32.load
         (call $../../src/primitives/inputdata/MessageInputReader#get:fnParameters
          (local.get $1)
         )
        )
        (local.get $3)
       )
      )
      (block
       (local.set $1
        (call $~lib/rt/__newArray
         (i32.const 0)
         (i32.const 1216)
        )
       )
       (drop
        (i32.load offset=12
         (local.get $0)
        )
       )
       (i32.store offset=12
        (local.get $0)
        (local.get $1)
       )
      )
     )
    )
   )
  )
 )
 (func $../../src/buildins/Msg/Msg#get:sig (param $0 i32) (result i32)
  (if
   (i32.eqz
    (i32.load offset=8
     (local.get $0)
    )
   )
   (call $../../src/buildins/Msg/Msg#init_sig_and_data
    (local.get $0)
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load offset=8
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.get $0)
 )
 (func $../../src/buildins/Msg/Msg#isSelector (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.ne
    (i32.load offset=12
     (call $../../src/buildins/Msg/Msg#get:sig
      (local.get $0)
     )
    )
    (i32.load offset=12
     (local.tee $2
      (local.get $1)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (local.set $1
   (i32.const 4)
  )
  (block $~lib/util/memory/memcmp|inlined.0
   (br_if $~lib/util/memory/memcmp|inlined.0
    (i32.eq
     (local.tee $3
      (i32.load
       (call $../../src/buildins/Msg/Msg#get:sig
        (local.get $0)
       )
      )
     )
     (local.tee $2
      (i32.load
       (local.get $2)
      )
     )
    )
   )
   (loop $while-continue|0
    (local.set $1
     (i32.sub
      (local.tee $0
       (local.get $1)
      )
      (i32.const 1)
     )
    )
    (if
     (local.get $0)
     (block
      (local.set $4
       (i32.sub
        (local.tee $0
         (i32.load8_u
          (local.get $3)
         )
        )
        (local.tee $5
         (i32.load8_u
          (local.get $2)
         )
        )
       )
      )
      (br_if $~lib/util/memory/memcmp|inlined.0
       (i32.ne
        (local.get $0)
        (local.get $5)
       )
      )
      (local.set $3
       (i32.add
        (local.get $3)
        (i32.const 1)
       )
      )
      (local.set $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (br $while-continue|0)
     )
    )
   )
   (local.set $4
    (i32.const 0)
   )
  )
  (i32.eqz
   (local.get $4)
  )
 )
 (func $~lib/as-scale-codec/Bool/Bool#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (i32.store8
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 1)
     (i32.const 13)
    )
   )
   (i32.const 0)
  )
  (i32.store8
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i32.load8_u
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
  )
 )
 (func $~lib/as-scale-codec/Bool/Bool#populateFromBytes (param $0 i32) (param $1 i32) (param $2 i32)
  (if
   (i32.eqz
    (if (result i32)
     (i32.gt_s
      (i32.load offset=12
       (local.get $1)
      )
      (i32.const 0)
     )
     (if (result i32)
      (i32.eq
       (call $~lib/array/Array<u8>#__get
        (local.get $1)
        (local.get $2)
       )
       (i32.const 1)
      )
      (i32.const 1)
      (i32.eqz
       (call $~lib/array/Array<u8>#__get
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (i32.store8
   (local.get $0)
   (i32.eq
    (call $~lib/array/Array<u8>#__get
     (local.get $1)
     (local.get $2)
    )
    (i32.const 1)
   )
  )
 )
 (func $../../src/storage/storage/Storage<~lib/as-scale-codec/Bool/Bool>#constructor (result i32)
  (local $0 i32)
  (i32.store
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 20)
    )
   )
   (i32.const 0)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (i32.store
   (local.get $0)
   (i32.const 1248)
  )
  (local.get $0)
 )
 (func $../../src/primitives/writebuffer/WriteBuffer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 21)
    )
   )
   (i32.const 0)
  )
  (local.set $3
   (i32.load offset=16
    (i32.sub
     (local.get $0)
     (i32.const 20)
    )
   )
  )
  (i32.store
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 17)
    )
   )
   (local.get $0)
  )
  (i32.store offset=8
   (local.get $2)
   (local.get $3)
  )
  (i32.store offset=4
   (local.get $2)
   (local.get $0)
  )
  (drop
   (i32.load
    (local.get $1)
   )
  )
  (i32.store
   (local.get $1)
   (local.get $2)
  )
  (local.get $1)
 )
 (func $~lib/array/ensureSize (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (local.tee $6
     (i32.load offset=8
      (local.get $0)
     )
    )
   )
   (block
    (if
     (i32.gt_u
      (local.get $1)
      (i32.const 1073741820)
     )
     (unreachable)
    )
    (local.set $2
     (local.tee $9
      (i32.load
       (local.get $0)
      )
     )
    )
    (if
     (i32.gt_u
      (local.tee $3
       (local.get $1)
      )
      (i32.const 1073741804)
     )
     (unreachable)
    )
    (local.set $4
     (i32.add
      (local.get $3)
      (i32.const 16)
     )
    )
    (if
     (i32.eqz
      (select
       (i32.eqz
        (i32.and
         (local.tee $1
          (i32.sub
           (local.get $2)
           (i32.const 16)
          )
         )
         (i32.const 15)
        )
       )
       (i32.const 0)
       (local.get $1)
      )
     )
     (unreachable)
    )
    (local.set $8
     (i32.eq
      (global.get $~lib/rt/stub/offset)
      (i32.add
       (local.get $1)
       (local.tee $5
        (i32.load
         (local.tee $7
          (i32.sub
           (local.get $1)
           (i32.const 4)
          )
         )
        )
       )
      )
     )
    )
    (local.set $2
     (call $~lib/rt/stub/computeSize
      (local.get $4)
     )
    )
    (if
     (i32.gt_u
      (local.get $4)
      (local.get $5)
     )
     (if
      (local.get $8)
      (block
       (if
        (i32.gt_u
         (local.get $4)
         (i32.const 1073741820)
        )
        (unreachable)
       )
       (call $~lib/rt/stub/maybeGrowMemory
        (i32.add
         (local.get $1)
         (local.get $2)
        )
       )
       (i32.store
        (local.get $7)
        (local.get $2)
       )
      )
      (block
       (call $~lib/memory/memory.copy
        (local.tee $2
         (call $~lib/rt/stub/__alloc
          (select
           (local.get $2)
           (local.tee $4
            (i32.shl
             (local.get $5)
             (i32.const 1)
            )
           )
           (i32.gt_u
            (local.get $2)
            (local.get $4)
           )
          )
         )
        )
        (local.get $1)
        (local.get $5)
       )
       (local.set $1
        (local.get $2)
       )
      )
     )
     (if
      (local.get $8)
      (block
       (global.set $~lib/rt/stub/offset
        (i32.add
         (local.get $1)
         (local.get $2)
        )
       )
       (i32.store
        (local.get $7)
        (local.get $2)
       )
      )
     )
    )
    (i32.store offset=16
     (i32.sub
      (local.get $1)
      (i32.const 4)
     )
     (local.get $3)
    )
    (call $~lib/memory/memory.fill
     (i32.add
      (local.get $6)
      (local.tee $1
       (i32.add
        (local.get $1)
        (i32.const 16)
       )
      )
     )
     (i32.sub
      (local.get $3)
      (local.get $6)
     )
    )
    (if
     (i32.ne
      (local.get $1)
      (local.get $9)
     )
     (block
      (i32.store
       (local.get $0)
       (local.get $1)
      )
      (i32.store offset=4
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (i32.store offset=8
     (local.get $0)
     (local.get $3)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (if
     (i32.lt_s
      (local.get $1)
      (i32.const 0)
     )
     (unreachable)
    )
    (call $~lib/array/ensureSize
     (local.get $0)
     (local.tee $3
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
    )
    (i32.store offset=12
     (local.get $0)
     (local.get $3)
    )
   )
  )
  (i32.store8
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $2)
  )
 )
 (func $~lib/as-scale-codec/Bool/Bool#toU8a (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/array/Array<u8>#__set
   (local.tee $1
    (call $~lib/array/Array<u8>#constructor
     (i32.const 1)
    )
   )
   (i32.const 0)
   (i32.eqz
    (i32.eqz
     (i32.load8_u
      (local.get $0)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $3
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (local.set $1
   (local.get $2)
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $3)
    )
    (block
     (local.set $1
      (if (result i32)
       (i32.lt_u
        (local.tee $2
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (i32.store8
         (local.get $1)
         (local.get $2)
        )
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $2)
         (i32.const 2048)
        )
        (block (result i32)
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 6)
            )
            (i32.const 192)
           )
           (i32.shl
            (i32.or
             (i32.and
              (local.get $2)
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 2)
         )
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $3)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $2)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (local.tee $4
              (i32.load16_u offset=2
               (local.get $0)
              )
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (i32.store
             (local.get $1)
             (i32.or
              (i32.or
               (i32.or
                (i32.shl
                 (i32.or
                  (i32.and
                   (local.tee $2
                    (i32.or
                     (i32.add
                      (i32.shl
                       (i32.and
                        (local.get $2)
                        (i32.const 1023)
                       )
                       (i32.const 10)
                      )
                      (i32.const 65536)
                     )
                     (i32.and
                      (local.get $4)
                      (i32.const 1023)
                     )
                    )
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 24)
                )
                (i32.shl
                 (i32.or
                  (i32.and
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 6)
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 16)
                )
               )
               (i32.shl
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 12)
                  )
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
                (i32.const 8)
               )
              )
              (i32.or
               (i32.shr_u
                (local.get $2)
                (i32.const 18)
               )
               (i32.const 240)
              )
             )
            )
            (local.set $1
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 12)
            )
            (i32.const 224)
           )
           (i32.shl
            (i32.or
             (i32.and
              (i32.shr_u
               (local.get $2)
               (i32.const 6)
              )
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.store8 offset=2
          (local.get $1)
          (i32.or
           (i32.and
            (local.get $2)
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $3
   (i32.add
    (local.tee $1
     (local.get $0)
    )
    (i32.load offset=16
     (i32.sub
      (local.get $1)
      (i32.const 20)
     )
    )
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $1)
     (local.get $3)
    )
    (block
     (local.set $2
      (if (result i32)
       (i32.lt_u
        (local.tee $4
         (i32.load16_u
          (local.get $1)
         )
        )
        (i32.const 128)
       )
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
       (if (result i32)
        (i32.lt_u
         (local.get $4)
         (i32.const 2048)
        )
        (i32.add
         (local.get $2)
         (i32.const 2)
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $3)
            (i32.add
             (local.get $1)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $4)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (i32.load16_u offset=2
              (local.get $1)
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (local.set $2
             (i32.add
              (local.get $2)
              (i32.const 4)
             )
            )
            (local.set $1
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.add
          (local.get $2)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (local.set $2
   (call $~lib/rt/stub/__new
    (local.get $2)
    (i32.const 0)
   )
  )
  (call $~lib/string/String.UTF8.encodeUnsafe
   (local.get $0)
   (i32.shr_u
    (i32.load offset=16
     (i32.sub
      (local.get $0)
      (i32.const 20)
     )
    )
    (i32.const 1)
   )
   (local.get $2)
  )
  (local.get $2)
 )
 (func $../../src/primitives/writebuffer/WriteBuffer#get:size (param $0 i32) (result i32)
  (i32.load offset=8
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-scale-codec/utils/Bytes/Bytes.copy<u8> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (local.get $1)
     )
    )
    (if
     (i32.lt_s
      (local.get $3)
      (i32.load offset=12
       (local.get $0)
      )
     )
     (block
      (call $~lib/array/Array<u8>#__set
       (local.get $1)
       (i32.add
        (local.get $2)
        (local.get $3)
       )
       (call $~lib/array/Array<u8>#__get
        (local.get $0)
        (local.get $3)
       )
      )
      (local.set $3
       (i32.add
        (local.get $3)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
  )
 )
 (func $../../src/storage/storage/Storage<~lib/as-scale-codec/Bool/Bool>#hashKey (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $0
   (call $../../src/primitives/writebuffer/WriteBuffer#constructor
    (call $~lib/string/String.UTF8.encode
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $1
   (call $~lib/typedarray/Uint8Array#constructor
    (i32.const 32)
   )
  )
  (call_indirect (type $i32_i32_i32_=>_none)
   (call $../../src/primitives/readbuffer/ReadBuffer#get:valueBuffer
    (local.get $0)
   )
   (call $../../src/primitives/writebuffer/WriteBuffer#get:size
    (local.get $0)
   )
   (i32.load
    (local.get $1)
   )
   (i32.load
    (i32.const 1296)
   )
  )
  (local.set $0
   (call $../../src/utils/ArrayUtils/typedToArray
    (local.get $1)
    (i32.const -1)
   )
  )
  (local.set $2
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 1328)
   )
  )
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 22)
    )
   )
   (i32.const 0)
  )
  (local.set $3
   (call $~lib/array/Array<u8>#constructor
    (i32.const 32)
   )
  )
  (drop
   (i32.load
    (local.get $1)
   )
  )
  (i32.store
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/as-scale-codec/utils/Bytes/Bytes.copy<u8>
   (local.get $2)
   (i32.load
    (local.get $1)
   )
   (i32.const 0)
  )
  (call $~lib/as-scale-codec/utils/Bytes/Bytes.copy<u8>
   (block (result i32)
    (if
     (i32.gt_s
      (i32.load offset=12
       (local.get $0)
      )
      (i32.const 32)
     )
     (local.set $0
      (call $~lib/array/Array<u8>#slice
       (local.get $0)
       (i32.sub
        (i32.load offset=12
         (local.get $0)
        )
        (i32.const 32)
       )
       (i32.const 2147483647)
      )
     )
    )
    (local.get $0)
   )
   (i32.load
    (local.get $1)
   )
   (i32.sub
    (i32.const 32)
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (local.set $0
   (call $~lib/array/Array<u8>#constructor
    (i32.const 32)
   )
  )
  (call $~lib/as-scale-codec/utils/Bytes/Bytes.copy<u8>
   (i32.load
    (local.get $1)
   )
   (local.get $0)
   (i32.const 0)
  )
  (i32.load
   (local.get $0)
  )
 )
 (func $flipper/Stored#set:flag (param $0 i32) (param $1 i32)
  (local.set $1
   (call $~lib/as-scale-codec/Bool/Bool#constructor
    (local.get $1)
   )
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (i32.store
   (local.get $0)
   (local.get $1)
  )
  (local.set $1
   (call $../../src/storage/storage/Storage<~lib/as-scale-codec/Bool/Bool>#constructor)
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $0
   (call $../../src/primitives/writebuffer/WriteBuffer#constructor
    (i32.load
     (call $~lib/as-scale-codec/Bool/Bool#toU8a
      (local.get $0)
     )
    )
   )
  )
  (call $../../src/seal/seal0/seal_set_storage
   (call $../../src/storage/storage/Storage<~lib/as-scale-codec/Bool/Bool>#hashKey
    (local.get $1)
   )
   (call $../../src/primitives/readbuffer/ReadBuffer#get:valueBuffer
    (local.get $0)
   )
   (call $../../src/primitives/writebuffer/WriteBuffer#get:size
    (local.get $0)
   )
  )
 )
 (func $flipper/Flipper#onDeploy (param $0 i32) (param $1 i32)
  (call $flipper/Stored#set:flag
   (i32.load
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $flipper/deploy (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $0
   (call $~lib/rt/__newArray
    (i32.const 4)
    (i32.const 1056)
   )
  )
  (local.set $1
   (call $~lib/rt/__newArray
    (i32.const 4)
    (i32.const 1088)
   )
  )
  (local.set $2
   (call $flipper/Flipper#constructor)
  )
  (if
   (call $../../src/buildins/Msg/Msg#isSelector
    (global.get $flipper/msg)
    (local.get $0)
   )
   (block
    (if
     (i32.eqz
      (i32.load offset=12
       (local.tee $0
        (global.get $flipper/msg)
       )
      )
     )
     (call $../../src/buildins/Msg/Msg#init_sig_and_data
      (local.get $0)
     )
    )
    (if
     (i32.eqz
      (local.tee $1
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
     (unreachable)
    )
    (i32.store
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 19)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (local.get $0)
     (i32.const 0)
    )
    (drop
     (i32.load offset=4
      (local.get $0)
     )
    )
    (i32.store offset=4
     (local.get $0)
     (local.get $1)
    )
    (i32.store
     (local.get $0)
     (i32.const 0)
    )
    (call $~lib/as-scale-codec/Bool/Bool#populateFromBytes
     (local.tee $1
      (call $~lib/as-scale-codec/Bool/Bool#constructor
       (i32.const 0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
     (i32.load
      (local.get $0)
     )
    )
    (i32.store
     (local.get $0)
     (i32.add
      (i32.load
       (local.get $0)
      )
      (i32.const 1)
     )
    )
    (call $flipper/Flipper#onDeploy
     (local.get $2)
     (i32.load8_u
      (local.get $1)
     )
    )
   )
   (if
    (call $../../src/buildins/Msg/Msg#isSelector
     (global.get $flipper/msg)
     (local.get $1)
    )
    (call $flipper/Flipper#onDeploy
     (local.get $2)
     (i32.const 0)
    )
   )
  )
  (i32.const 0)
 )
 (func $flipper/Stored#get:flag (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (i32.load
     (local.get $0)
    )
   )
   (block
    (local.set $3
     (call $../../src/storage/storage/Storage<~lib/as-scale-codec/Bool/Bool>#constructor)
    )
    (local.set $2
     (call $~lib/as-scale-codec/Bool/Bool#constructor
      (i32.const 0)
     )
    )
    (local.set $1
     (call $../../src/primitives/readbuffer/ReadBuffer#constructor
      (i32.const 1)
     )
    )
    (if
     (if (result i32)
      (call $../../src/seal/seal0/seal_get_storage
       (call $../../src/storage/storage/Storage<~lib/as-scale-codec/Bool/Bool>#hashKey
        (local.get $3)
       )
       (call $../../src/primitives/readbuffer/ReadBuffer#get:valueBuffer
        (local.get $1)
       )
       (call $../../src/primitives/readbuffer/ReadBuffer#get:sizeBuffer
        (local.get $1)
       )
      )
      (i32.const 0)
      (i32.eq
       (call $../../src/primitives/readbuffer/ReadBuffer#get:readSize
        (local.get $1)
       )
       (i32.const 1)
      )
     )
     (call $~lib/as-scale-codec/Bool/Bool#populateFromBytes
      (local.get $2)
      (call $../../src/primitives/readbuffer/ReadBuffer#get:valueBytes
       (local.get $1)
      )
      (i32.const 0)
     )
    )
    (drop
     (i32.load
      (local.get $0)
     )
    )
    (i32.store
     (local.get $0)
     (local.get $2)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (i32.load8_u
   (local.get $0)
  )
 )
 (func $~lib/as-bignum/integer/u128/u128#constructor (param $0 i64) (param $1 i64) (result i32)
  (local $2 i32)
  (i64.store
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 7)
    )
   )
   (local.get $0)
  )
  (i64.store offset=8
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-scale-codec/UInt/UInt128/UInt128._computeBitLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local.set $1
   (local.get $0)
  )
  (local.set $0
   (call $~lib/as-bignum/integer/u128/u128#constructor
    (i64.const 64)
    (i64.const 0)
   )
  )
  (if (result i32)
   (if (result i32)
    (i64.eq
     (local.tee $3
      (i64.load offset=8
       (local.get $1)
      )
     )
     (local.tee $4
      (i64.load offset=8
       (local.get $0)
      )
     )
    )
    (i64.lt_u
     (i64.load
      (local.get $1)
     )
     (i64.load
      (local.get $0)
     )
    )
    (i64.lt_u
     (local.get $3)
     (local.get $4)
    )
   )
   (i32.const 1)
   (block (result i32)
    (local.set $2
     (local.tee $0
      (call $~lib/as-bignum/integer/u128/u128#constructor
       (i64.const 16384)
       (i64.const 0)
      )
     )
    )
    (if (result i32)
     (if (result i32)
      (i64.eq
       (local.tee $3
        (i64.load offset=8
         (local.get $1)
        )
       )
       (local.tee $4
        (i64.load offset=8
         (local.get $0)
        )
       )
      )
      (i64.lt_u
       (i64.load
        (local.get $1)
       )
       (i64.load
        (local.get $2)
       )
      )
      (i64.lt_u
       (local.get $3)
       (local.get $4)
      )
     )
     (i32.const 2)
     (block (result i32)
      (local.set $2
       (local.tee $0
        (call $~lib/as-bignum/integer/u128/u128#constructor
         (i64.const 1073741824)
         (i64.const 0)
        )
       )
      )
      (if (result i32)
       (if (result i32)
        (i64.eq
         (local.tee $3
          (i64.load offset=8
           (local.get $1)
          )
         )
         (local.tee $4
          (i64.load offset=8
           (local.get $0)
          )
         )
        )
        (i64.lt_u
         (i64.load
          (local.get $1)
         )
         (i64.load
          (local.get $2)
         )
        )
        (i64.lt_u
         (local.get $3)
         (local.get $4)
        )
       )
       (i32.const 4)
       (block (result i32)
        (i64.store
         (local.tee $2
          (i32.load offset=4
           (local.tee $0
            (call $~lib/array/Array<u8>#constructor
             (i32.const 16)
            )
           )
          )
         )
         (i64.load
          (local.get $1)
         )
        )
        (i64.store offset=8
         (local.get $2)
         (i64.load offset=8
          (local.get $1)
         )
        )
        (local.set $1
         (i32.sub
          (i32.load offset=12
           (local.get $0)
          )
          (i32.const 1)
         )
        )
        (loop $for-loop|0
         (if
          (i32.gt_s
           (local.get $1)
           (i32.const 0)
          )
          (if
           (i32.eqz
            (call $~lib/array/Array<u8>#__get
             (local.get $0)
             (local.get $1)
            )
           )
           (block
            (if
             (i32.lt_s
              (local.tee $2
               (i32.load offset=12
                (local.get $0)
               )
              )
              (i32.const 1)
             )
             (unreachable)
            )
            (drop
             (i32.load8_u
              (i32.add
               (local.tee $2
                (i32.sub
                 (local.get $2)
                 (i32.const 1)
                )
               )
               (i32.load offset=4
                (local.get $0)
               )
              )
             )
            )
            (i32.store offset=12
             (local.get $0)
             (local.get $2)
            )
            (local.set $1
             (i32.sub
              (local.get $1)
              (i32.const 1)
             )
            )
            (br $for-loop|0)
           )
          )
         )
        )
        (i32.add
         (i32.load offset=12
          (local.get $0)
         )
         (i32.const 1)
        )
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/as-scale-codec/interfaces/DecodedData/DecodedData<u64>#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (i64.store
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 27)
    )
   )
   (local.get $0)
  )
  (i32.store offset=8
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-scale-codec/utils/Bytes/Bytes.decodeSmallInt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (select
     (i32.const 1)
     (i32.eq
      (local.tee $2
       (i32.and
        (local.get $1)
        (i32.const 255)
       )
      )
      (i32.const 2)
     )
     (select
      (i32.eq
       (local.get $2)
       (i32.const 1)
      )
      (i32.const 1)
      (local.get $2)
     )
    )
   )
   (unreachable)
  )
  (if (result i32)
   (i32.and
    (local.get $1)
    (i32.const 255)
   )
   (if (result i32)
    (i32.eq
     (i32.and
      (local.get $1)
      (i32.const 255)
     )
     (i32.const 1)
    )
    (block (result i32)
     (if
      (i32.lt_s
       (i32.load offset=12
        (local.get $0)
       )
       (i32.const 2)
      )
      (unreachable)
     )
     (i32.store8
      (local.tee $2
       (i32.load offset=4
        (local.tee $1
         (call $~lib/rt/__newArray
          (i32.const 2)
          (i32.const 0)
         )
        )
       )
      )
      (call $~lib/array/Array<u8>#__get
       (local.get $0)
       (i32.const 0)
      )
     )
     (i32.store8 offset=1
      (local.get $2)
      (call $~lib/array/Array<u8>#__get
       (local.get $0)
       (i32.const 1)
      )
     )
     (call $~lib/as-scale-codec/utils/Bytes/Bytes.copy<u8>
      (local.get $1)
      (local.tee $2
       (call $~lib/array/Array<u8>#constructor
        (i32.const 2)
       )
      )
      (i32.const 0)
     )
     (local.set $1
      (call $~lib/array/Array<u8>#__get
       (local.get $2)
       (i32.const 0)
      )
     )
     (local.set $0
      (i32.const 1)
     )
     (loop $for-loop|1
      (if
       (i32.lt_s
        (local.get $0)
        (i32.const 2)
       )
       (block
        (local.set $1
         (i32.or
          (local.get $1)
          (i32.shl
           (call $~lib/array/Array<u8>#__get
            (local.get $2)
            (local.get $0)
           )
           (i32.and
            (i32.shl
             (i32.and
              (local.get $0)
              (i32.const 255)
             )
             (i32.const 3)
            )
            (i32.const 15)
           )
          )
         )
        )
        (local.set $0
         (i32.add
          (local.get $0)
          (i32.const 1)
         )
        )
        (br $for-loop|1)
       )
      )
     )
     (call $~lib/as-scale-codec/interfaces/DecodedData/DecodedData<u64>#constructor
      (i64.extend_i32_u
       (i32.shr_u
        (i32.and
         (local.get $1)
         (i32.const 65535)
        )
        (i32.const 2)
       )
      )
      (i32.const 2)
     )
    )
    (block (result i32)
     (if
      (i32.lt_s
       (i32.load offset=12
        (local.get $0)
       )
       (i32.const 4)
      )
      (unreachable)
     )
     (i32.store8
      (local.tee $1
       (i32.load offset=4
        (local.tee $2
         (call $~lib/rt/__newArray
          (i32.const 4)
          (i32.const 0)
         )
        )
       )
      )
      (call $~lib/array/Array<u8>#__get
       (local.get $0)
       (i32.const 0)
      )
     )
     (i32.store8 offset=1
      (local.get $1)
      (call $~lib/array/Array<u8>#__get
       (local.get $0)
       (i32.const 1)
      )
     )
     (i32.store8 offset=2
      (local.get $1)
      (call $~lib/array/Array<u8>#__get
       (local.get $0)
       (i32.const 2)
      )
     )
     (i32.store8 offset=3
      (local.get $1)
      (call $~lib/array/Array<u8>#__get
       (local.get $0)
       (i32.const 3)
      )
     )
     (call $~lib/as-scale-codec/utils/Bytes/Bytes.copy<u8>
      (local.get $2)
      (local.tee $2
       (call $~lib/array/Array<u8>#constructor
        (i32.const 4)
       )
      )
      (i32.const 0)
     )
     (local.set $1
      (call $~lib/array/Array<u8>#__get
       (local.get $2)
       (i32.const 0)
      )
     )
     (local.set $0
      (i32.const 1)
     )
     (loop $for-loop|0
      (if
       (i32.lt_s
        (local.get $0)
        (i32.const 4)
       )
       (block
        (local.set $1
         (i32.or
          (local.get $1)
          (i32.shl
           (call $~lib/array/Array<u8>#__get
            (local.get $2)
            (local.get $0)
           )
           (i32.shl
            (i32.and
             (local.get $0)
             (i32.const 255)
            )
            (i32.const 3)
           )
          )
         )
        )
        (local.set $0
         (i32.add
          (local.get $0)
          (i32.const 1)
         )
        )
        (br $for-loop|0)
       )
      )
     )
     (call $~lib/as-scale-codec/interfaces/DecodedData/DecodedData<u64>#constructor
      (i64.extend_i32_u
       (i32.shr_u
        (local.get $1)
        (i32.const 2)
       )
      )
      (i32.const 4)
     )
    )
   )
   (call $~lib/as-scale-codec/interfaces/DecodedData/DecodedData<u64>#constructor
    (i64.extend_i32_u
     (i32.shr_u
      (i32.and
       (call $~lib/array/Array<u8>#__get
        (local.get $0)
        (i32.const 0)
       )
       (i32.const 255)
      )
      (i32.const 2)
     )
    )
    (i32.const 1)
   )
  )
 )
 (func $~lib/as-scale-codec/UInt/UInt128/UInt128._computeValue (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.le_u
    (local.tee $1
     (i32.and
      (call $~lib/array/Array<u8>#__get
       (local.get $0)
       (i32.const 0)
      )
      (i32.const 3)
     )
    )
    (i32.const 2)
   )
   (return
    (call $~lib/as-bignum/integer/u128/u128#constructor
     (i64.load
      (call $~lib/as-scale-codec/utils/Bytes/Bytes.decodeSmallInt
       (local.get $0)
       (local.get $1)
      )
     )
     (i64.const 0)
    )
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (if
   (i32.gt_s
    (i32.load offset=12
     (local.tee $0
      (local.tee $2
       (call $~lib/array/Array<u8>#slice
        (local.get $0)
        (i32.const 1)
        (i32.add
         (i32.and
          (i32.add
           (i32.shr_u
            (call $~lib/array/Array<u8>#__get
             (local.get $0)
             (i32.const 0)
            )
            (i32.const 2)
           )
           (i32.const 4)
          )
          (i32.const 255)
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (i32.const 16)
   )
   (unreachable)
  )
  (local.set $3
   (i32.sub
    (i32.const 16)
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (local.get $3)
    )
    (block
     (call $~lib/array/ensureSize
      (local.get $0)
      (local.tee $5
       (i32.add
        (local.tee $4
         (i32.load offset=12
          (local.get $0)
         )
        )
        (i32.const 1)
       )
      )
     )
     (i32.store8
      (i32.add
       (local.get $4)
       (i32.load offset=4
        (local.get $0)
       )
      )
      (i32.const 0)
     )
     (i32.store offset=12
      (local.get $0)
      (local.get $5)
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i32.eqz
    (if (result i32)
     (i32.load offset=12
      (local.get $2)
     )
     (i32.eqz
      (i32.and
       (i32.load offset=12
        (local.get $2)
       )
       (i32.const 15)
      )
     )
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (call $~lib/as-bignum/integer/u128/u128#constructor
   (i64.load
    (local.tee $0
     (i32.load offset=4
      (local.get $2)
     )
    )
   )
   (i64.load offset=8
    (local.get $0)
   )
  )
 )
 (func $../../src/buildins/Msg/Msg#notPayable (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.load offset=4
     (local.get $0)
    )
   )
   (block
    (local.set $2
     (call $~lib/as-bignum/integer/u128/u128#constructor
      (i64.const 0)
      (i64.const 0)
     )
    )
    (i32.store
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 6)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (local.get $1)
     (i32.const 0)
    )
    (drop
     (i32.load
      (local.get $1)
     )
    )
    (i32.store
     (local.get $1)
     (local.get $2)
    )
    (i32.store offset=4
     (local.get $1)
     (call $~lib/as-scale-codec/UInt/UInt128/UInt128._computeBitLength
      (local.get $2)
     )
    )
    (call_indirect (type $i32_i32_=>_none)
     (call $../../src/primitives/readbuffer/ReadBuffer#get:valueBuffer
      (local.tee $2
       (call $../../src/primitives/readbuffer/ReadBuffer#constructor
        (i32.load offset=4
         (local.get $1)
        )
       )
      )
     )
     (call $../../src/primitives/readbuffer/ReadBuffer#get:sizeBuffer
      (local.get $2)
     )
     (i32.load
      (i32.const 1568)
     )
    )
    (if
     (i32.le_s
      (i32.load offset=12
       (local.tee $2
        (call $../../src/primitives/readbuffer/ReadBuffer#get:valueBytes
         (local.get $2)
        )
       )
      )
      (i32.const 0)
     )
     (unreachable)
    )
    (drop
     (i32.ne
      (local.tee $2
       (call $~lib/as-scale-codec/UInt/UInt128/UInt128._computeValue
        (local.get $2)
       )
      )
      (i32.load
       (local.get $1)
      )
     )
    )
    (i32.store
     (local.get $1)
     (local.get $2)
    )
    (i32.store offset=4
     (local.get $1)
     (call $~lib/as-scale-codec/UInt/UInt128/UInt128._computeBitLength
      (i32.load
       (local.get $1)
      )
     )
    )
    (drop
     (i32.load offset=4
      (local.get $0)
     )
    )
    (i32.store offset=4
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (i64.eqz
   (i64.load
    (i32.load
     (local.get $0)
    )
   )
  )
 )
 (func $flipper/call (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $1
   (call $flipper/Flipper#constructor)
  )
  (local.set $0
   (call $~lib/rt/__newArray
    (i32.const 4)
    (i32.const 1360)
   )
  )
  (local.set $2
   (call $~lib/rt/__newArray
    (i32.const 4)
    (i32.const 1392)
   )
  )
  (local.set $3
   (call $~lib/rt/__newArray
    (i32.const 4)
    (i32.const 1424)
   )
  )
  (local.set $4
   (call $~lib/rt/__newArray
    (i32.const 4)
    (i32.const 1456)
   )
  )
  (if
   (call $../../src/buildins/Msg/Msg#isSelector
    (global.get $flipper/msg)
    (local.get $0)
   )
   (block
    (i32.store
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 9)
       (i32.const 25)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (local.get $0)
     (i32.const 0)
    )
    (i32.store8 offset=8
     (local.get $0)
     (i32.const 0)
    )
    (i32.store
     (local.get $0)
     (i32.const 1488)
    )
    (i32.store offset=4
     (local.get $0)
     (i32.const 1520)
    )
    (i32.store8 offset=8
     (local.get $0)
     (i32.const 250)
    )
    (local.set $0
     (call $flipper/Stored#get:flag
      (i32.load
       (local.get $1)
      )
     )
    )
    (call $flipper/Stored#set:flag
     (i32.load
      (local.get $1)
     )
     (i32.eqz
      (local.get $0)
     )
    )
   )
   (if
    (call $../../src/buildins/Msg/Msg#isSelector
     (global.get $flipper/msg)
     (local.get $2)
    )
    (call $../../src/seal/seal0/seal_return
     (i32.const 0)
     (call $../../src/primitives/readbuffer/ReadBuffer#get:valueBuffer
      (local.tee $0
       (call $../../src/primitives/writebuffer/WriteBuffer#constructor
        (i32.load
         (call $~lib/as-scale-codec/Bool/Bool#toU8a
          (call $~lib/as-scale-codec/Bool/Bool#constructor
           (call $flipper/Stored#get:flag
            (i32.load
             (local.get $1)
            )
           )
          )
         )
        )
       )
      )
     )
     (call $../../src/primitives/writebuffer/WriteBuffer#get:size
      (local.get $0)
     )
    )
    (if
     (i32.eqz
      (call $../../src/buildins/Msg/Msg#isSelector
       (global.get $flipper/msg)
       (local.get $4)
      )
     )
     (if
      (call $../../src/buildins/Msg/Msg#isSelector
       (global.get $flipper/msg)
       (local.get $3)
      )
      (if
       (i32.eqz
        (call $../../src/buildins/Msg/Msg#notPayable
         (global.get $flipper/msg)
        )
       )
       (unreachable)
      )
      (drop
       (call $../../src/buildins/Msg/Msg#notPayable
        (global.get $flipper/msg)
       )
      )
     )
    )
   )
  )
  (i32.const 0)
 )
 (func $~start
  (local $0 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 1580)
  )
  (drop
   (call $~lib/rt/stub/__new
    (i32.const 0)
    (i32.const 3)
   )
  )
  (i32.store
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=8
   (local.get $0)
   (i32.const 0)
  )
  (i32.store offset=12
   (local.get $0)
   (i32.const 0)
  )
  (global.set $flipper/msg
   (local.get $0)
  )
 )
)
