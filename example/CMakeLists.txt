add_executable(myexample
  myexample_fort.f90
  myexample.c
)

# Also will indicate where include directories
target_link_libraries(myexample PRIVATE 
 simple
)

