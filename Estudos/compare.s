.data
# Define float variables
float_var1: .float 3.14
float_var2: .float 2.71

.text
.globl main
main:
    # Load float variables into floating point registers
    l.s $f0, float_var2
    l.s $f1, float_var1

    # Compare the float numbers
    c.lt.s 2, $f0, $f1  # Set $f2 to 1 if $f0 < $f1, else set to 0

    # Print the result
    mfc1 $a0, $f2
    li $v0, 1
    syscall

    # Terminate the program
    li $v0, 10
    syscall
