.data
	msg1: .asciiz "\nDigite o primeiro número: "
	msg2: .asciiz "\nDigite o segundo número(diferente de zero): "
	msg3: .asciiz "\nDivisão: "

.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = Num1

segundonum:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0 #t1 = Num2
	
	beq $t1, 0, segundonum
	
	div $t2, $t0, $t1
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
