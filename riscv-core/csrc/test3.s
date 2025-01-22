.globl _start
_start:
        # 初始化寄存器
        addi t1,x0, 0              # t1 = low = 0
        addi t2, x0,100             # t2 = high = N
        addi t0, x0,100
binary_search:
        # 檢查 low > high
        bgt t1, t2, loop

        # mid = (low + high) / 2
        add t3, t1, t2        # t3 = low + high
        srai t3, t3, 1        # t3 = mid = (low + high) / 2

        # mid_squared = mid * mid
        mul t4, t3, t3        # t4 = mid * mid

        # 比較 mid_squared 與 N
        blt t4, t0, set_low    # if mid_squared < N
        beq t4, t0, set_result # if mid_squared == N

        # mid_squared > N
        add t2, t3, x0             # high = mid - 1
        addi t2, t2, -1
        j binary_search

set_low:
        # low = mid + 1
        addi t1, t3, 1
        j binary_search

set_result:
        # 找到精確平方根
        add t1, t3,x0
loop:
    j loop 