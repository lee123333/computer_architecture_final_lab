.section .text
.globl _start

_start:
    # 初始化寄存器
    li x1, 0b10101010        # x1 = 0b10101010
    li x2, 0b11001100        # x2 = 0b11001100
    li x3, 0                # 用於存放結果
    li x4, 0                # 用於存放結果
    li x5, 0                # 用於存放結果

    # B extension: andn
    andn x3, x1, x2         # x3 = x1 & ~x2
                            # 預期 x3 = 0b00101010

    # B extension: clz
    clz x4, x1              # x4 = 前導零的個數
                            # 預期 x4 = 24 (因為 x1 = 0b10101010)

    # B extension: bext
    li x6, 0b10101010       # 用於 mask
    bext x5, x1, x6         # x5 = 從 x1 中摘取 x6 指定的位元
                            # 預期 x5 = 0b1010

    # 測試完成，進入無限循環
done:
    j done
