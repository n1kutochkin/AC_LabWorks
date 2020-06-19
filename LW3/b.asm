TITLE Арифметическое выражение (b.asm)

;Описание программы: реализовть программу для исчсления выражения
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc
.data
     val1 SDWORD 8
     val2 SDWORD -15
     val3 SDWORD 20
	;(переменные)

.code
main Proc
    xor eax, eax

    mov eax, val2
    neg EAX

    add eax, 7

    sub eax, val3

    add eax, val1

    call DumpRegs
	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
