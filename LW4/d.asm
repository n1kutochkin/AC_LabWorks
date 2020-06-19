TITLE Заготовка программы (template.asm)

;Описание программы:
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc

      cursorTo MACRO x, y
          mov dl, x
          mov dh, y
          call GotoXY
      ENDM

      changeColor MACRO
          mov eax, gray + (lightRed * 16)
          call SetTextColor
      ENDM

      makeDelay MACRO
          mov eax, 2000
          call Delay
      ENDM


.data
    someData BYTE "Hello, World", 0
	;(переменные)

.code
main Proc

    mov edx, offset someData
    ;mov eax, 2000; 2 ms
    mov ecx, 3; 3 times

notch:
      ;cursorTo 39, 14
      changeColor
      call WriteString
      ;call Delay
      makeDelay
      call ClrScr
      loop notch

	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
