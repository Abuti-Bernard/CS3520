#  print the larger of two integers
# s0 = a, s1 = b, s2 = larger

.data
a:   .word 17
b:   .word 42
msg: .string "Larger: "

.text
main:
    la   t0, a
    lw   s0, 0(t0)          # s0 = a
    la   t0, b
    lw   s1, 0(t0)          # s1 = b

    mv   s2, s0             # larger = a
    bge  s0, s1, print      # if a >= b, keep a
    mv   s2, s1             # else larger = b

print:
    la   a0, msg
    li   a7, 4              # print string
    ecall
    mv   a0, s2
    li   a7, 1              # print integer
    ecall
    li   a0, 10
    li   a7, 11             # print newline
    ecall

    li   a7, 10             # exit
    ecall
