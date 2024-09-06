add_library(simple
    myroutine.c
)

target_include_directories(simple PRIVATE
     ${CMAKE_CURRENT_SOURCE_DIR}/src1
)     

# Include the directory for C++ header files
target_include_directories(simple PUBLIC
     ${CMAKE_CURRENT_SOURCE_DIR} 
)     

