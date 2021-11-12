                  ;Print Function  
;x---------------------------------------------x 
 print macro p1
mov dl,p1   
mov ah,02
int 21h  
 endm     
        ;Output Function  
;x---------------------------------------------x
Output macro p1
mov dx,offset p1   
mov ah,09
int 21h  
endm 


;program to find Multiplication of Two Numbers
;x---------------------------------------------x 
.model small
.stack 100h
.data 

 msg db " ENTER FIRST VALUE---->$"    
 var db 0ah, " ENTER SECOND VALUE---->$"
 var1 db 0ah,"  RESULT----->$" 
 newLine db 0ah,0dh,"$"
.code 
main proc 
    
                 ;first  step
       
   ;take first value from the user and print 
   ;first value
;x----------------------------------------------x        
    mov ax,@data
mov ds,ax
mov dx,offset msg
mov ah,09h 
 int 21h  
       
       mov ah,01h
       int 21h
          
       mov bl,al
      sub bl,48
       
              ;new line logic
             ;x--------------x    
             
      Output newline
       
             ;second  step 
  
;take second value from the user and print
;second value  

;x------------------------------------------x
                
      Output msg
       
       mov ah,01h
       int 21h
       sub al,48 
        
           ;multiplication logic
         ;x----------------------x
          
       mul bl        
       aam
        
       mov bl,al       
     add bl,48
              
      mov ch,ah       
     add ch,48
                ;new line logic
               ;x--------------x
               
     Output  newline
     
     
                 ;final  step 
   
                 ;result print
   ;x---------------------------------------x
                    
   Output var1
     
     
    

     mov dl,ch
     mov ah,02h
     int 21h 
     
     
      mov dl,bl
     mov ah,02h
     int 21h     

      
           
;return statement 
Output newline
mov ah,4ch       
int 21h 
    
    
 main endp
end main


