add_executable(myexample
  myexample.c
)

# Also will indicate where include directories
target_link_libraries(myexample PRIVATE 
 simple
)

