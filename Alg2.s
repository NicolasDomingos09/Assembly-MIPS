.data
	msg1: .asciiz "\nDigite a quantidade de camisetas pequenas: "
	msg2: .asciiz "\nDigite a quantiaded de camisetas médias: "
	msg3: .asciiz "\nDigite a quantidade de camisetas grandes: "
	msg4: .asciiz "\nValor da venda: "

.text
main:
	#Captação camisetas pequenas
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = camisetas pequenas
	
	#Captação camisetas médias
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0 #t1 - camisetas médias
	
	#Captação camisetas grandes
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 5
	syscall
	add $t2, $v0, 0 #t2 - camisetas grandes
	
	mul $t4, $t0, 10 #Valor camisetas pequenas
	mul $t5, $t1, 12 #Valor camisetas médias
	mul $t6, $t2, 15 #Valor camisetas grandes
	
	#Total
	add $t7, $t7, $t4
	add $t7, $t7, $t5
	add $t7, $t7, $t6
	
	#Finalização
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t7, 0	
	syscall
	