
AREA PROG4, CODE, READONLYENTRY
	MOV R0,#0x29
	AND R1,R0,#0x0F ;masks upper four bits
	ORR R1,R1,#0x30 ;combining with 30 to get ASCII
	MOV R2,R0,LSR #4 ; right shift 4 bits to get unpacked BCD
	ORR R2,R2,#0x30 ;combining with 30 to get ASCII	
HERE B HERE 