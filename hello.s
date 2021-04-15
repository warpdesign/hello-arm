/* -- Code section */
.text

/* Ensure function section starts 4 byte aligned */
.balign 4
.global main
main:
    mov r1, #1
    mov r2, #0
loop:
    cmp r1, #100
    bgt end
    add r2, r2, r1  /* x = x + y */
    add r1, r1, #1  /* i++ */
    b loop


end:
    mov r0, r2
    bx lr
