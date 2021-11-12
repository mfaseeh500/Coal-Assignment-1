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


;program to find Multiplication of Two Numbers
 
.model small
.stack 100h
.data 

 msg db " ENTER FIRST VALUE==>$"    
 msg1 db 0ah, " ENTER SECOND VALUE==>$"
 var1 db 0ah,"  RESULT==>$" 
 newLine db 0ah,0dh,"$"
.code 
main proc 
    
                 
       
   ;take first value from the user         
    mov ax,@data
mov ds,ax
Output msg  
       
       mov ah,01h
       int 21h
          
       mov bl,al
      sub bl,48
       
             
             
Output newline
;take second value from the user 
Output msg1
mov ah,01h
int 21h
sub al,48 
        
           ;multiplication logic
        
          
mul bl        
aam
mov bl,al       
add bl,48
mov ch,ah       
add ch,48
                ;new line logic
               
               
Output  newline
     
     
                 
                 ;result print
   
                    
Output var1
     
     
    

mov dl,ch
mov ah,02h
int 21h 
     
mov dl,bl
mov ah,02h
int 21h     

      
           
;return statement 
mov ah,4ch       
int 21h 
    
    
 main endp
end main


