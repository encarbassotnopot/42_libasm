section .text
	global ft_strlen

;; en un primer moment replicava l'strlen típic
;; és a dir: incrementar un comptador i retornar-ne el valor
;; però (crec que) era menys òptim que el que faig ara.
;; he deixat comentada la primera implementació.

ft_strlen:
	mov rax, rdi
	;xor rax, rax		; inicialitzar el comptador a 0
cond:
	cmp byte [rax], 0	; en og feia de [rdi]
	je ret
	inc rax
	;inc rdi		; aquí incrementava rdi. m'he estalviat aquesta
				; instrucció gràcies a fer la resta de rax i rdi
	jmp cond
ret:
	sub rax, rdi		; rax -= rdi
	ret			; retorna el valor de rax
