# Arithmetic expression 
# Simple arithmetic expresssio, assignment

# assume variables are assigned to $s0, $s1,$s2,$s3,$s4 respect
add $s0, $s1, $s2 
# $s0 = g + h
add $s1, $s3, $s4 
# $s1 = i + j
sub $s0, $s0, $s1 
# f= (g+h)-(i+j)
# substitute $s0 a new value for $s0
# the more s you use the more memor is being comsume by the program
li $v0, 1
la $a0,($s0)
syscall