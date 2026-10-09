#  count the even elements of an array
# t0 = base address, t1 = n, t2 = i, s0 = count

.data
arr: .word 3, 8, 5, 12, 7, 4, 10, 1
n:   .word 8
msg: .string "Even count: "

.text
main:
    la   t0, arr            # t0 = &arr[0]
    la   t1, n
    lw   t1, 0(t1)          # t1 = n
    li   t2, 0              # i = 0
    li   s0, 0              # count = 0

loop:
    bge  t2, t1, done       # exit when i >= n
    slli t3, t2, 2          # offset = i * 4
    add  t3, t0, t3         # address of arr[i]
    lw   t4, 0(t3)          # t4 = arr[i]
    andi t5, t4, 1          # lowest bit: 0 means even
    bnez t5, skip           # odd -> skip
    addi s0, s0, 1          # count++
skip:
    addi t2, t2, 1          # i++
    j    loop

done:
    la   a0, msg
    li   a7, 4
    ecall
    mv   a0, s0
    li   a7, 1
    ecall
    li   a0, 10
    li   a7, 11
    ecall

    li   a7, 10
    ecall
