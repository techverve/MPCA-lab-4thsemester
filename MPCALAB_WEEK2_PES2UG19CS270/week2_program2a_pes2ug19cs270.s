.text
    MOV r0,#3
    MOV r1,#3
    CMP r0,r1
    BEQ l1
    SUB r2,r1,r0
    B exit
    l1:
          ADD r2,r0,r1
    exit:
          SWI 0x011
.end
