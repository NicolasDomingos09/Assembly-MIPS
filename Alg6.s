.data
	msg1: .asciiz "\nDigite o primeiro número: "
	msg2: .asciiz "\nDigite o segundo número: "
	msg3: .asciiz "\nNúmeros Iguais. Soma: "
	msg4: .asciiz "\nNúmeros diferentes. Multiplicação: "

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
	
	beq $t0, $t1, Se
	j Senao

Se: 
	add $t3, $t0, $t1 #t3 = t0 + t1
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	j fimse
	
Senao:
	mul $t3, $t0, $t1 #t3 = A * B
	
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
fimse: