TITLE Ввод и вывод массива чисел (b.asm)

;Описание программы:
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc

    clearDump MACRO
      xor eax, eax
      xor ebx, ebx
      xor ecx, ecx
      xor edx, edx
    ENDM

    setI MACRO i
      mov ecx, i
    ENDM

    moveToMemory MACRO _data
      mov esi, OFFSET _data
      mov ecx, LENGTHOF _data
      mov ebx, TYPE _data
    ENDM


.data
    arr BYTE 10 DUP (?)
	;(переменные)

.code
main Proc

  clearDump
  setI LENGTHOF arr

  mov esi, OFFSET arr

notch:

    call ReadInt
    mov [esi], EAX
    add esi, TYPE arr
    loop notch

    moveToMemory arr

    call DumpMem
	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
