.data
	num1: .float 2.5
	msg: .asciiz "\nSoma: "
.text
main:
	#load single
	l.s $f1, num1
	
	#add single
	add.s $f2, $f1, $f1
	
	#Mensagem
	li $v0, 4
	la $a0, msg
	syscall

	#print
	li $v0, 2 #código v0 pra float

	mov.s $f0, $f2 #store single
	syscall
	
	