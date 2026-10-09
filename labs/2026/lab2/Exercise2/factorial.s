.data
arr:   .word 5

.glob main
main:
    lw a0, arr
    jal ra, factorial

    li a7,1
    ecall

    li a7, 10
    ecall
factorial:
       addi sp,sp, -8
       sw ra, 4(sp)
       sw a0, 0(sp)
 
       li t0, 1
       ble a0, t0, base_case
       
       addi a0, a0, -1
       jal ra, factorial

       lw t1, 0(sp)
       lw ra, 4(sp)
       addi sp, sp, 8

       mul a0, t1, a0
       jr ra


       base_case:
       li a0,1
       addi sp, sp, 8
       jr ra

       