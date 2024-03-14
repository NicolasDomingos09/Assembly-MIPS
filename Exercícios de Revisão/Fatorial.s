.data
	msg1: .asciiz "\nDigite um número inteiro: "
    msgresul: .asciiz "\nFatorial: "
.text

Main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0
    #t1 - fat
    #t2 - inc
    li $t1, 1
    li $t2, 1
    j laco

laco:
    mul $t1, $t1, $t2 # fat *= inc
    add $t2, $t2, 1
    ble $t2, $t0, laco
    j fim
fim:
    li $v0, 4
    la $a0, msgresul
    syscall

    li $v0, 1
    add $a0, $t1, 0
    syscall