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
         dividend db "ENTER FIRST VALUE (DIVIDEND)==> $"
         divisor db ,0ah,0ah, "ENTER SECOND VALUE (DIVISOR)==> $"
        msg db ,0ah,0ah,"REMAINDER (R)==> $"
        var db ,0ah,0ah,"QUOTIENT (Q)==> $" 
        var1 db  ,0ah,0ah, "FINAL RESULT==> $" 
        
        newLine db 0ah,0dh,"$" 
.code
main proc                  ;HOW TO TAKE INPUT FORM USER AND HOW TO DO DIVISION
                         ;X----------------------------------------------------X 
                         
mov ax,@data
mov ds,ax
                                ;(DIVIDEND)
                              ;X------------X 
Output dividend
         
         
         
       ;INPUT 1 FROM USER
     ;X------------------X
          mov ah,01h
          int 21h
                   mov cl,al
                   xor ch,ch
                   sub cx,48
               
        
      Output newline
       
 
                           
                           
                                    ;(DIVISOR)
                                   ;X---------X 
 ; PRINTING MESSAGE
 
Output divisor  
           
           ; INPUT 2 FROM USER
          ;X------------------X
               mov ah,01h
                int 21h 
                
                     ;LOGIC                      
                  ;X----------X 
                  
                    mov bl,al 
                    
                    
       ; NEW LINE
     ;X------------X 
        Output newline


            ;(DIVISION LOGIC)
          ;X-----------------X
        
             mov ax,cx 
             sub bl , 48                                 
             div bl                
             mov  cl , al
             mov ch  , ah
     
     
          
           
 
                              ;FINAL RESULT
                          ;X----------------X  
                          
                          
  ; PRINTING MESSAGE
 
       Output var1 
      
 
               ;LOGIC
            ;X--------X
             mov dl,cl
             add dl,48
             mov ah,02h
             int 21h 
            print "."   
         mov dl,ch
         add dl,48
        mov ah,02h
          int 21h 
 
        ; NEW LINE
     ;X------------X  
     
        Output newline
     
         
            ;REMIANDER LOGIC(R)
         ;X-----------------------X  
         
         
; PRINTING MESSAGE
             
Output msg 
          
             ;LOGIC
          ;X---------X 
          
          mov dl,ch
          add dl,48
          mov ah,02h
          int 21h 
   
   
      Output newline 
   
   ;QUOTIENT LOGIC (Q)
 ;X--------------------X  
 

; PRINTING MESSAGE    
Output var
             ;LOGIC
          ;X---------X
          
           mov dl,cl
           add dl,48
           mov ah,02h
           int 21h 

    
 
mov ah,4ch
int 21h 
    
main endp
end main
