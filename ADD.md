## Add Matrix Multiplcation codes inspired by the headless example

### Install Vulkan driver
Try to install directly first, or from the [link](https://www.ravbug.com/tutorials/rpi-vulkan/) belew
```bash
sudo apt install mesa-vulkan-drivers libvulkan-dev
```

### Download this Vulkan example
```bash
sudo apt install ninja-build

git clone --recursive --depth=1 https://github.com/SaschaWillems/Vulkan.git 
cd Vulkan
python3 download_assets.py 
sudo apt install cmake -y
mkdir build && cd build
cmake -G "Ninja" -DCMAKE_BUILD_TYPE=Release ..
cmake --build .
```
reference: [https://www.ravbug.com/tutorials/rpi-vulkan/](https://www.ravbug.com/tutorials/rpi-vulkan/)

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
