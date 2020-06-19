TITLE ZF checking (template.asm)

;Описание программы: проверка установления ZF при операции сложения и вычитания
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc
.data
	;(переменные)

.code
main Proc

    xor EAX, EAX
    mov ecx, 1
    call DumpRegs
    sub ecx, 1
    call DumpRegs
    mov al, 7Fh
    call DumpRegs
    inc al
    call DumpRegs
    add al, -2
    call DumpRegs

	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
