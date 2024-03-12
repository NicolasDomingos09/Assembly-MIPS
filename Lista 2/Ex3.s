.data
	msg1: .asciiz "\nDigite o seu mês de nascimento: "
	msg2: .asciiz "\nDigite o seu ano de nascimento: "
	msg3: .asciiz "\nDigite o mês atual: "
	msg4: .asciiz "\nDigite o ano atual: "
	msg5: .asciiz "\nSua idade: "

.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #to = mes nascimento
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0 #t1 = ano nascimento
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0 #t2 = mes atual
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 5
	syscall
	add $t3, $v0, 0 #t3 = ano atual
	
	#anos - meses
	mul $t1, $t1, 12
	mul $t3, $t3, 12
	
	add $t4, $t0, $t1 # = total nascimento
	add $t5, $t2, $t3 # = total atual
	
	sub $t6, $t5, $t4
	
	#fim
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t6, 0
	syscall