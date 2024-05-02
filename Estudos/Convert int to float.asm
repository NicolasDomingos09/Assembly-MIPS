.data
.text
main:
	
	li $t1, 5
	mtc1.d $t1, $f0
	cvt.s.w $f2, $f0
	
	li $v0, 2
	mov.d $f12, $f2
	syscall
	