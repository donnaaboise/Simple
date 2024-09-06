# --------------------------------------------
# List of available applications and examples
#
# Note : Any files below which are uncommented
# need to be available at compile time, even 
# the configuration flag is not set.  
# --------------------------------------------

cmake_minimum_required(VERSION 3.13...3.20)

# Name doesn't really get used here?
project(Simple LANGUAGES C CXX Fortran)

set(CMAKE_CXX_STANDARD 17)

add_subdirectory(src)
add_subdirectory(example)


