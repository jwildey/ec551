31 mov R0, 10
32 mov R1, 11
33 mov R2, 20

34 mov [R0], R1
35 mov R0, R1
36 inc R1
37 cmp R0, R2
38 jne 34

39 mov R0, 19
40 mov R3, [R0]
41 inc R3
42 mov [R0], R3
43 mov R3, [R0]
44 inc R3
45 mov [R0], R3

46 mov r0 60
47 mov r1 40
48 add r0 r1

49 mov r2 30
50 sub r1 r2
51 mov [r0] r1
52 inc r0

53 mov r2 5
54 mov r1 13
55 xor r1 r2
56 mov [r0] r1
57 inc r0

58 halt
