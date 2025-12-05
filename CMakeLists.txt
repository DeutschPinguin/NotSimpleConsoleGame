cmake_minimum_required(VERSION 3.28)

file(GLOB_RECURSE srcs "./src/*.c")
list(REMOVE_ITEM srcs "./src/main.c")

project(NotSimpleConsoleGame
    LANGUAGES C
)

add_executable(NotSimpleConsoleGame src/main.c ${srcs})

target_compile_options(NotSimpleConsoleGame PRIVATE
    -O2
    -Wall
    -Wextra
    # -Werror
    -pedantic
    -flto
    -ffunction-sections
    -fdata-sections
)

target_include_directories(NotSimpleConsoleGame PRIVATE "./include")