TITLE Генератор случайных  чисел (e.asm)

;Описание программы: сделать генератор случайных чисел
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc


.data
	;(переменные)

.code
main Proc

    shift = 20
    max = 40
    i = 50

    mov ecx, i
    
notch:

      mov eax, max + 1
      call RandomRange

      sub eax, shift
      call WriteInt
      call CrLf

      loop notch


	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
