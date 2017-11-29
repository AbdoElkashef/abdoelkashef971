.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
a DWORD ?
b DWORD ?
o DWORD ?
d DWORD ?
e BYTE "enter the num ",0
f BYTE " the sum is ",0
g BYTE " the average ",0
h BYTE 40 DUP(?)
k BYTE 11 DUP(?)
BYTE "."
y BYTE 11 DUP(?),0
.CODE
MainProc PROC
mov edx,0
input e,h,40
atod h
mov a,eax
input e,h,40
atod h
mov b,eax
input e,h,40
atod h
mov o,eax
input e,h,40
atod h
mov d,eax
add eax,a
add eax,b
add eax,o
dtoa y,eax
output f,y
mov ebx,4
cdq
idiv ebx
dtoa k,eax
dtoa y,edx
output g,k


mov eax,0
MainProc ENDP
END