real function reais_distintas(a, b, sqrt_delta)
    implicit none
    real :: a, b, sqrt_delta, x
    if (b < 0) then 
        x = (-b + sqrt_delta) / (2.0 * a)

    else if (b == 0) then 
        x = sqrt_delta / (2.0 * a)
        
    else if (b > 0) then 
        x = (-b - sqrt_delta) / (2.0 * a)
    end if 
    reais_distintas = x
end function

program equacao_quadratica
    implicit none
    real :: reais_distintas
    real :: a, b, c
    real :: delta
    real :: x, y
    

    print *, "Boas vindas"
    do 
      print *, "Entre com o coeficiente a:"
      read *, a
      if (a /= 0) exit
      print *, "O coeficiente a deve ser diferente de zero!"
    end do
  
    print *, "Entre com o coeficiente b:"
    read *, b

    print *, "Entre com o coeficiente c:"
    read *, c

    delta = b**2 - 4.0 * a * c
    
    if (delta < 0) then
        print *, "Par de raizes complexas conjugadas."
        delta = sqrt(-delta)
        x = -b / (2.0 * a)
        y = delta / (2.0 * a)
        print *, x, "+/-", y, "i"

    else if (delta == 0) then ! O que aconteceria se não fosse else if?
        x = -b / (2.0 * a)
        print *, x

    else if (delta > 0) then
        print *, "Duas raizes reais e distintas."
            
        x = reais_distintas(a, b, sqrt(delta))
        y = c / x
        print *, x, y
    end if

end program equacao_quadratica

