	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0X10001000
	DCD Reset_Handler
	ALIGN
	AREA mycode, CODE, READONLY
	ENTRY
	EXPORT Reset_Handler
	
Reset_Handler
	LDR R0,=0x01
	;STR R0,R1
	LDR R1,=0X10000000
	STR R0,[R1]
	;MOV R0,#05
	;MOV R1,#0XA
STOP
	B STOP
	
	AREA mydata, DATA, READWRITE
	END