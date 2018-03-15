			mov R0,0       ;R0=0 - the number to put into memory, starts at 0
			mov R1, 10     ;R1 = 10, the current memory location, starts at 10
			mov R2, 20     ;R2 = 20, last memory location+1 (for performing comparison)
theLoop:	mov [R1], R0   ;memory[R1] = contents of R0
			inc R0         ;R0 = R0 + 1
			inc R1         ;R1 = R1 + 1
			cmp R1, R2     ;is the current memory location (R1) equal to the last memory location? (R2 =20)
			jne theLoop    ;if the above comparison shows R1 not equal to 20, jump back to theLoop
			halt           ;halts execution until push button is pressed