.data
	msg1: .asciiz "\nDigite um número inteiro (maior que 100, menor que 1000): "
	msg2: .asciiz "\nCentena: "
	msg3: .asciiz "\nDezena: "
	msg4: .asciiz "\nUnidade: "
	
.text

main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #to = num
	
	blt $t0, 100, main
	bgt $t0, 999, main
	
	div $t1, $t0, 100 #t1 = num / 100
	rem $t2, $t0, 100 #t2 = resto num / 100
	rem $t3, $t2, 10  #t3 = unidade
	div $t2, $t2, 10  #t2 = dezena
	
	#Centena
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	#Dezena
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall

	#Unidade
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall