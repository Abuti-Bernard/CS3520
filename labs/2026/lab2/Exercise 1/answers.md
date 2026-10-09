## **Step 2**



**In C++ the loop body runs while i < n whereas in assembly, the body is the fall-through path and a branch can only jump away from it.**

**find max saves s1 but not ra as s1is a callee-saved register. it must restore the caller’s value before returning.** 

**That is why it saves s1 on the stack and reloads it at the end.**

**ra only needs saving if the procedure makes its own jal call.**





#### **pseudo instructions**

**li t0, 60	addi t0, x0, 60**

**li t1, 7	addi t1, x0, 7**

**mv a0, t2	addi a0, t2, 0**

**They are offered as they are easier to read...**

