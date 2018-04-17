#! /usr/bin/python

template_char = '{counter}: begin print_char <= {char}; print_counter <= print_counter + 1; print_en <= 1; end\n'
template_end = 'default: begin print_char <= 0; print_en <= 0; print_done <= 1; end\n'

def gen_msg(msg, name):
    outfile = open('string_' + name + '.v', 'w')

    msg = msg.replace('\n', '\r') # Godammit windows

    for counter, char in enumerate(msg): 
        outfile.write(template_char.format(
            counter=counter,
            char=ord(char),
        ))
    outfile.write(template_end)
    outfile.close()

with open('strings.conf', 'r') as in_f:
    strings = in_f.readlines()

idx = 0
while idx < len(strings):
    while len(strings[idx]) <= 1 or strings[idx][-2] != '{':
        idx = idx + 1

    name = strings[idx].split(' ')[0]
    idx = idx + 1

    msg = ''
    while strings[idx].strip() != '}':
        msg = msg + strings[idx]
        idx = idx + 1

    idx = idx + 1
    gen_msg(msg, name)
