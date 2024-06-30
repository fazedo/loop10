real function poli(x, n)
    integer, intent(inout) :: n
    real :: x
    poli = x**n + 1.0
    n = n + 3
end function poli

program main
    integer :: i
    
    do i = 0, 9
        print *, poli(2.0, i)
    end do

end program main