.data
	msg1: .asciiz "\nDigite um valor inteiro: "
	msg2: .asciiz "\nN�mero par. Resultado: "
	msg3: .asciiz "\nN�mero �mpar. Resultado: "

.text
main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = Num
	
	rem $t1, $t0, 2 # Resto
	beq $t1, 0, se
	j senao
	
se:
	add $t2, $t0, 5
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	j fimse
senao:
	add $t2, $t0, 8
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall	
fimse: