
	AREA PROG3, CODE, READONLY
	EXPORT __main
__main
sum RN R1 ; R1 register is named as sum
	MOV counter,#1
	MOV sum,#0
COMPARE CMP counter,#100
	BHI HERE ; If counter is equal to 100 stop adding else keep adding
	ADD sum,sum,counter
	ADD counter,#1
	B COMPARE;	   