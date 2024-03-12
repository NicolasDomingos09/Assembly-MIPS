.data
	msg1: .asciiz "\nDigite um valor inteiro positivo ou negativo: "
	msg2: .asciiz "\nNúmero positivo. Dobro: "
	msg3: .asciiz "\nNúmero negativo. Triplo: "
	msg4: .asciiz "\nZero digitado.Processo finalizado"
.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = Num
	
	beq $t0, 0, zero
	bgt $t0, 0, positivo
	j negativo

positivo:
	mul $t1, $t0, 2
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	j fimse

negativo:
	mul $t1, $t0, 3
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	j fimse
zero:
	li $v0, 4
	la $a0, msg4
	syscall
fimse:
