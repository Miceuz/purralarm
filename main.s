	.file	"main.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.startTimer,"ax",@progbits
.global	startTimer
	.type	startTimer, @function
startTimer:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,0x30
	ori r24,lo8(2)
	out 0x30,r24
	ldi r24,lo8(-128)
	out 0x36,r24
	ldi r24,lo8(1)
	out 0x3c,r24
	in r24,0x39
	ori r24,lo8(2)
	out 0x39,r24
	in r24,0x33
	ori r24,lo8(4)
	out 0x33,r24
	ret
	.size	startTimer, .-startTimer
	.section	.text.__vector_9,"ax",@progbits
.global	__vector_9
	.type	__vector_9, @function
__vector_9:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
	push r25
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	lds r24,seconds
	lds r25,seconds+1
	adiw r24,1
	sts seconds+1,r25
	sts seconds,r24
/* epilogue start */
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_9, .-__vector_9
	.section	.text.__vector_10,"ax",@progbits
.global	__vector_10
	.type	__vector_10, @function
__vector_10:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
/* epilogue start */
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_10, .-__vector_10
	.section	.text.__vector_6,"ax",@progbits
.global	__vector_6
	.type	__vector_6, @function
__vector_6:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	sbi 0x1b,3
	lds r24,phase
/* #APP */
 ;  38 "main.c" 1
	nop
 ;  0 "" 2
 ;  39 "main.c" 1
	nop
 ;  0 "" 2
/* #NOAPP */
	cpi r24,lo8(1)
	brne .L5
	rjmp .L6
.L5:
/* #APP */
 ;  43 "main.c" 1
	nop
 ;  0 "" 2
 ;  44 "main.c" 1
	nop
 ;  0 "" 2
 ;  45 "main.c" 1
	nop
 ;  0 "" 2
 ;  46 "main.c" 1
	nop
 ;  0 "" 2
 ;  47 "main.c" 1
	nop
 ;  0 "" 2
 ;  48 "main.c" 1
	nop
 ;  0 "" 2
 ;  49 "main.c" 1
	nop
 ;  0 "" 2
 ;  50 "main.c" 1
	nop
 ;  0 "" 2
 ;  51 "main.c" 1
	nop
 ;  0 "" 2
/* #NOAPP */
.L6:
	cbi 0x1b,3
	lds r18,purrCounter
	lds r24,phaseLength
	mov r25,r18
	subi r25,lo8(-(1))
	sts purrCounter,r25
	clr r19
	sbrc r18,7
	com r19
	ldi r25,0
	cp r24,r18
	cpc r25,r19
	brge .L4
	sts purrCounter,__zero_reg__
	lds r24,phase
	cpi r24,lo8(1)
	brne .L8
	sts phase,__zero_reg__
	rcall rand
	movw r18,r24
	sbrs r25,7
	rjmp .L9
	subi r18,1
	sbci r19,-16
.L9:
	ldi r25,12
	1:
	asr r19
	ror r18
	dec r25
	brne 1b
	subi r18,lo8(-(45))
	rjmp .L11
.L8:
	ldi r24,lo8(1)
	sts phase,r24
	rcall rand
	movw r18,r24
	sbrs r25,7
	rjmp .L10
	subi r18,1
	sbci r19,-16
.L10:
	ldi r24,12
	1:
	asr r19
	ror r18
	dec r24
	brne 1b
	subi r18,lo8(-(25))
.L11:
	sts phaseLength,r18
.L4:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_6, .-__vector_6
	.section	.text.startPurr,"ax",@progbits
.global	startPurr
	.type	startPurr, @function
startPurr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	in r24,0x2e
	ori r24,lo8(8)
	out 0x2e,r24
	ldi r24,lo8(-49)
	ldi r25,lo8(4)
	out 0x2a+1,r25
	out 0x2a,r24
	ldi r24,lo8(1)
	ldi r25,0
	out 0x28+1,r25
	out 0x28,r24
	sbi 0xc,1
	in r24,0x2e
	ori r24,lo8(1)
	out 0x2e,r24
	ret
	.size	startPurr, .-startPurr
	.section	.text.stopPurr,"ax",@progbits
.global	stopPurr
	.type	stopPurr, @function
stopPurr:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	out 0x2e,__zero_reg__
	ret
	.size	stopPurr, .-stopPurr
	.section	.text.auxOutOn,"ax",@progbits
.global	auxOutOn
	.type	auxOutOn, @function
auxOutOn:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbi 0x1b,1
	ret
	.size	auxOutOn, .-auxOutOn
	.section	.text.auxOutOff,"ax",@progbits
.global	auxOutOff
	.type	auxOutOff, @function
auxOutOff:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cbi 0x1b,1
	ret
	.size	auxOutOff, .-auxOutOff
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  94 "main.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	rcall startTimer
	out 0x1b,__zero_reg__
	out 0x18,__zero_reg__
	in r24,0x1a
	ori r24,lo8(74)
	out 0x1a,r24
	in r24,0
	ori r24,lo8(3)
	out 0,r24
	sbi 0x8,7
	in r24,0x35
	andi r24,lo8(-25)
	out 0x35,r24
	in r24,0x35
	ori r24,lo8(32)
	out 0x35,r24
	rcall startPurr
	rcall auxOutOn
	rjmp .L17
.L18:
/* #APP */
 ;  108 "main.c" 1
	sleep
	
 ;  0 "" 2
/* #NOAPP */
.L17:
	lds r24,seconds
	lds r25,seconds+1
	sbiw r24,60
	brlo .L18
	out 0x2e,__zero_reg__
	rcall auxOutOff
.L23:
	lds r24,seconds
	lds r25,seconds+1
	cpi r24,-127
	sbci r25,112
	brlo .L19
	rcall startPurr
	rcall auxOutOn
	rjmp .L20
.L21:
/* #APP */
 ;  121 "main.c" 1
	sleep
	
 ;  0 "" 2
/* #NOAPP */
.L20:
	lds r24,seconds
	lds r25,seconds+1
	cpi r24,112
	sbci r25,113
	brlo .L21
	rcall auxOutOff
.L22:
/* #APP */
 ;  128 "main.c" 1
	sleep
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L22
.L19:
/* #APP */
 ;  131 "main.c" 1
	sleep
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L23
	.size	main, .-main
.global	phaseLength
	.section	.data.phaseLength,"aw",@progbits
	.type	phaseLength, @object
	.size	phaseLength, 1
phaseLength:
	.byte	30
.global	phase
	.section	.bss.phase,"aw",@nobits
	.type	phase, @object
	.size	phase, 1
phase:
	.zero	1
	.comm	i,1,1
.global	purrCounter
	.section	.bss.purrCounter,"aw",@nobits
	.type	purrCounter, @object
	.size	purrCounter, 1
purrCounter:
	.zero	1
.global	seconds
	.section	.bss.seconds,"aw",@nobits
	.type	seconds, @object
	.size	seconds, 2
seconds:
	.zero	2
	.ident	"GCC: (GNU) 4.7.0"
.global __do_copy_data
.global __do_clear_bss
