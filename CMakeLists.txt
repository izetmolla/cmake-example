cmake_minimum_required(VERSION 3.22)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)





project(main VERSION 1.0)
add_executable(main main.cpp)


set(CMAKE_PREFIX_PATH "/opt/vcpkg/installed/x64-linux/share")


find_package(cpp-jwt REQUIRED)
target_link_libraries(main cpp-jwt::cpp-jwt)

find_package(Crow CONFIG REQUIRED)
target_link_libraries(main Crow::Crow)
