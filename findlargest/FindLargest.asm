INCLUDE Irvine32.inc




.data
    array1   SDWORD  -5, 10, -3, 8, 15      ;  array 1
    array2  SDWORD  7, -2, 20, -6        ;  array 2
    array3  SDWORD  4, -9, 12            ;  array 3
    sz1    DWORD   ($ - array1) / 4     ; Size of array1 
    sz2    DWORD   ($ - array2) / 4     ; Size of array2
    sz3    DWORD   ($ - array3) / 4     ; Size of array3 
    temp   SDWORD ?
.code
main PROC
  
    mov esi, OFFSET array1   ; Pointer to array1
    mov ecx, sz1           ; Size of array1
    call Largest
    ; Display the largest number
    mov eax, temp
    call WriteInt
    call Crlf

    mov esi, OFFSET array2   ; Pointer to array2
    mov ecx, sz2             ; Size of array2
    call Largest
    ; Display the largest number
    mov eax, temp
    call WriteInt
    call Crlf


    mov esi, OFFSET array3   ; Pointer to array3
    mov ecx, sz3              ; Size of array3
    call Largest
    ; Display the largest number
    mov eax, temp
    call WriteInt
    call Crlf

  exit
main ENDP

Largest PROC  
    pusha                    ; Preserve all registers
    mov esi, ecx             ; Initialize esi to the current array pointer
    mov ecx, ecx             ; Use ecx as the loop counter
    mov eax, esi             ; Initialize temp with the first element
    mov temp, eax             ; temp with first element

 Compare:
  cmp ecx, 0             ;seeing if count is 0
  jl exitloop               ;exit loop
 mov eax, esi         ; Get the next element in the array
  cmp eax, temp          ; Compare to largest value
  jbe NotLarger          ; Jump if not larger
  mov temp, eax          ; mov new largest value to temp

  
  NotLarger:

  loop Compare         ; Continue looping until ecx becomes 0

  
 exitloop:
    popa
    ret


Largest ENDP


END main