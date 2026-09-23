section .text
	global ft_strcpy

ft_strcpy:
	mov rax, rdi 		; pq strcpy retorna el 1r punter (destinació)
cond:
	mov rcx, [rsi]
	mov [rdi], rcx
	cmp byte [rdi], 0
	je ret
	inc rsi			; 0 eficient però per ara valoro més la legibilitat
	inc rdi			; ja buscaré instruccions de nínxol més tard
	jmp cond
ret:
	ret
