TITLE Очищение экрана, перемещения курсора и тд (c.asm)

;Описание программы: Программа чистит экран, перемещает курсор в центр
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


  ;cursorToX MACRO x
  ;cursorTo x 12
  ;ENDM

  ;cursorToY MACRO y
  ;cursorTo 39 y
  ;ENDM

  cursorToY MACRO
    inc dh
    call GotoXY
  ENDM

  cursorToX MACRO
    inc dl
    call GotoXY
  ENDM

.data
	;(переменные)

.code
main Proc

    call ClrScr

    cursorTo 39, 12
    ;cursorToCenter

    call ReadInt

    mov ebx, EAX

    cursorToY

    call ReadInt

    add eax, ebx

    cursorToX


    cursorTo 45, 15
    call WriteInt

	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
