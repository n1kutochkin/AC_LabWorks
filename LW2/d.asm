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
	;(переменные)


.code
main Proc

    xor EAX, EAX
    value = 0FFh

    mov al, value
    call DumpRegs

    inc al
    mov edx, mes1
    call WriteString
    call DumpRegs

    inc al
    mov edx, mes2
    call WriteString
    call DumpRegs
	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
