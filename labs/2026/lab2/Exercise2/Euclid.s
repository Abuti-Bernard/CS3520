#  GCD with Euclid's algorithm, as a procedure
# Arguments: a0 = a, a1 = b      Return value: a0 = gcd

.data
x:   .word 48
y:   .word 18
msg: .string "GCD: "

.text
main:
    la   t0, x
    lw   a0, 0(t0)          # a0 = x
    la   t0, y
    lw   a1, 0(t0)          # a1 = y
    jal  ra, gcd
    mv   s0, a0             # keep the result

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

gcd:
gcd_loop:
    beqz a1, gcd_done       # while (b != 0)
    rem  t0, a0, a1         # r = a % b
    mv   a0, a1             # a = b
    mv   a1, t0             # b = r
    j    gcd_loop
gcd_done:
    jalr x0, ra, 0          # return a0
