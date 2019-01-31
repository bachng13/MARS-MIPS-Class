# adding and assigning numbers
.data
A: .word 8
B: .word 8
C: .word 16
D: .word 8
Z: .word 0
.text 
 lw $s0, A
 lw $s1, B
 lw $s2, C
 lw $s3, D
 lw $s4, Z
 
#adding Z=a+b
li $v0, 1
add $s4, $s0, $s1
syscall

#subtracting Z=a-b
li $v1, 1
sub $s4, $s0, $s1 
syscall 
#Z = (a+b) - 8
#li $v1 , 1
#add $s4, $s0, $s1
#sub $s4, $s4, 8
#syscall