section .data
	extern malloc
	extern ft_strlen
	extern ft_strcpy
	extern __errno_location

section .text
	global ft_strdup

ft_strdup:
	push rdi		; desem adreça de la cadena original
	call ft_strlen		; calculem llargada
	mov rdi, rax		; la passem com a argument a malloc
	inc rdi

	call malloc wrt ..plt

	pop rsi			; recuperem l'adreça original de la cadena a rsi
	mov rdi, rax
	call ft_strcpy		; finalment, cridem strcpy
	ret

err:
        neg rax
        mov rdi, rax
        call __errno_location wrt ..plt
        mov [rax], rdi
        xor rax, rax    
        ret
