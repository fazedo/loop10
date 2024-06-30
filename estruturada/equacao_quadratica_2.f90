program equacao_quadratica
    implicit none
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
    
    if (delta < 0 ) then
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
        delta = sqrt(delta)
    
        if (b < 0) then 
            x = (-b + delta) / (2.0 * a)
            y = c / x
        else if (b == 0) then 
            x = delta / (2.0 * a)
            y = -x
        else if (b > 0) then 
            x = (-b - delta) / (2.0 * a)
            y = c / x
        end if 
    
        print *, x, y
    end if

end program equacao_quadratica

