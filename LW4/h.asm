TITLE Разноцветный символ (template.asm)

;Описание программы: Разноцветный символ
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc

    clearDump MACRO
      xor eax, eax
      xor ebx, ebx
      xor ecx, ecx
      xor edx. edx
      ENDM

    getBuff MACRO reg, newVal
      mov ebx, reg
      mov ecx, newVal
      ENDM



.data
	;(переменные)

.code
main Proc

  i = 16
  ASCIISymbol = '0'

  mov ecx, i

  call ClrScr

  loop1:
        getBuff ecx, i
        loop2:
              mov eax, i
              mul ebx

              sub eax, i
              add eax, ecx
              dec eax

              call SetTextColor

              mov eax, ASCIISymbol
              call WriteChar
        loop loop2

        mov ecx, ebx
        call CrLf
  loop loop1

  mov eax, 16
  dec EAX
  call SetTextColor
	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
