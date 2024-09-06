module factorial_and_conversions
    implicit none

    double precision, parameter :: Pi = 4.d0*atan(1.d0)
    !!double precision, parameter:: Pi = 3.1415926
    double precision, parameter:: degree_180 = 180.0
    double precision, parameter:: rad_to_deg = degree_180 / Pi
    double precision, parameter:: deg_to_rad = Pi / degree_180

contains 

    ! Define function that converts radians to degrees
    double precision function RadiantoDegree(radian)
        implicit none

        double precision, intent(in):: radian

        RadiantoDegree = radian * rad_to_deg

    end function RadiantoDegree

    ! Define function that converts degrees to radians
    double precision function DegreetoRadian(degree)
        implicit none

        double precision, intent(in):: degree

        DegreetoRadian = degree * deg_to_rad

    end function DegreetoRadian


    double precision function factorial_func(x)
        implicit none

        double precision, intent(in):: x

        integer :: ix, j
        ix = int(x)
        factorial_func = 1.0d0
        do j = 1, ix
            factorial_func = factorial_func * j
        end do
        !!integer:: F,j
        
        !!F = 1
        !!j = 1

        !!do while(j<=x)
        !!    F = F*j
        !!    j = j + 1
        !!end do
        !!factorial_func = F

    end function factorial_func

end module factorial_and_conversions