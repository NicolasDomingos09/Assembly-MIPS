.data
	msg1: .asciiz "\nDigite a quantidade de horas de trabalho: "
	msg2: .asciiz "\nDigite a quantidade de horas extras: "
	msg3: .asciiz "\nDigite a porcentagem de desconto: "
	msg4: .asciiz "\nSal�rio Bruto: R$ "
	msg5: .asciiz "\nSal�rio L�quido: R$ "
.text

main:
	#Capta��o HorasT
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = HorasT
	
	#Capta��o HorasEx
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0 #t1 = HorasEx
	
	#Capta��o Desconto
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0 #t2 = Desconto
	
	mul $t3, $t0, 10 #HorasT * 10
	mul $t4, $t1, 15 #HorasEx * 15
	add $t5, $t3, $t4 #Sal�rio Bruto
	mul $t6, $t5, $t2 
	div $t6, $t6, 100 #Desconto calculado
	sub $t7, $t5, $t6 #Sal�rio L�quido
	
	#Mostra Resultado
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t5, 0	
	syscall
	
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t7, 0
	syscall
