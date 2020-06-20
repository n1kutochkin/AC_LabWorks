TITLE Генерация случайных строк (template.asm)

;Описание программы: генерация случайных строк
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc
.data
	;(переменные)

.code
main Proc

    qStrings = 20
    stringLength = 10
    firstLetter = 'A'
    _length = 26

    mov ecx, qStrings

    loop1:
          mov ebx, ecx
          mov ecx, stringLength
          loop2:
                mov eax, _length
                call RandomRange

                add eax, firstLetter
                call WriteChar
          loop loop2

          mov ecx, ebx
          call CrLf
    loop loop1
	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
