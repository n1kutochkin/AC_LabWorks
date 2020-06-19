TITLE CF Flag checking (a.asm)

;Описание программы: проверка установки и сброса флага CF
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc
.data


.code
main PROC
	mov eax, 0000h
	mov al, 0FFh
	call DumpRegs
	add al, 1
	call DumpRegs
	mov al, 0FEh
	add al, 1
	call DumpRegs
	mov al, 0FFh
	call DumpRegs
	inc al ; при операции inc не срабатывает флаг CF
	call DumpRegs

exit
main ENDP

END main
