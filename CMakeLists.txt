cmake_minimum_required(VERSION 3.20.0)

# give the project a name and specify c++ as the language
project(TriMe LANGUAGES CXX)

# variables where the files are
set(SOURCE_DIR ${CMAKE_CURRENT_LIST_DIR}/TriMe)
set(DEPENDENCIES_DIR ${CMAKE_CURRENT_LIST_DIR}/TriMe/dependencies)

# find the libraries that are installed on the system,
# if it can't find them, cmake will abort
find_package(glfw3 REQUIRED)
find_package(GLEW REQUIRED)
find_package(glm REQUIRED)
find_package(OpenGL REQUIRED)

# create the executable TriMe from these files.
# TriMe is now a cmake target
add_executable(TriMe ${SOURCE_DIR}/main.cpp)

# add these directories that the target needs
target_include_directories(TriMe PRIVATE ${DEPENDENCIES_DIR}/include)

# link the libraries to the target
target_link_libraries(TriMe
#        glm::glm #should be what is needed to link, but cmake can't find it
        glfw
        GLEW::GLEW
        GL
        )
