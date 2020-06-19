TITLE Дни недели (c.asm)

;Описание программы: Дни недели
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc
.data
    mon EQU <Monday>
    tue EQU <Tuesday>
    wed EQU <Wednesday>
    thu EQU <Thursday>
    fri EQU <Friday>
    sat EQU <Saturday>
    sun EQU <Sunday>

    week WORD mon, tue, wed, thu, fri, sat, sun
	;(переменные)

.code
main Proc
	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
