TITLE Все типы данных (b.asm)

;Описание программы: все пройденные типы данных
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc
.data
    byteValue BYTE 0
    sbyteValue SBYTE 127
    wordValue WORD 65535
    swordValue SWORD -32768
    sdwordValue SDWORD -2147483648
    dwordValue DWORD 12345678h
    dbValue DB 'A'; директива Define byte
    dupValue BYTE 4 DUP ("Byte"); "Byte Byte Byte Byte"
    realValue REAL4 0.5
    TRI EQU <3>
	;(переменные)

.code
main Proc
	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
