extern __errno_location
global ft_read

section .text

ft_read:
	mov rax, 1			; hehehe com que els arguments entren en ordre
	syscall				; només hem de fer la syscall :)
	cmp rax, 0			; però hem de comprovar l'errno
	jl err
	ret

err:
	neg rax				; l'errno es retorna en la forma -errno
	mov rdi, rax			; en desem el valor
	call __errno_location wrt ..plt	; obtenim l'adreça de la variable errno
					; hem d'afegir `wrt ..plt` per permetre PIC
					; ja que la secció .text és per codi estàtic
					; i l'adreça de l'errno es determinarà al moment
	mov [rax], rdi			; desem l'errno al seu lloc
	mov rax, -1			; i retornem -1 per indicar l'error.
	ret
