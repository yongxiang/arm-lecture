	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r4, lr}
	mov r2, #0
	mov r1, #1	
	mov r4, r0
.Loop:
	subs r4, r4, #1
	ble .L4
	add r0, r1, r2
	mov r2, r1
	mov r1, r0
	b .Loop
.L4:	
	pop {r4, pc}		@EPILOG

	

	.size fibonacci, .-fibonacci
	.end
