.data
	msg1: .asciiz "\nDigite o comprimento do terreno: "
	msg2: .asciiz "\nDigite a largura do terreno: "
	msg3: .asciiz "\nÁrea do terreno: "
.text
main: 
	#Captação comprimento
	li $v0, 4
	la $a0, msg1
	syscall
	
	#Cópia comprimento
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = Comprimento
	
	#Captação largura
	li $v0, 4
	la $a0, msg2
	syscall
	
	#Cópia largura
	li $v0, 5
	syscall
	add $t1, $v0, 0 #t1 = Largura
	
	mul $t2, $t0, $t1 # t2 = t0 * t1
	
	#Mostra área
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall