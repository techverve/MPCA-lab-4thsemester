.data
		A: .WORD 1,3,5,7,9,11,13,15,17
.text
		LDR r0, =A
		MOV r1, #0
		MOV r3, #0
		MOV r4, #3
		MOV r5, #0
		MOV r9, #9

LOOP:
	MLA r10,r3,r4,r5
	LDR r6,[r0,r10,LSL #2]
	ADD r1,r1,r6
	ADD r5,r5,#1
	SUBS r9,r9,#1
	CMP r5,#3
	BEQ l1
	BNE LOOP
	SWI 0X11
l1:
	MOV r5,#0
	ADD r3,r3,#1
	CMP r9, #0
	BNE LOOP
	SWI 0X11
