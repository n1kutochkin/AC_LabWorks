TITLE OF checking (d.asm)

;Описание программы: проврека выстановки флага переполнения через сложение и
;вычитание
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc
.data

    mes1 BYTE "OF is 1 after increment"
    mes2 BYTE "OF is 0 after increment"
    value BYTE 127
	;(переменные)


.code
main Proc

    xor EAX, EAX

    mov al, value
    call DumpRegs

    inc al
    mov edx, OFFSET mes1
    call WriteString
    call DumpRegs

    inc al
    mov edx, OFFSET mes2
    call WriteString
    call DumpRegs
	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
