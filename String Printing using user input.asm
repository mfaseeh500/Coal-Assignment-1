;Print Function  
print macro p1
mov dl,p1   
mov ah,02
int 21h  
endm     
;Output Function  
Output macro p1
mov dx,offset p1   
mov ah,09
int 21h  
endm 

.model small
.stack 100h
.data 
 
 counter db ?
 str db 100 dup("$")
 x db "Enter Your Text==> $" 
 x2 db "Enter Counter==> $" 
 num db 0          
 newline db 0AH,0DH,"$"
.code  

main proc

mov ax , @data
mov ds, ax


output x  

;offset address of first element in array          
mov si, offset str  

        
; taking input String   
takingInputString:
mov ah,1
int 21h
;checking if user pressed enter
cmp al,13  
;if input is equal to enter pressed then end program
je InputStringEnd 
;else save input at index 
mov [si],al 
inc si
;get next character again / jump to label takeInput
jmp takingInputString   
  
    
    
    
InputStringEnd: 
 
output newline
output x2 


; taking input counter 
mov ah ,1
int 21h   
; save input value to counter 
mov counter ,al  
mov [si] , offset counter
mov cx , [si]

L1:
Output newLine
lea dx, str 
mov ah,09
int 21h 
inc num
mov bl,num 
add bl,48
cmp bl,counter  
je End
loop L1
End:
;return statement  
mov ah,4ch
int 21h     

output newline

main endp
end main