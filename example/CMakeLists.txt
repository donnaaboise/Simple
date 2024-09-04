add_executable(myexample
  myexample.c
)

target_include_directories(myexample PRIVATE 
  ${CMAKE_CURRENT_SOURCE_DIR} 
)

target_link_libraries(myexample PRIVATE 
 simple
)

