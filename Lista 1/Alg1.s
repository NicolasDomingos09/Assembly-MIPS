.data
	msg1: .asciiz "\nDigite o comprimento do terreno: "
	msg2: .asciiz "\nDigite a largura do terreno: "
	msg3: .asciiz "\n�rea do terreno: "
.text
main: 
	#Capta��o comprimento
	li $v0, 4
	la $a0, msg1
	syscall
	
	#C�pia comprimento
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = Comprimento
	
	#Capta��o largura
	li $v0, 4
	la $a0, msg2
	syscall
	
	#C�pia largura
	li $v0, 5
	syscall
	add $t1, $v0, 0 #t1 = Largura
	
	mul $t2, $t0, $t1 # t2 = t0 * t1
	
	#Mostra �rea
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall