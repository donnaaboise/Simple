add_library(simple
    myroutine.c
)

# Include the directory for C++ header files
target_include_directories(simple PUBLIC
     ${CMAKE_CURRENT_SOURCE_DIR}
)     

