#準備
#! /bin/bash
PATH=pwd
sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get install -y vim gcc build-essential libbz2-dev libdb-dev \
  libreadline-dev libffi-dev libgdbm-dev liblzma-dev \
  libncursesw5-dev libsqlite3-dev libssl-dev \
  zlib1g-dev uuid-dev tk-dev openssh-server zip libssl-dev libffi-dev git cmake \
  protobuf-compiler libatlas-base-dev libcurl4-openssl-dev libopencv-dev  v4l-utils

# install python by pyenv
git clone https://github.com/yyuu/pyenv.git $HOME/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc


echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bashrc

source ~/.bashrc

pyenv install 3.8.12
pyenv global 3.8.12
echo 'pyenv global 3.8.12' >> ~/.bashrc


# install module
pip install matplotlib pandas numpy onnx scikit-build smbus pytest 'protobuf<4'
pip install opencv-python scipy
# install opencv
# sudo apt-get install build-essential cmake unzip pkg-config
# sudo apt-get install libjpeg-dev libpng-dev libtiff-dev

# sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev

# sudo apt-get install libxvidcore-dev libx264-dev
# sudo apt-get install libgtk-3-dev
# sudo apt-get install libatlas-base-dev gfortran
# sudo apt-get install python3-dev

# wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.5.4.zip
# git clone --recursive https://github.com/Microsoft/onnxruntime &

# wget https://github.com/Kitware/CMake/releases/download/v3.25.0/cmake-3.25.0.tar.gz
# tar zxvf cmake-3.25.0.tar.gz 


# # cd cmake-3.25.0/
# # ./bootstrap
# # make
# # sudo make install
# # # install onnxrutime
# # echo 'export PATH=$HOME/cmake-3.25.0/bin/:$PATH' >> ~/.bashrc
# # source ~/.bashrc
# # cd ..

# # wait
# # cd onnxruntime
# # sudo echo 'set(CMAKE_CXX_LINK_FLAGS "${CMAKE_CXX_LINK_FLAGS} -latomic")'  >> ./cmake/CMakeLists.txt 
# # ./build.sh --config MinSizeRel --arm --enable_pybind --build_wheel
# # cd build/Linux/MinSizeRel/dist

git clone https://https://github.com/yudai1102jp/onnxruntime
pip install onnxruntime/onnxruntime-1.14.0-cp38-cp38-linux_aarch64.whl 

# cd $PATH
# sudo apt-get install python3-opencv 
# pip install -r requirements.txt
# pip install ./rsp/onnxruntime-1.8.0-cp37-cp37m-linux_armv7l.whl

sudo chmod 777 /dev/video0

source ~/.bashrc