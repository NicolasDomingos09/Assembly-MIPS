.data
	msg1: .asciiz "\nDigite o valor de A: "
	msg2: .asciiz "\nDigite o valor de B: "
	msg3: .asciiz "\nDigite o valor de C: "
	msg4: .asciiz "\nDuas raízes reais"
	msg5: .asciiz "\nUma raíz real"
	msg6: .asciiz "\nNenhuma raíz real"

.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = A
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0 #t1 = B
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0 #t1 = C
	
	# b²- 4. a .c
	mul $t3, $t1, $t1 
	mul $t4, $t0, 4 #4.a
	mul $t5, $t4, $t2 #t4.c
	sub $t6, $t3, $t5
	
	bgt $t6, 0, duas
	beq $t6, 0, uma
	blt $t6, 0, zero
	j fim
duas:
	li $v0, 4
	la $a0, msg4
	syscall
	j fim
uma:
	li $v0, 4
	la $a0, msg5
	syscall
	j fim
zero:
	li $v0, 4
	la $a0, msg6
	syscall
	j fim
fim:
