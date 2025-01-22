.globl _start

.data
    multiplier: .word -9
    multiplicand: .word 7
    result: .word 0

_start:

    la a0, multiplier         # Load multiplier address
    lw a1, 0(a0)              # Load multiplier value
    la a2, multiplicand       # Load multiplicand address
    lw a3, 0(a2)              # Load multiplicand value

    mul t0, a1, a3            # Perform multiplication (t0 = a1 * a3)

    la a4, result             # Load result address
    sw t0, 0(a4)              # Store final result

loop:
    j loop