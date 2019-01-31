# MIPS array stuff
.data
intArray: .space 40
newLine: .asciiz "\n"
prompt: .asciiz "Enter 10 value of the array"
.text
    main:
    li $v0, 4
    la $a0, prompt
    syscall
    li $v0,4
    la $a0, newLine
    syscall
    li $v0,5
    syscall
    add $s0,$zero,$v0
     li $v0,5
    syscall
     add $s1,$zero,$v0
     li $v0,5
    syscall
    add $s2,$zero,$v0
     li $v0,5
    syscall
    add $s3,$zero,$v0
     li $v0,5
    syscall
    add $s4,$zero,$v0
     li $v0,5
    syscall
    add $s5,$zero,$v0
     li $v0,5
    syscall
    add $s6,$zero,$v0
     li $v0,5
    syscall
    add $s7,$zero,$v0
     li $v0,5
    syscall
    add $t8,$zero,$v0
     li $v0,5
    syscall
    add $t9,$zero,$v0
#Call a routine that loads an array with integers from 1 to N
addi $t0,$zero,0
sw $s0,intArray($t0)
addi $t0,$t0,4
sw $s1,intArray($t0)
addi $t0,$t0,4
sw $s2,intArray($t0)
addi $t0,$t0,4
sw $s3,intArray($t0)
addi $t0,$t0,4
sw $s4,intArray($t0)
addi $t0,$t0,4
sw $s5,intArray($t0)
addi $t0,$t0,4
sw $s6,intArray($t0)
addi $t0,$t0,4
sw $s7,intArray($t0)
addi $t0,$t0,4
sw $t8,intArray($t0)
addi $t0,$t0,4
sw $t9,intArray($t0)
addi $t0,$t0,4
jal while #call the procedure
addi $t0,$zero,0
while: 
	bne $t0, 40, exit
	lw $t6, intArray($t0)
	addi $t0,$t0,4
	syscall		
	j while
	
exit:
	li $v0, 10
	syscall
