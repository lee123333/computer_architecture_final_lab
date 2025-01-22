.globl _start

_start:

    # Set up the initial value for a0
    addi a0, x0, 8        # a0 = 8

    # Multiply a0 by itself (a1 = a0 * a0)
    mul a1, a0, a0        # a1 = a0 * a0
    
    # Division of a1 by a0 (a2 = a1 / a0)
    div a2, a1, a0        # a2 = a1 / a0 (integer division)
    
    # Unsigned division of a1 by a0 (a3 = a1 / a0)
    divu a3, a1, a0       # a3 = a1 / a0 (unsigned division)

    # Remainder of a1 divided by a0 (a4 = a1 % a0)
    rem a4, a1, a0        # a4 = a1 % a0 (remainder)

    # Signed remainder of a1 divided by a0 (a5 = a1 % a0)
    remu a5, a1, a0       # a5 = a1 % a0 (unsigned remainder)

loop:
    j loop 