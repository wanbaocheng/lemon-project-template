SET(LEMON_ROOT_DIR "" CACHE PATH "LEMON root directory")

FIND_PATH(LEMON_INCLUDE_DIR
        lemon/core.h
        HINTS ${LEMON_ROOT_DIR}/include
        "C:/Program Files/LEMON/include"

        )
FIND_LIBRARY(LEMON_LIBRARY
        NAMES lemon emon
        HINTS ${LEMON_ROOT_DIR}/lib
        "C:/Program Files/LEMON/lib"

        )

INCLUDE(FindPackageHandleStandardArgs)
#FIND_PACKAGE_HANDLE_STANDARD_ARGS(LEMON DEFAULT_MSG LEMON_LIBRARY LEMON_INCLUDE_DIR)
find_path(LEMON_SOURCE_ROOT_DIR CMakeLists.txt
        PATHS ${CMAKE_SOURCE_DIR}/lemon
        NO_DEFAULT_PATH
        DOC "Location of LEMON source as a CMAKE subproject")
if (EXISTS ${LEMON_SOURCE_ROOT_DIR})
    add_subdirectory(${LEMON_SOURCE_ROOT_DIR})
    set(LEMON_INCLUDE_DIRS
            ${LEMON_SOURCE_ROOT_DIR}
            ${CMAKE_BINARY_DIR}/deps/lemon
            )
    set(LEMON_LIBRARIES lemon)
    unset(LEMON_ROOT_DIR CACHE)
    unset(LEMON_DIR CACHE)
    unset(LEMON_INCLUDE_DIR CACHE)
    unset(LEMON_LIBRARY CACHE)
endif ()

MARK_AS_ADVANCED(LEMON_LIBRARY LEMON_INCLUDE_DIR)
