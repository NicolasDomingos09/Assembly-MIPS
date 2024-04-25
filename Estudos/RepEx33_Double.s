.data
    msg1: .asciiz "\nInsira um valor: "
    msgfim: .asciiz "\nResultado da série: "
    um: .double 1.0
.text
main:
    li $v0, 4
    la $a0, msg1 
    syscall

    li $v0, 7
    syscall
    mov.d $f2, $f0 #valor em f2
    l.d $f8, um
    l.d $f4, um
    j laco

laco:
    #contadora - $t1
    div.d $f10, $f8, $f4 #operação
    add.d $f14, $f14, $f10 #acumulador
    add.d $f4, $f4, $f8 #contador

    c.le.d $f4, $f2
    bc1t laco
    j fim

fim:
    #print
    li $v0, 4
    la $a0, msgfim
    syscall
    
    li $v0, 3
    mov.d $f12, $f14
    syscall
