.data
	msg1: .asciiz "\nDigite o primeiro número: "
	msg2: .asciiz "\nDigite o segundo número: "
	msg3: .asciiz "\nRegistrador 1: "
	msg4: .asciiz "\nRegistrador 2: "
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = num1
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0 #t1 = num2
	
	#troca
	add $t3, $t0, 0
	add $t0, $t1, 0
	add $t1, $t3, 0
	
	#num 1
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	#num2
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	