cmake_minimum_required(VERSION 3.10)
project(HelloCMake)

set(CMAKE_CXX_STANDARD 11)

# Main executable
add_executable(hello main.cpp)

# Test support
enable_testing()

# Test executable
add_executable(test_hello test.cpp)

# Register test *after* the target is defined
add_test(NAME RunTest COMMAND test_hello)
