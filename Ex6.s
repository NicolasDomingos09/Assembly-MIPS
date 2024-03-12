.data
	msg1: .asciiz "\nDigite o primeiro número: "
	msg2: .asciiz "\nDigite o segundo número: "
	msg3: .asciiz "\nNúmeros iguais"
	msg4: .asciiz "\nNúmeros diferentes"
	msg5: .asciiz "\nMaior: "
	msg6: .asciiz "\nMenor: "

.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 - num 1

	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0	#t1 - num 2

	beq $t0, $t1, iguais
	bgt $t0, $t1, maior
	blt $t0, $t1, menor

iguais:
	li $v0, 4
	la $a0, msg3
	syscall
	j fim

maior:
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	
	li $v0, 4
	la $a0, msg6
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	j fim
	
menor:
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	li $v0, 4
	la $a0, msg6
	syscall
	
	li $v0, 1
	add $a0, $t0, 0
	syscall
	j fim	

fim: