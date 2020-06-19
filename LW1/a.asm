TITLE вычитание трех 16-ти разрядных целых чисел (a.asm)

;Описание программы: вычитание трех  16-ти разрядных целых числа
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата: 				Изменено:

INCLUDE Irvine32.inc
.data

	val1 DWORD 30h
	val2 DWORD 40h
	val3 DWORD 50h
	FinalVal dword ?
	mes BYTE "NUMBER IN EAX is 030h",0

.code
main PROC
	mov edx, OFFSET mes
	call WriteString
	mov eax, 030h
	call DumpRegs
	sub eax, 010h
	call DumpRegs
	sub eax, 010h
	call DumpRegs
	sub eax, 010h
	call DumpRegs
exit
main ENDP

END main
