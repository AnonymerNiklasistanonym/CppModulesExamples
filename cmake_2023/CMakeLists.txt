cmake_minimum_required(VERSION 3.27)
project(std_module_example CXX)

set(CMAKE_EXPERIMENTAL_CXX_MODULE_CMAKE_API "aa1f7df0-828a-4fcd-9afc-2dc80491aca7")

# Default to C++ extensions being off. Clang's modules support have trouble
# with extensions right now and it is not required for any other compiler
set(CMAKE_CXX_EXTENSIONS OFF)

if (CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
  include(gcc_modules.cmake)
endif()
set(CMAKE_CXX_STANDARD 20)
add_library(foo)
target_sources(foo
  PUBLIC
    FILE_SET cxx_modules TYPE CXX_MODULES FILES
    src/foo.cxx
)
add_executable(hello src/main.cxx)
target_link_libraries(hello PRIVATE foo)
