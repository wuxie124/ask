/**
 * All Rights Reserved by Patract Labs.
 * @author liangqin.fan@gmail.com
 */

import { UInt32, UInt64 } from "as-scale-codec";
import { ReturnCode } from "../primitives/alias";
import { ReadBuffer } from "../primitives/readbuffer";
import { WriteBuffer } from "../primitives/writebuffer";
import { seal_call } from "../seal/seal0";


export class Callable {
  private _callee: u8[] | null = null;
  private _gas: UInt64 | null = null;
  private _value: UInt32 | null = null;
  private _data: u8[] | null = null;

  constructor(callee: u8[]) {
    this._callee = callee;
  }

  gas(g: u64): Callable {
    this._gas = new UInt64(g);
    return this;
  }

  value(v: u32): Callable {
    this._value = new UInt32(v);
    return this;
  }

  data(d: u8[]): Callable {
    this._data = d;
    return this;
  }

  call(): ReturnCode {
    assert(this._callee != null, "callee not set");
    assert(this._gas != null, "gas not set");

    const callee = new WriteBuffer(this._callee!.buffer);
    let value: WriteBuffer | null = null;
    if (this._value == null) {
      value = new WriteBuffer([0].buffer);
    } else {
      value = new WriteBuffer(this._value!.toU8a().buffer);
    }

    const data = new WriteBuffer(this._data!.buffer);
    let output = new ReadBuffer();
    const ret = seal_call(
      callee.buffer, callee.size,
      this._gas!.unwrap(),
      value.buffer, value.size,
      data.buffer, data.size,
      output.valueBuffer, output.sizeBuffer
    );

    return ret;
  }
}