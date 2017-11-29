.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
x DWORD ?
y DWORD ?
z DWORD ?
a BYTE "enter your number ",0
b BYTE "the result of  is ",0
d BYTE 40 DUP (?)
e BYTE 11 DUP(?),0
.CODE
MainProc PROC
input a,d,40
atod d
mov x,eax
input a,d,40
atod d
mov y,eax
input a,d,40
atod d
mov z,eax
mov eax,x
add eax,y
mov ebx,z
imul ebx,2
sub eax,ebx
add eax,1
neg eax
dtoa e,eax
output b,e
mov eax,0
ret
MainProc ENDP
END 