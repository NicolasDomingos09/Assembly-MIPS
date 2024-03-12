.data
	msg1: .asciiz "\nInsira o valor da compra: "
	msg2: .asciiz "\nInsira o valor da parcela: "
 	msg3: .asciiz "\nParcelas a serem pagas: "

.text
compra:
	li $v0, 4
	la $a0, msg1 
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 - compra
	
	blt $t0, 1000, compra
	bgt $t0, 9999, compra
	
parcela:
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, 0 #t1 - parcela
	
	blt $t1, 100, parcela
	bgt $t1, 500, parcela
	
pagamento:
	div $t2, $t0, $t1
	rem $t3, $t0, $t1
	
	bgt $t3, 0, final
	
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	j fim
final:
	add $t2, $t2, 1
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
fim: