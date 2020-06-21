TITLE Генератор строк разного цвета с определенной частотой (main.asm)

;Описание программы:
;Автор: n1kutochkin
;Дата создания: 19.06.2020
;Исправления:
;Дата:				Изменено:

INCLUDE Irvine32.inc

  outputString MACRO color, text
      call ClrScr
      mov eax, color
      call SetTextColor
      mov edx, OFFSET text
      call WriteString

  ENDM

.data

    myText BYTE "Look at Me!", 0, 0Dh, 0Ah
    whiteText BYTE "This is white text", 0, 0Dh, 0Ah
    blueText BYTE "This is blue text", 0, 0Dh, 0Ah
    greenText BYTE "This is green text", 0, 0Dh, 0Ah

    color BYTE ?

	;(переменные)

.code

outputStringProc PROC color:BYTE, text:BYTE
    call ClrScr
    mov eax, color
    call SetTextColor
    mov edx, OFFSET text
    call WriteString
ENDP


main Proc

    quantityOfStrs = 20
    range = 10

    outputString white, myText
    mov eax, 2000
    call Delay

    mov ecx, quantityOfStrs

    loop1:
          mov eax, range
          call RandomRange

          mov ebx, EAX


          .IF ebx < 2
              ;outputString white, whiteText
              invoke outputStringProc, white, whiteText
          .ELSEIF ebx == 3
              ;outputString blue, blueText
              invoke outputStringProc, blue, blueText
          .ELSE
              ;outputString green, greenText
              invoke outputStringProc, green, greenText
          .ENDIF

          mov eax, 500
          call Delay

    loop loop1

    mov eax, white
    call SetTextColor

	;(программный код основной процедуры)

exit
main ENDP
	;(код дополнительных процедур)
END main
