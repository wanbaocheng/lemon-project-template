cmake_minimum_required(VERSION 2.6)

project(LEMON-PROJECT-TEMPLATE)

find_package(LEMON REQUIRED HINTS ${PROJECT_SOURCE_DIR}/cmake)
include_directories(
        ${LEMON_INCLUDE_DIRS}
        ${PROJECT_SOURCE_DIR}
        ${PROJECT_BINARY_DIR}
)

add_executable(lemon-project
        src/main.cc
        )

target_link_libraries(lemon-project
        ${LEMON_LIBRARIES}
        )