MODULE AC
	IMPLICIT NONE
	INTEGER(8),ALLOCATABLE,TARGET :: A(:) 
	CONTAINS
	SUBROUTINE AB(C)
		IMPLICIT NONE
		INTEGER(8),ALLOCATABLE :: C(:) 
		ALLOCATE(C(3))
		C=3
		WRITE(*,*)C
	END SUBROUTINE
END MODULE
		

PROGRAM TIMETEST
	USE AC
	IMPLICIT NONE
	CALL AB(A)
	WRITE(*,*)A
END
	