#! /usr/bin/python3

import sys

def unhex(hexcode):
    if len(hexcode) % 4 != 0:
        print('Bad asm')
        exit(1)
    
    instructions = [hexcode[x*4:(x+1)*4] for x in range(len(hexcode)//4)]
    instructions = [int('0x'+x, 0) for x in instructions]
    instructions = [bin(x)[2:] for x in instructions]
    instructions = [('0'*(16-len(x))) + x for x in instructions]
    
    with open('sim/memory.list', 'w') as out_f:
        out_f.write('@1F\n')
        for inst in instructions:
            out_f.write(inst)
            out_f.write('\n')


def parse_instruction(inst):
    opcodes = {
        k: i
        for i, k in enumerate([
            'halt', 'inc', 'jmp', 'jne', 'je', 'add', 'sub', 'xor', 'cmp', 'limm', 'mov', 'sw', 'lw', 'spec',
        ])
    }
    inst = inst.replace(',', ' ')
    tokens = [i for i in inst.split(' ') if len(i) >= 1]

    if tokens[0] in opcodes:
        args = tokens[0:]
    else:
        args = tokens[1:]

    op = opcodes[args[0]]
    if args[0] in {'halt'}:
        return build_bin(op)
    elif args[0] in {'jmp', 'jne', 'je'}:
        return build_bin(op, int(args[1]))
    elif args[0] in {'inc'}:
        assert args[1][0] == 'r'
        return build_bin(op, int(args[1][1:]))
    elif args[0] in {'add', 'sub', 'xor', 'cmp', 'spec'}:
        assert args[1][0] == 'r'
        assert args[2][0] == 'r'
        return build_bin(op, int(args[1][1:]), int(args[2][1:]))
    else:
        assert args[0] == 'mov'
        if 'r' not in args[2]:
            return build_bin(opcodes['limm'], int(args[1][1:]), int(args[2]))
        elif '[' in args[1]:
            return build_bin(opcodes['sw'], int(args[1][2:-1]), int(args[2][1:]))
        elif '[' in args[2]:
            return build_bin(opcodes['lw'], int(args[1][1:]), int(args[2][2:-1]))
        else:
            return build_bin(opcodes['mov'], int(args[1][1:]), int(args[2][1:]))

def lbin(l, x):
    b = bin(x)[2:]
    assert(len(b) <= l)
    return ('0'*(l-len(b))) + b 

def build_bin(op, imm_hi=0, imm_lo=0):
    res = []
    res.append(lbin(4, op))
    if op in {2, 3, 4}:  # jump instructions
        res.append(lbin(12, imm_hi))
    elif op == 1:  # inc
        res.append('000000')
        res.append(lbin(6, imm_hi))
    else:
        res.append(lbin(6, imm_hi))
        res.append(lbin(6, imm_lo))
    return '_'.join(res)


def assemble(fname):
    with open(fname, 'r') as in_f:
        lines = [l.strip().lower() for l in in_f.readlines() if len(l) > 2]

    with open('sim/memory.list', 'w') as out_f:
        out_f.write('@1F\n')
        for asm in lines:
            out_f.write(parse_instruction(asm))
            out_f.write('\n')
   

if __name__ == '__main__':
    if len(sys.argv) < 2:
        print('No command. Valid commands:\n\tunhex <hexstream>\n\tassemble <asm_file>')
        exit(1)

    if sys.argv[1] == 'unhex':
        if len(sys.argv) != 3:
            print('bad argnum')
        unhex(sys.argv[2])
        exit(0)

    if sys.argv[1] == 'assemble':
        if len(sys.argv) != 3:
            print('bad argnum')
        assemble(sys.argv[2])
        print('Output written to memory.list')
        exit(0)

    print('Unrecognized command ' + sys.argv[1])


