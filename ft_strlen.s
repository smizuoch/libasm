global	ft_strlen
section	.text

ft_strlen:
	xor	rax, rax	; rax = 0 (length)
.loop:
	cmp	byte [rdi + rax], 0	;if s[rax] == 0
	je	.end	; then end
	inc	rax	; rax++
	jmp	.loop
.end:
	ret
