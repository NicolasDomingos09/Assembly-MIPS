.data
    msg1: .asciiz "\nInsira o primeiro valor real: "
    msg2: .asciiz "\nInsira o segundo valor real: "
    iguais: .asciiz "\nValores iguais"
    maior: .asciiz "\nMaior valor: "
    menor: .asciiz "\nMenor valor: "

.text
main:
    #real 1
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 6
    syscall
    mov.s $f1, $f0

    #real 2
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 6
    syscall
    mov.s $f2, $f0

    #f1 - real 1
    #f2 - real 2

    c.eq.s $f1, $f2 
    bc1t nsIguais #branch if floating point check is true
    c.lt.s $f1, $f2
    bc1t f1menor #branch if floating point check is true
    j f2menor

nsIguais:
    li $v0, 4
    la $a0, iguais
    syscall

    li $v0, 10
    syscall

f1menor:
    mov.s $f12, $f1
    li $v0, 4 
    la $a0, menor
    syscall

    li $v0, 2
    syscall

    mov.s $f12, $f2
    li $v0, 4 
    la $a0, maior
    syscall
    
    li $v0, 2
    syscall

    li $v0, 10
    syscall
f2menor:
    mov.s $f12, $f2
    li $v0, 4
    la $a0, menor
    syscall

    li $v0, 2
    syscall

    mov.s $f12, $f1
    li $v0, 4
    la $a0, maior
    syscall

    li $v0, 2
    syscall

    li $v0, 10
    syscall