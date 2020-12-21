/**
 * All Rights Reserved by Patract Labs.
 * @author liangqin.fan@gmail.com
 */

import { seal_clear_storage, seal_get_storage, seal_set_storage } from "../seal/seal0";
import { ReturnCode } from "../primitives/alias";

import { Codec } from 'as-scale-codec';
import { ReadBuffer } from "../primitives/readbuffer";
import { WriteBuffer } from "../primitives/writebuffer";
import { sha256 } from "../primitives/hash";

export class Storage<T extends Codec> {
  private key: string;

  constructor(_key: string) {
    this.key = _key;
  }

  store(value: T): ReturnCode {
    const buf = new WriteBuffer(value.toU8a().buffer);
    seal_set_storage(
      this.hashKey(),
      buf.buffer,
      buf.size
    );
    return ReturnCode.Success;
  }

  load(): T {
    const value = instantiate<T>();
    const len = value.encodedLength();

    const readBuf = new ReadBuffer(len);
    const status = seal_get_storage(
      this.hashKey(),
      readBuf.valueBuffer,
      readBuf.sizeBuffer
    );

    assert(status == ReturnCode.Success && readBuf.readSize == len, "get storage failed.");

    value.populateFromBytes(readBuf.valueBytes, 0);
    return value;
  }

  clear(): void {
    seal_clear_storage(this.hashKey());
  }

  private hashKey(): ArrayBuffer {
    const hash = sha256(this.key);
    return hash.toU8a().buffer;
  }
}