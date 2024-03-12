.data
	msg1: .asciiz "\nInsira (em centímetros) a altura de uma pessoa: "
	msg2: .asciiz "\nMenor altura do grupo: "
	msg3: .asciiz "\nMaior altura do grupo: "
.text

varmenor:
	li $t2, 1000
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = altura
	
	#contador
	add $t1, $t1, 1
	#Verificação
	blt $t0, $t2, menor
	bgt $t0, $t3, maior
	beq $t1, 15, finalizacao
	j main
	
menor:
	add $t2, $t0, 0
	blt $t1, 15, main
	beq $t1, 15, finalizacao
maior:	
	add $t3, $t0, 0
	blt $t1, 15, main
	beq $t1, 15, finalizacao
	
finalizacao:
	#Menor
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	#Maior
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
