.text
    LDR r0,=0b11011000001101010011001110110100
    MOV r1,#32
    MOV r2,#0
    MOV r3,#0
l1:
	SUB r1,r1,#1
	MOVS r0,r0,LSR #1
	BCS l2
	BCC l3
l2:
  	ADD r2,r2,#1
  	B l5
l3:
    ADD r3,r3,#1
    B l5
l4:
    SWI 0x11
l5:
	   CMP r1,#0
	   BEQ l4
	   BNE l1
.end
