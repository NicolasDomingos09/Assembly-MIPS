.data
	msgcapt: .asciiz "\nDigite um valor inteiro: "
	msgresul: .asciiz "\nTermos: "
	espaco: .asciiz " "
.text

Main:
	li $v0, 4
	la $a0, msgcapt
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0
	#t1 - Valor 1
	#t2 - Valor 2
	li $t1, 0
	li $t2, 1
	
	li $v0, 4
	la $a0, msgresul
	syscall
	j laco

laco:
	
	#t3 - Contadora
	add $t4, $t1, $t2
	
	add $t2, $t1, 0
	add $t1, $t4, 00
	
	li $v0, 1
	add $a0, $t4, 0
	syscall
	
	li $v0, 4
	la $a0, espaco
	syscall
	
	add $t3, $t3, 1
	blt $t3, $t0, laco
	j fim
fim: