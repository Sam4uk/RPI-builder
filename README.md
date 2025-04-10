```zsh
docker build . --file Dockerfile --platform=linux/arm64 --tag rpi-builder:$(git for-each-ref --sort=-creatordate --format '%(refname:short)' refs/tags | head -n 1)
docker run -it --platform=linux/arm64 myapp:latest


```


```zsh
docker run  -it --platform=linux/arm64 -v ./:/RPI  rpi-builder:v0.0.2 sh -c "mkdir -p build && cmake -B build . -DCMAKE_MAKE_PROGRAM=make"
docker run  -it --platform=linux/arm64 -v ./:/RPI  rpi-builder:v0.0.2 sh -c "cmake --build ./build -- -j$(nproc)"
docker run  -it --platform=linux/arm64 -v ./:/RPI  rpi-builder:v0.0.2 sh -c "ctest ./build"
docker run  -it --platform=linux/arm64 -v ./:/RPI  rpi-builder:v0.0.2 sh -c "cpack ./build"
```