BITS 32

extern printf

section .data
	res: db "%d",10,0
	val: dd 1
section .text
	global main

	main:
		push ebp
		mov ebp,esp
			
		mov eax,2
		l1:
			mov DWORD[val],eax
			push eax
			push res
			call printf
			mov eax,DWORD[val]
			add eax,2
			cmp eax,100
			jle l1
	
		leave 
		ret
