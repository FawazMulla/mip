.model small 
.stack 100h 
.data 
num db 13h 
ones db 0 
zeros db 0 
.code 
main proc 
mov ax, @data 
mov ds, ax 
mov al, num 
mov cx, 08h 
back: ror al, 1
jnc zerinc 
inc ones 
jmp next 
zerinc: inc zeros 
next: dec cx 
jnz back 
mov ah, 4ch 
int 21h 
main endp 
end main 