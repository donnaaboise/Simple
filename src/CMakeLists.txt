add_library(simple
    fortran/fort_routine.f90
    fortran/fort_mod.f90
    myroutine.c
)

target_include_directories(simple PRIVATE
     ${CMAKE_CURRENT_SOURCE_DIR} 
     ${CMAKE_CURRENT_SOURCE_DIR}/src1
)     

# Include the directory for C++ header files
target_include_directories(simple PUBLIC
     ${CMAKE_CURRENT_SOURCE_DIR} 
)     

