TITLE Генератор случайных символов по экрану (g.asm)

;Описание программы:
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc
.data
	;(переменные)

.code
main Proc
    qCycles = 100
    _width = 79
    height = 24

    minTime = 10
    maxTime = 300

    mov ecx, qCycles

    call ClrScr

    loop1:
          mov eax, _width
          call RandomRange
          mov dl, al

          mov eax, height
          call RandomRange
          mov dh, al

          call GotoXY

          mov eax, 255

          call WriteChar

          mov eax, maxTime
          sub eax, minTime
          call RandomRange
          add eax, minTime

          call Delay
    loop loop1

    mov dh, height
    inc dh
    call GotoXY
	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
