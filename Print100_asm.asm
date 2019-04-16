BITS 32

extern printf
extern scanf

section .data
	out: db "%d", 10, 0
	multiplier: dd 0
section .text
	global main
	
	main:
		push ebp
		mov ebp, esp

		
		mov ebx, 1
		l1:
			mov DWORD [multiplier], ebx
			push ebx
			push out
			call printf
			mov ebx, DWORD [multiplier]
			add ebx, 1;
			cmp ebx, 100
			jle l1

		mov esp, ebp
		pop ebp
		ret
