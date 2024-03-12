.data
	msg1: .asciiz "\nDigite o valor da base maior: "
	msg2: .asciiz "\nDigite o valor da base menor: "
	msg3: .asciiz "\nDigite a altura do trapézio: "
	msg4: .asciiz "\nÁrea: "

.text
main:
	#Captação
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = base maior
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0 #t1 = base menor
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0 #t2 = altura
	
	#Operação
	add $t3, $t0, $t1 #t3 = base maior + base menor
	mul $t4, $t3, $t2 #t4 = bases * altura
	div $t5, $t4, 2 #t5 = tudo / 2
	
	#Finalização
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t5, 0
	syscall	
	