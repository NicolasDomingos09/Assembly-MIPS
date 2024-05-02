.data
    msg: .asciiz "\nDigite um valor inteiro: "
    msgresul: .asciiz "\nResultado: "
.text
main:
    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 5
    syscall
    move $a0, $v0

    li $s1, 1
    li $s2, 1
    
    jal fact
    j fim

fact:
    mul $s1, $s1, $s2 # fat *= inc
    add $s2, $s2, 1
    ble $s2, $a0, fact
    
    move $s0, $s1
    jr $ra

fim:
    li $v0, 4
    la $a0, msgresul
    syscall

    li $v0, 1
    move $a0, $s0
    syscall