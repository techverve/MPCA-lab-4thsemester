.data
      a: .word 11,252,0,3,12,13
.text
      LDR r0,=a
      MOV r1,#6
      LDR r2,[r0],#4
      SUB r1,r1,#1
      loop:
	       CMP r2,#0
	       BEQ exit
	       LDR r3,[r0],#4
	       SUBS r4,r3,r2
	       BMI l1
	       SUBS r1,r1,#1
	       BEQ exit
	       BNE loop
l1:
	MOV r2,r3
	SUBS r1,r1,#1
	BEQ exit
	BNE loop
exit:
      SWI 0x11
.end
