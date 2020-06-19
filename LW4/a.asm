TITLE Вывод одного выражения разными цветами (a.asm)

;Описание программы: вывести одно выражения разными цветами
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

  putText MACRO text
  mov edx, OFFSET text
  ENDM

  howManyMessages MACRO quantity
  mov ecx, quantity
  ENDM

.data
    simpleText BYTE "You're amazing! ^_^", 0Dh, 0Ah, 0
	;(переменные)

.code
main Proc

    clearDump
    putText simpleText
    howManyMessages 4
    mov eax, gray + (lightBlue * 16)

  notch:
      inc EAX
      call SetTextColor
      call WriteString

      loop notch

	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
