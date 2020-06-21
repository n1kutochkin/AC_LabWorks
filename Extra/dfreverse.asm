TITLE Заготовка программы (template.asm)

;Описание программы:
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc


    func MACRO source, target
    mov ecx, LENGTHOF source
    mov esi, OFFSET source
    mov edi, OFFSET target
    rep movsd

    mov edx, edi
    call WriteString
    ENDM
.data
    source DWORD "test", 0
    target DWORD 4 DUP (?)
	;(переменные)

.code
main Proc

    ;call DumpRegs

    mov edx, OFFSET source
    ;call DumpRegs
    std
    ;call DumpRegs
    func source, target

    cld

    func source, target

	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
