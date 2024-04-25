.data
    msg1: .asciiz "\nInsira um valor: "
    msgfim: .asciiz "\nResultado da série: "
    um: .float 1.0
.text
main:
    li $v0, 4
    la $a0, msg1 
    syscall

    li $v0, 6
    syscall
    mov.s $f1, $f0 #valor me f1
    l.s $f5, um
    l.s $f2, um
    j laco

laco:
    #contadora - $t1
    div.s $f3, $f5, $f2 #operação
    add.s $f4, $f4, $f3 #acumulador
    add.s $f2, $f2, $f5 #contador

    c.le.s $f2, $f1
    bc1t laco
    j fim

fim:
    #print
    li $v0, 4
    la $a0, msgfim
    syscall
    
    li $v0, 2
    mov.s $f12, $f4
    syscall
