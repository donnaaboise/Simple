add_library(myexample_f OBJECT
  factorial_and_conversions_module.f90
  taylor_series.f90
  )

add_executable(myexample
  myexample.c
  $<TARGET_OBJECTS:myexample_f>
)

target_include_directories(myexample PRIVATE 
  ${CMAKE_CURRENT_SOURCE_DIR} 
)

target_link_libraries(myexample PRIVATE 
 simple
)

