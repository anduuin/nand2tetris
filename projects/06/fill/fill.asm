(LOOP1)
    @16384
    D=A
    @i
    M=D

    @24576
    D=M
    @LOOP2
    D;JNE
    @LOOP3
    D;JEQ

(LOOP2)
    @24575
    D=A
    @i
    D=D-M
    A=M
    M=-1
    @i
    M=M+1
    @LOOP1
    D;JEQ
    @LOOP2
    0;JMP

(LOOP3)
    @24575
    D=A
    @i
    D=D-M
    A=M
    M=0
    @i
    M=M+1
    @LOOP1
    D;JEQ
    @LOOP3
    0;JMP