meta:
  id: java_bytecode
  endian: be
  title: Java Virtual Machine bytecode
  license: MIT
doc-ref: https://docs.oracle.com/javase/specs/jvms/se8/html/jvms-6.html
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
            #'opcodes::nop': no_arg # 0x00
            #'opcodes::aconst_null': no_arg # 0x01
            #'opcodes::iconst_m1': no_arg # 0x02
            #'opcodes::iconst_0': no_arg # 0x03
            #'opcodes::iconst_1': no_arg # 0x04
            #'opcodes::iconst_2': no_arg # 0x05
            #'opcodes::iconst_3': no_arg # 0x06
            #'opcodes::iconst_4': no_arg # 0x07
            #'opcodes::iconst_5': no_arg # 0x08
            #'opcodes::lconst_0': no_arg # 0x09
            #'opcodes::lconst_1': no_arg # 0x0a
            #'opcodes::fconst_0': no_arg # 0x0b
            #'opcodes::fconst_1': no_arg # 0x0c
            #'opcodes::fconst_2': no_arg # 0x0d
            #'opcodes::dconst_0': no_arg # 0x0e
            #'opcodes::dconst_1': no_arg # 0x0f
            'opcodes::bipush': s1 # 0x10
            'opcodes::sipush': s2 # 0x11
            'opcodes::ldc': u1 # 0x12
            'opcodes::ldc_w': u2 # 0x13
            'opcodes::ldc2_w': u2 # 0x14
            'opcodes::iload': u1 # 0x15
            'opcodes::lload': u1 # 0x16
            'opcodes::fload': u1 # 0x17
            'opcodes::dload': u1 # 0x18
            #'opcodes::aload': no_arg # 0x19
            #'opcodes::iload_0': no_arg # 0x1a
            #'opcodes::iload_1': no_arg # 0x1b
            #'opcodes::iload_2': no_arg # 0x1c
            #'opcodes::iload_3': no_arg # 0x1d
            #'opcodes::lload_0': no_arg # 0x1e
            #'opcodes::lload_1': no_arg # 0x1f
            #'opcodes::lload_2': no_arg # 0x20
            #'opcodes::lload_3': no_arg # 0x21
            #'opcodes::fload_0': no_arg # 0x22
            #'opcodes::fload_1': no_arg # 0x23
            #'opcodes::fload_2': no_arg # 0x24
            #'opcodes::fload_3': no_arg # 0x25
            #'opcodes::dload_0': no_arg # 0x26
            #'opcodes::dload_1': no_arg # 0x27
            #'opcodes::dload_2': no_arg # 0x28
            #'opcodes::dload_3': no_arg # 0x29
            #'opcodes::aload_0': no_arg # 0x2a
            #'opcodes::aload_1': no_arg # 0x2b
            #'opcodes::aload_2': no_arg # 0x2c
            #'opcodes::aload_3': no_arg # 0x2d
            #'opcodes::iaload': no_arg # 0x2e
            #'opcodes::laload': no_arg # 0x2f
            #'opcodes::faload': no_arg # 0x30
            #'opcodes::daload': no_arg # 0x31
            #'opcodes::aaload': no_arg # 0x32
            #'opcodes::baload': no_arg # 0x33
            #'opcodes::caload': no_arg # 0x34
            #'opcodes::saload': no_arg # 0x35
            #'opcodes::istore': no_arg # 0x36
            #'opcodes::lstore': no_arg # 0x37
            #'opcodes::fstore': no_arg # 0x38
            #'opcodes::dstore': no_arg # 0x39
            #'opcodes::astore': no_arg # 0x3a
            #'opcodes::istore_0': no_arg # 0x3b
            #'opcodes::istore_1': no_arg # 0x3c
            #'opcodes::istore_2': no_arg # 0x3d
            #'opcodes::istore_3': no_arg # 0x3e
            #'opcodes::lstore_0': no_arg # 0x3f
            #'opcodes::lstore_1': no_arg # 0x40
            #'opcodes::lstore_2': no_arg # 0x41
            #'opcodes::lstore_3': no_arg # 0x42
            #'opcodes::fstore_0': no_arg # 0x43
            #'opcodes::fstore_1': no_arg # 0x44
            #'opcodes::fstore_2': no_arg # 0x45
            #'opcodes::fstore_3': no_arg # 0x46
            #'opcodes::dstore_0': no_arg # 0x47
            #'opcodes::dstore_1': no_arg # 0x48
            #'opcodes::dstore_2': no_arg # 0x49
            #'opcodes::dstore_3': no_arg # 0x4a
            #'opcodes::astore_0': no_arg # 0x4b
            #'opcodes::astore_1': no_arg # 0x4c
            #'opcodes::astore_2': no_arg # 0x4d
            #'opcodes::astore_3': no_arg # 0x4e
            #'opcodes::iastore': no_arg # 0x4f
            #'opcodes::lastore': no_arg # 0x50
            #'opcodes::fastore': no_arg # 0x51
            #'opcodes::dastore': no_arg # 0x52
            #'opcodes::aastore': no_arg # 0x53
            #'opcodes::bastore': no_arg # 0x54
            #'opcodes::castore': no_arg # 0x55
            #'opcodes::sastore': no_arg # 0x56
            #'opcodes::pop': no_arg # 0x57
            #'opcodes::pop2': no_arg # 0x58
            #'opcodes::dup': no_arg # 0x59
            #'opcodes::dup_x1': no_arg # 0x5a
            #'opcodes::dup_x2': no_arg # 0x5b
            #'opcodes::dup2': no_arg # 0x5c
            #'opcodes::dup2_x1': no_arg # 0x5d
            #'opcodes::dup2_x2': no_arg # 0x5e
            #'opcodes::swap': no_arg # 0x5f
            #'opcodes::iadd': no_arg # 0x60
            #'opcodes::ladd': no_arg # 0x61
            #'opcodes::fadd': no_arg # 0x62
            #'opcodes::dadd': no_arg # 0x63
            #'opcodes::isub': no_arg # 0x64
            #'opcodes::lsub': no_arg # 0x65
            #'opcodes::fsub': no_arg # 0x66
            #'opcodes::dsub': no_arg # 0x67
            #'opcodes::imul': no_arg # 0x68
            #'opcodes::lmul': no_arg # 0x69
            #'opcodes::fmul': no_arg # 0x6a
            #'opcodes::dmul': no_arg # 0x6b
            #'opcodes::idiv': no_arg # 0x6c
            #'opcodes::ldiv': no_arg # 0x6d
            #'opcodes::fdiv': no_arg # 0x6e
            #'opcodes::ddiv': no_arg # 0x6f
            #'opcodes::irem': no_arg # 0x70
            #'opcodes::lrem': no_arg # 0x71
            #'opcodes::frem': no_arg # 0x72
            #'opcodes::drem': no_arg # 0x73
            #'opcodes::ineg': no_arg # 0x74
            #'opcodes::lneg': no_arg # 0x75
            #'opcodes::fneg': no_arg # 0x76
            #'opcodes::dneg': no_arg # 0x77
            #'opcodes::ishl': no_arg # 0x78
            #'opcodes::lshl': no_arg # 0x79
            #'opcodes::ishr': no_arg # 0x7a
            #'opcodes::lshr': no_arg # 0x7b
            #'opcodes::iushr': no_arg # 0x7c
            #'opcodes::lushr': no_arg # 0x7d
            #'opcodes::iand': no_arg # 0x7e
            #'opcodes::land': no_arg # 0x7f
            #'opcodes::ior': no_arg # 0x80
            #'opcodes::lor': no_arg # 0x81
            #'opcodes::ixor': no_arg # 0x82
            #'opcodes::lxor': no_arg # 0x83
            #'opcodes::iinc': no_arg # 0x84
            #'opcodes::i2l': no_arg # 0x85
            #'opcodes::i2f': no_arg # 0x86
            #'opcodes::i2d': no_arg # 0x87
            #'opcodes::l2i': no_arg # 0x88
            #'opcodes::l2f': no_arg # 0x89
            #'opcodes::l2d': no_arg # 0x8a
            #'opcodes::f2i': no_arg # 0x8b
            #'opcodes::f2l': no_arg # 0x8c
            #'opcodes::f2d': no_arg # 0x8d
            #'opcodes::d2i': no_arg # 0x8e
            #'opcodes::d2l': no_arg # 0x8f
            #'opcodes::d2f': no_arg # 0x90
            #'opcodes::i2b': no_arg # 0x91
            #'opcodes::i2c': no_arg # 0x92
            #'opcodes::i2s': no_arg # 0x93
            #'opcodes::lcmp': no_arg # 0x94
            #'opcodes::fcmpl': no_arg # 0x95
            #'opcodes::fcmpg': no_arg # 0x96
            #'opcodes::dcmpl': no_arg # 0x97
            #'opcodes::dcmpg': no_arg # 0x98
            #'opcodes::ifeq': no_arg # 0x99
            #'opcodes::ifne': no_arg # 0x9a
            #'opcodes::iflt': no_arg # 0x9b
            #'opcodes::ifge': no_arg # 0x9c
            #'opcodes::ifgt': no_arg # 0x9d
            #'opcodes::ifle': no_arg # 0x9e
            #'opcodes::if_icmpeq': no_arg # 0x9f
            #'opcodes::if_icmpne': no_arg # 0xa0
            #'opcodes::if_icmplt': no_arg # 0xa1
            #'opcodes::if_icmpge': no_arg # 0xa2
            #'opcodes::if_icmpgt': no_arg # 0xa3
            #'opcodes::if_icmple': no_arg # 0xa4
            #'opcodes::if_acmpeq': no_arg # 0xa5
            #'opcodes::if_acmpne': no_arg # 0xa6
            'opcodes::goto': s2 # 0xa7
            'opcodes::jsr': s2 # 0xa8
            #'opcodes::ret': no_arg # 0xa9
            #'opcodes::tableswitch': no_arg # 0xaa
            #'opcodes::lookupswitch': no_arg # 0xab
            #'opcodes::ireturn': no_arg # 0xac
            #'opcodes::lreturn': no_arg # 0xad
            #'opcodes::freturn': no_arg # 0xae
            #'opcodes::dreturn': no_arg # 0xaf
            #'opcodes::areturn': no_arg # 0xb0
            #'opcodes::return': no_arg # 0xb1
            'opcodes::getstatic': u2 # 0xb2
            #'opcodes::putstatic': no_arg # 0xb3
            #'opcodes::getfield': no_arg # 0xb4
            #'opcodes::putfield': no_arg # 0xb5
            'opcodes::invokevirtual': u2 # 0xb6
            'opcodes::invokespecial': u2 # 0xb7
            'opcodes::invokestatic': u2 # 0xb8
            'opcodes::invokeinterface': arg_invokeinterface # 0xb9
            #'opcodes::invokedynamic': no_arg # 0xba
            'opcodes::new': u2 # 0xbb
            'opcodes::newarray': arg_newarray # 0xbc
            #'opcodes::anewarray': no_arg # 0xbd
            #'opcodes::arraylength': no_arg # 0xbe
            #'opcodes::athrow': no_arg # 0xbf
            #'opcodes::checkcast': no_arg # 0xc0
            #'opcodes::instanceof': no_arg # 0xc1
            #'opcodes::monitorenter': no_arg # 0xc2
            #'opcodes::monitorexit': no_arg # 0xc3
            #'opcodes::wide': no_arg # 0xc4
            #'opcodes::multianewarray': no_arg # 0xc5
            #'opcodes::ifnull': no_arg # 0xc6
            #'opcodes::ifnonnull': no_arg # 0xc7
            'opcodes::goto_w': s4 # 0xc8
            'opcodes::jsr_w': s4 # 0xc9
            #'opcodes::breakpoint': no_arg # 0xca
            #'opcodes::impdep1': no_arg # 0xfe
            #'opcodes::impdep2': no_arg # 0xff
  arg_invokeinterface:
    seq:
      - id: method_index
        type: u2
      - id: count
        type: u1
      - id: reserved
        contents: [0]
  arg_newarray:
    doc-ref: 'https://docs.oracle.com/javase/specs/jvms/se8/html/jvms-6.html#jvms-6.5.newarray'
    seq:
      - id: atype
        type: u1
        enum: prim_types
    enums:
      prim_types:
        4: t_boolean
        5: t_char
        6: t_float
        7: t_double
        8: t_byte
        9: t_short
        10: t_int
        11: t_long
enums:
  opcodes:
    0x00: nop
    0x01: aconst_null
    0x02: iconst_m1
    0x03: iconst_0
    0x04: iconst_1
    0x05: iconst_2
    0x06: iconst_3
    0x07: iconst_4
    0x08: iconst_5
    0x09: lconst_0
    0x0a: lconst_1
    0x0b: fconst_0
    0x0c: fconst_1
    0x0d: fconst_2
    0x0e: dconst_0
    0x0f: dconst_1
    0x10: bipush
    0x11: sipush
    0x12: ldc
    0x13: ldc_w
    0x14: ldc2_w
    0x15: iload
    0x16: lload
    0x17: fload
    0x18: dload
    0x19: aload
    0x1a: iload_0
    0x1b: iload_1
    0x1c: iload_2
    0x1d: iload_3
    0x1e: lload_0
    0x1f: lload_1
    0x20: lload_2
    0x21: lload_3
    0x22: fload_0
    0x23: fload_1
    0x24: fload_2
    0x25: fload_3
    0x26: dload_0
    0x27: dload_1
    0x28: dload_2
    0x29: dload_3
    0x2a: aload_0
    0x2b: aload_1
    0x2c: aload_2
    0x2d: aload_3
    0x2e: iaload
    0x2f: laload
    0x30: faload
    0x31: daload
    0x32: aaload
    0x33: baload
    0x34: caload
    0x35: saload
    0x36: istore
    0x37: lstore
    0x38: fstore
    0x39: dstore
    0x3a: astore
    0x3b: istore_0
    0x3c: istore_1
    0x3d: istore_2
    0x3e: istore_3
    0x3f: lstore_0
    0x40: lstore_1
    0x41: lstore_2
    0x42: lstore_3
    0x43: fstore_0
    0x44: fstore_1
    0x45: fstore_2
    0x46: fstore_3
    0x47: dstore_0
    0x48: dstore_1
    0x49: dstore_2
    0x4a: dstore_3
    0x4b: astore_0
    0x4c: astore_1
    0x4d: astore_2
    0x4e: astore_3
    0x4f: iastore
    0x50: lastore
    0x51: fastore
    0x52: dastore
    0x53: aastore
    0x54: bastore
    0x55: castore
    0x56: sastore
    0x57: pop
    0x58: pop2
    0x59: dup
    0x5a: dup_x1
    0x5b: dup_x2
    0x5c: dup2
    0x5d: dup2_x1
    0x5e: dup2_x2
    0x5f: swap
    0x60: iadd
    0x61: ladd
    0x62: fadd
    0x63: dadd
    0x64: isub
    0x65: lsub
    0x66: fsub
    0x67: dsub
    0x68: imul
    0x69: lmul
    0x6a: fmul
    0x6b: dmul
    0x6c: idiv
    0x6d: ldiv
    0x6e: fdiv
    0x6f: ddiv
    0x70: irem
    0x71: lrem
    0x72: frem
    0x73: drem
    0x74: ineg
    0x75: lneg
    0x76: fneg
    0x77: dneg
    0x78: ishl
    0x79: lshl
    0x7a: ishr
    0x7b: lshr
    0x7c: iushr
    0x7d: lushr
    0x7e: iand
    0x7f: land
    0x80: ior
    0x81: lor
    0x82: ixor
    0x83: lxor
    0x84: iinc
    0x85: i2l
    0x86: i2f
    0x87: i2d
    0x88: l2i
    0x89: l2f
    0x8a: l2d
    0x8b: f2i
    0x8c: f2l
    0x8d: f2d
    0x8e: d2i
    0x8f: d2l
    0x90: d2f
    0x91: i2b
    0x92: i2c
    0x93: i2s
    0x94: lcmp
    0x95: fcmpl
    0x96: fcmpg
    0x97: dcmpl
    0x98: dcmpg
    0x99: ifeq
    0x9a: ifne
    0x9b: iflt
    0x9c: ifge
    0x9d: ifgt
    0x9e: ifle
    0x9f: if_icmpeq
    0xa0: if_icmpne
    0xa1: if_icmplt
    0xa2: if_icmpge
    0xa3: if_icmpgt
    0xa4: if_icmple
    0xa5: if_acmpeq
    0xa6: if_acmpne
    0xa7: goto
    0xa8: jsr
    0xa9: ret
    0xaa: tableswitch
    0xab: lookupswitch
    0xac: ireturn
    0xad: lreturn
    0xae: freturn
    0xaf: dreturn
    0xb0: areturn
    0xb1: return
    0xb2: getstatic
    0xb3: putstatic
    0xb4: getfield
    0xb5: putfield
    0xb6: invokevirtual
    0xb7: invokespecial
    0xb8: invokestatic
    0xb9: invokeinterface
    0xba: invokedynamic
    0xbb: new
    0xbc: newarray
    0xbd: anewarray
    0xbe: arraylength
    0xbf: athrow
    0xc0: checkcast
    0xc1: instanceof
    0xc2: monitorenter
    0xc3: monitorexit
    0xc4: wide
    0xc5: multianewarray
    0xc6: ifnull
    0xc7: ifnonnull
    0xc8: goto_w
    0xc9: jsr_w
    0xca: breakpoint
    0xfe: impdep1
    0xff: impdep2
