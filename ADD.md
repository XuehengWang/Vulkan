[ref](https://www.ravbug.com/tutorials/rpi-vulkan/)

### Download this Vulkan example
```bash
git clone --recursive --depth=1 https://github.com/SaschaWillems/Vulkan.git 
cd Vulkan
python3 download_assets.py 
sudo apt install cmake -y
mkdir build && cd build
cmake -G "Ninja" -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
```

### Add files for matmul
- examples/matmul/matmul.cpp
- examples/CMakeLists.txt (only complie matmul)
- shaders/glsl/matmul/matmul.comp

### Compile shader 
`matmul.comp` -> `matmul.comp.spv`
```bash
sudo apt install glslang-tools
python compileshaders.py --glslang /usr/bin/glslangValidator
```