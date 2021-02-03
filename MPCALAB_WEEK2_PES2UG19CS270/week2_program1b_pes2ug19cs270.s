.text
      MOV r0,#-1
      CMP r0,#0
      BEQ label1
      BMI label2
      MOV r1,#2
      B exit
      label1:
              MOV r1,#1
      B exit
      label2:
              MOV r1,#3
      exit:
          SWI 0x011
.end
