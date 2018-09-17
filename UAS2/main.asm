;
; UAS2.asm
;
; Created: 1/8/2018 11:25:53 PM
; Author : FX46
;


;tuliskan program untuk menghitung jumlah char "o" yang tersimpan di ROM 
;mulai alamat 0x200 sampai alamat0x20A, hasilnya disimpan di R16

ldi ZH, high(data<<1)
ldi ZL, low(data<<1)
ldi r16,0

L1:	lpm r20, Z+
	cpi r20,0
	breq stop
	cpi r20, 'O'
	brne L1
	inc r16
	rjmp L1

stop:	rjmp stop

.org 0x200
data : .db "HELLO WORLD",0
