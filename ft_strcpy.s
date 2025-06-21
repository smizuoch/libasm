global  ft_strcpy
section .text

ft_strcpy:
    mov     rax, rdi        ; ← 返り値用に元 dst を退避
    xor     rcx, rcx        ; i = 0
.loop:
    mov     dl,  [rsi+rcx]  ; dl = src[i]
    mov     [rdi+rcx], dl   ; dst[i] = dl
    inc     rcx             ; i++
    test    dl, dl          ; dl == 0 ?
    jne     .loop           ; 0 でなければループ
    ret                     ; rax (元 dst) を返す
