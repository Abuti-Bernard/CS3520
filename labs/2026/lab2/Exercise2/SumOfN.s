# sum of the first N integers
# t1 = n, t2 = i, s0 = sum

.data
n:   .word 10
msg: .string "Sum: "

.text
main:
    la   t0, n
    lw   t1, 0(t0)          # t1 = n
    li   s0, 0              # sum = 0
    li   t2, 1              # i = 1

loop:
    bgt  t2, t1, done       # exit when i > n
    add  s0, s0, t2         # sum += i
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
