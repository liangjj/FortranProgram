PROGRAM IO
	IMPLICIT NONE
	REAL :: A=0
	INTEGER :: I=0,n
	CHARACTER :: S="AB"
	CHARACTER(50) :: FMTC(2)
	OPEN(UNIT=10,FILE="../DATA/IO.DAT")
	n=24
	! WRITE(FMTC,"('(',I2,'(F10.2,I6,A1))')")n
	WRITE(FMTC(1),"('(',I2,'(F10.2,I6,A1))')")n
	WRITE(FMTC(2),*)'(',n/2,'(F10.2,I6,A1))'
	! WRITE(10,FMTC(1:LEN_TRIM(FMTC)))(A,I,S,I=1,n)
	WRITE(10,FMTC(2))(A,I,S,I=1,n)
	WRITE(10,"(24(F10.2,I6,A5))")(A,I,S,I=1,n)
	WRITE(10,FMTC(1))(A,I,S,I=1,n)
	WRITE(10,*)FMTC(1)
	WRITE(10,*)FMTC(2)
END