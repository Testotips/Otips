program pointertest
implicit none

integer, pointer :: p1, p2
integer, target :: t1, t2

p1 => t1 ; p2 => t2
t1 = 1 ; t2 = 2
print *, p1, p2, t1, t2
! 1, 2, 1, 2

p1 = 3 ; p2 = 4
print *, p1, p2, t1, t2
! 3, 4, 3, 4

p1 = p1 + p2
print *, p1, p2, t1, t2
! 7, 4, 7, 4

p1 => p2
print *, p1, p2, t1, t2
! 4, 4, 7, 4

p1 => t1 ; p2 => p1
print *, p1, p2, t1, t2
! 7, 7, 7, 4

p1 = 5
print *, p1, p2, t1, t2
! 5, 5, 5, 4

end program