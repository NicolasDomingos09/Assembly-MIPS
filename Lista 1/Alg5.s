.data
	msg1: .asciiz "\nDigite o valor do primeito cateto: "
	msg2: .asciiz "\nDigite o valor do segundo cateto: "
	msg3: .asciiz "\nHipotenusa: "

.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = Cateto1
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0 #t1 = Cateto2
	
	#Operação
	mul $t2, $t0, $t0 #Cateto1
	mul $t3, $t1, $t1 #Cateto2
	add $t4, $t2, $t3 #Hipotenusa ao quadrado
	
	#raiz
	li $t5, 1 #primos
	bgt $t4, 0, raiz

raiz: 
	sub $t4, $t4, $t5
	add $t5, $t5, 2
	add $t6, $t6, 1 #contador - raiz	
	
	bge $t4, $t5, raiz
	j resultado
	
resultado:
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t6, 0
	syscall
