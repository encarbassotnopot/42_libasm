section .text
	global ft_strcmp

ft_strcmp:
	movzx rax, byte [rdi]
	movzx rcx, byte [rsi]
	sub rax, rcx
	cmp rax, 0
	jne ret			; retornem si [rsi] - [rdi] != 0
	cmp byte [rsi], 0
	je ret			; retornem si [rsi] (== [rdi]) == 0	
	inc rsi	
	inc rdi
	jmp ft_strcmp
ret:
	ret
