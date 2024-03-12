.data
	msg1: .asciiz "\nDigite um número inteiro entre 0 e 100 (insira um número negativo para finalizar o processo): "
	msg2: .asciiz "\nQuantidade de números no intervalo de 0 - 25: "
	msg3: .asciiz "\nQuantidade de números no intervalo de 26 - 50: "
	msg4: .asciiz "\nQuantidade de números no intervalo de 51 - 75: "
	msg5: .asciiz "\nQuantidade de números no intervalo de 76 - 100: "
.text

main:
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, 0 #t0 = num
	
	blt $t0, 0, finalizacao
	bgt $t0, 100, main
	
	ble $t0, 25, intervalo25
	ble $t0, 50, intervalo50
	ble $t0, 75, intervalo75
	ble $t0, 100, intervalo100
	
intervalo25:
	add $t1, $t1, 1
	j main	
	
intervalo50:
	add $t2, $t2, 1
	j main
	
intervalo75:
	add $t3, $t3, 1
	j main
	
intervalo100:
	add $t4, $t4, 1
	j main

finalizacao:
	#intervalo 1
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t1, 0
	syscall
	
	#intervalo 2
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 1
	add $a0, $t2, 0
	syscall
	
	#intervalo 3
	li $v0, 4
	la $a0, msg4
	syscall
	
	li $v0, 1
	add $a0, $t3, 0
	syscall
	
	#intervalo 4
	li $v0, 4
	la $a0, msg5
	syscall
	
	li $v0, 1
	add $a0, $t4, 0
	syscall