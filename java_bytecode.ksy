meta:
  id: java_bytecode
  endian: be
  title: Java Virtual Machine bytecode
seq:
  - id: instructions
    type: inst
    repeat: eos
types:
  inst:
    seq:
      - id: opcode
        type: u1
        enum: opcodes
      - id: arg
        type:
          switch-on: opcode
          cases:
            'opcodes::ldc': arg_ldc
            'opcodes::getstatic': arg_index2
            'opcodes::invokevirtual': arg_index2
            'opcodes::invokespecial': arg_index2
            'opcodes::new': arg_index2
    types:
      arg_ldc:
        seq:
          - id: index
            type: u1
      arg_index2:
        seq:
          - id: index
            type: u2
enums:
  opcodes:
    0x12: ldc
    0x2a: aload_0
    0x2b: aload_1
    0x2c: aload_2
    0x2d: aload_3
    0x4b: astore_0
    0x4c: astore_1
    0x4d: astore_2
    0x4e: astore_3
    0x59: dup
    0x5a: dup_x1
    0xb1: return
    0xb2: getstatic
    0xb6: invokevirtual
    0xb7: invokespecial
    0xbb: new
