# TriMe


## Building

Make sure the git submodules are up to date with:
```
git submodule update --init --recursive
```

### CMake

First install glfw, glew and glm if not already installed. On Arch Linux this can be done with:
```
pacman -S glfw-x11 glew glm
```
Then build the project:
```
mkdir build
cd build
cmake ..
cmake --build . --target all
```
Or instead, run the `build.sh` script.
