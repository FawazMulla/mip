.model small 
.stack 100h 
.data 
a db 51h 
msg1 db "number is even$" 
msg2 db "given number odd$" 
.code 
mov ax, @data 
mov ds, ax 
mov al, a 
shr al, 01h 
jc L 
mov ah, 09h 
lea dx, msg1 
int 21h 
jmp stop 
L: mov ah, 09h 
lea dx, msg2 
int 21h 
stop: mov ah, 4ch 
int 21h 
end 