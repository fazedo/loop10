      PROGRAM EQUACAO_QUADRATICA
      IMPLICIT NONE
      REAL :: A, B, C
      REAL :: DELTA
      REAL :: X, Y

      PRINT *, "Boas vindas"
10    PRINT *, "Entre com o coeficiente a:"
      READ *, A
      IF (A /= 0) GOTO 20
      PRINT *, "O coeficiente a deve ser diferente de zero!"
      GOTO 10
  
20    PRINT *, "Entre com o coeficiente b:"
      READ *, B

      PRINT *, "Entre com o coeficiente c:"
      READ *, C

      DELTA = B**2 - 4.0 * A * C
    
      IF (DELTA) 100, 200, 300

100   PRINT *, "Par de raizes complexas conjugadas."
      DELTA = SQRT(-DELTA)
      X = -B / (2.0 * A)
      Y = DELTA / (2.0 * A)
      PRINT *, X, "+/-", Y, "i"
      GOTO 999


200   PRINT *, "Raiz real de multiplicidade dois."
      X = -B / (2.0 * A)
      PRINT *, X
      GOTO 999


300   PRINT *, "Duas raizes reais e distintas."
      DELTA = SQRT(DELTA)
      IF (B) 310, 320, 330

310   X = (-B + DELTA) / (2.0 * A)
      Y = C / X
      GOTO 390

320   X = DELTA / (2.0 * A)
      Y = -X
      GOTO 390

330   X = (-B - DELTA) / (2.0 * A)
      Y = C / X

390   PRINT *, X, Y

999   continue

      END PROGRAM EQUACAO_QUADRATICA
