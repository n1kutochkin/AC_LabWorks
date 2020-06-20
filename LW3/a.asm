TITLE Числа Фибоначчи (a.asm)

;Описание программы: программа чисел Фибоначчи
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc
.data
	;(переменные)

.code
main Proc

  start = 1
  quantityOfNumbers = 5

  xor eax, eax

  mov al, start
  mov bl, start
  mov ecx, quantityOfNumbers
  call DumpRegs

notch:
  add bl, al
  xchg bl, al
  call DumpRegs
  loop notch

	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
