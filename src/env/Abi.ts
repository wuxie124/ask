/**
 * All Rights Reserved by Patract Labs.
 * @author liangqin.fan@gmail.com
 */

import { Codec } from "as-scale-codec";
import { blake256 } from "../primitives/hash";

export class Abi {
  private data: Array<u8> = new Array<u8>();

  encode(sig: string, args: Codec[]): u8[] {
    this.fnSelctor(sig);
    for (let i = 0; i < args.length; i++) {
      this.data.concat(args[i].toU8a());
    }
    return this.data;
  }

  private fnSelctor(sig: string): void {
    let selector: u8[] = blake256(sig).toU8a().slice(4);
    this.data.concat(selector);

  }
}