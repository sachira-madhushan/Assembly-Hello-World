[org 0x7c00]

mov bx,message
mov ah,0x0e


printScreen:
	mov al,[bx]
	cmp al,0
	je .end
	int 0x10
	inc bx
	jmp printScreen

.end:
	jmp $


message db "Hello World",0


times 510 -($-$$) db 0
dw 0xaa55