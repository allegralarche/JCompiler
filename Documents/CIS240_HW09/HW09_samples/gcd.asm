	.CODE
	.FALIGN
gcd
	ADD R6 R6 #-3
	STR R7 R6 #1
	STR R5 R6 #0
	ADD R5 R6 #0
	CONST R0 #4
	STR R0 R6 #-1
	ADD R6 R6 #-1
	LDR R0 R6 #0
	ADD R6 R6 #1
	ADD R0 R0 R6
	LDR R0 R0 #0
	ADD R6 R6 #-1
	STR R0 R6 #0
	CONST R0 #0
	STR R0 R6 #-1
	ADD R6 R6 #-1
	LDR R0 R6 #0
	LDR R1 R6 #1
	ADD R6 R6 #1
	CMP R0 R1
	BRz gcd_comp_0
	CONST R0 #0
	BRnzp gcd_comp_1
gcd_comp_0
	CONST R0 #1
gcd_comp_1
	STR R0 R6 #0
	LDR R0 R6 #0
	ADD R6 R6 #1
	CMPI R0 #0
	BRz gcd_2
	CONST R0 #3
	STR R0 R6 #-1
	ADD R6 R6 #-1
	LDR R0 R6 #0
	ADD R6 R6 #1
	ADD R0 R0 R6
	LDR R0 R0 #0
	ADD R6 R6 #-1
	STR R0 R6 #0
	BRnzp gcd_3
gcd_2
	CONST R0 #4
	STR R0 R6 #-1
	ADD R6 R6 #-1
	LDR R0 R6 #0
	ADD R6 R6 #1
	ADD R0 R0 R6
	LDR R0 R0 #0
	ADD R6 R6 #-1
	STR R0 R6 #0
	CONST R0 #4
	STR R0 R6 #-1
	ADD R6 R6 #-1
	LDR R0 R6 #0
	ADD R6 R6 #1
	ADD R0 R0 R6
	LDR R0 R0 #0
	ADD R6 R6 #-1
	STR R0 R6 #0
	LDR R0 R6 #0
	LDR R1 R6 #1
	MOD R0 R0 R1
	ADD R6 R6 #1
	STR R0 R6 #0
	CONST R0 #5
	STR R0 R6 #-1
	ADD R6 R6 #-1
	LDR R0 R6 #0
	ADD R6 R6 #1
	ADD R0 R0 R6
	LDR R0 R0 #0
	ADD R6 R6 #-1
	STR R0 R6 #0
	JSR gcd
gcd_3
	LDR R0 R6 #0
	STR R0 R5 #2
	ADD R6 R5 #0
	LDR R5 R6 #0
	LDR R7 R6 #1
	ADD R6 R6 #2
	RET
	.CODE
	.FALIGN
MAIN

	ADD R6 R6 #-3
	STR R7 R6 #1
	STR R5 R6 #0
	ADD R5 R6 #0
	CONST R0 #255
	STR R0 R6 #-1
	ADD R6 R6 #-1
	CONST R0 #68
	STR R0 R6 #-1
	ADD R6 R6 #-1
	JSR gcd
	JSR printnum
	JSR endl
	LDR R0 R6 #0
	STR R0 R5 #2
	ADD R6 R5 #0
	LDR R5 R6 #0
	LDR R7 R6 #1
	ADD R6 R6 #2
	RET
