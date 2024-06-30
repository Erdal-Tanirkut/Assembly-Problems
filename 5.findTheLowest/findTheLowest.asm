
	AREA PROG3, CODE, READONLY	ENTRY
	EXPORT __main
__main	LDR R0,=SIGN_DAT	MOV R3,#8	LDRSB R2,[R0];bring into R2 the first sign number and sign extend it	ADD R0,R0,#1 ;point to nextBEGIN LDRSB R1, [R0] ;R1 = contents of loc. pointed to by R0	CMP R1,R2 ;compare R1 and R2	BGE NEXT ;branch to NEXT if R1 is greater than or equal to R2	MOV R2,R1;R2 = R1 (use the new number for comparison)NEXT ADD R0,R0,#1 ;point to next
	SUBS R3,R3,#1 ;decrement counter	BNE BEGIN ;if R3 is not zero branch BEGIN	LDR R0,=LOWEST ;R0 = address of LOWEST	STR R2,[R0] ;store R2 in location SUMHERE B HERESIGN_DAT DCB +13,-10,+19,+14,-18,-9,+12,-19,+16	AREA VARIABLES,DATA,READWRITE	LOWEST DCD 0END		