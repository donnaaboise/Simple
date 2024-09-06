subroutine taylor_series(x,n)

	use factorial_and_conversions
	implicit none

	double precision :: x, y,n
	integer :: exponent
	double precision:: sum, term, exact
    double precision, parameter:: tol = 1.0d-6
    character(10) :: series_type

    print*, "Enter x: "
    read(*,*) x

    y = DegreetoRadian(x)

    print*, "What kind of series? (cos, sin, tan):"
    read(*,*) series_type

    n = 0
    sum = 0


    select case(trim(adjustl(series_type)))
    	case ('cos')
    		exact = cos(y)
    		exponent = 2

    	case ('sin')
    		exact = sin(y)
    		exponent = (2*n) + 1

    	case default
            print*, "Invalid series type. Please enter 'cos' or 'sin'."
            return
    end select
    do 
        if (trim(adjustl(series_type)) == 'cos') then
            term = (((-1)**n / factorial_func(2*n)) * y**(2*n))
        else
            term = (((-1)**n / factorial_func(2*n+1)) * y**(2*n+1))
        end if

        sum = sum + term
        if (abs(exact - sum) <= tol) exit
		n = n + 1

    end do

    print*, series_type // "(x) = ", sum

end subroutine taylor_series