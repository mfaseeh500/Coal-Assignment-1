.model small
.stack 100h

.data 
         msg1 db "ENTER FIRST VALUE (DIVIDEND)-----> $"
         msg2 db ,0ah,0ah, "ENTER SECOND VALUE (DIVISOR)-----> $"
        msg db ,0ah,0ah,"REMAINDER (R)-----> $"
        var db ,0ah,0ah,"QUOTIENT (Q)-----> $" 
        var1 db  ,0ah,0ah, "FINAL RESULT-----> $" 
        var2 db   ,0ah,0ah, "x--------------------------END-----------------------------x $" 
.code
main proc                  ;HOW TO TAKE INPUT FORM USER AND HOW TO DO DIVISION
                         ;X----------------------------------------------------X 
                         
mov ax,@data
mov ds,ax
                                ;(DIVIDEND)
                              ;X------------X 
                              
         ;PRINTING MESSAGE
               
         mov dx,offset msg1
         mov ah,09h 
         int 21H
         
         
         
       ;INPUT 1 FROM USER
     ;X------------------X
          mov ah,01h
          int 21h
                     ;LOGIC
                  ;X----------X 
                   mov cl,al
                   xor ch,ch
                   sub cx,48
               
       ; NEW LINE
     ;X------------X  
       mov dl,10
       mov ah,02h
       int 21h
     
       mov dl,13
       mov ah,02h
       int 21h
       
 
                           
                           
                                    ;(DIVISOR)
                                   ;X---------X 
 ; PRINTING MESSAGE
 
mov dx,offset msg2
mov ah,09h 
int 21h 
           
           ; INPUT 2 FROM USER
          ;X------------------X
               mov ah,01h
                int 21h 
                
                     ;LOGIC                      
                  ;X----------X 
                  
                    mov bl,al 
                    
                    
       ; NEW LINE
     ;X------------X 
        mov dl,10
        mov ah,02h
        int 21h
     
        mov dl,13
        mov ah,02h
        int 21h


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
 
       mov dx,offset var1
       mov ah,09h 
       int 21h 
 
               ;LOGIC
            ;X--------X
             mov dl,cl
             add dl,48
             mov ah,02h
             int 21h 
             
             
                  ;DECIMAL POINT(.)
                ;X-----------------X
   
                     mov dl,"."
                     mov ah , 02
                     int 21h
            
         ;LOGIC
       ;X--------X 
           
         mov dl,ch
         add dl,48
        mov ah,02h
          int 21h 
 
        ; NEW LINE
     ;X------------X  
     
        mov dl,10
        mov ah,02h
        int 21h
     
        mov dl,13
        mov ah,02h
        int 21h
     
         
            ;REMIANDER LOGIC(R)
         ;X-----------------------X  
         
         
; PRINTING MESSAGE
             
mov dx,offset msg
mov ah,09h 
int 21h 
          
             ;LOGIC
          ;X---------X 
          
          mov dl,ch
          add dl,48
          mov ah,02h
          int 21h 
   
       ; NEW LINE
     ;X------------X 
   
       mov dl,10
       mov ah,02h
       int 21h
   
       mov dl,13
       mov ah,02h
       int 21h  
   
   ;QUOTIENT LOGIC (Q)
 ;X--------------------X  
 

; PRINTING MESSAGE    
mov dx,offset var
mov ah,09h 
 int 21h
   
             ;LOGIC
          ;X---------X
          
           mov dl,cl
           add dl,48
           mov ah,02h
           int 21h 
 
   ; NEW LINE
;X------------X 
         
    mov dl,10
    mov ah,02h
    int 21h
     
    mov dl,13
    mov ah,02h
    int 21h
    
 ; PRINTING MESSAGE
               
     mov dx,offset VAR2
     mov ah,09h 
     int 21H
         
    
    
    main endp
end main
ret