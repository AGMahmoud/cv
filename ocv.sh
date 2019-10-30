sudo apt-get update 
sudo apt-get upgrade
sudo apt -y remove x264 libx264-dev
sudo apt-get install libpcl-dev
sudo apt-get install vim
sudo apt-get install tmux
## Install dependencies
sudo apt -y install build-essential checkinstall cmake pkg-config yasm
sudo apt -y install git gfortran
sudo apt -y install libjpeg8-dev libpng-dev
 
sudo apt -y install software-properties-common
sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt -y update
 
sudo apt -y install libjasper1
sudo apt -y install libtiff-dev
 
sudo apt -y install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
sudo apt -y install libxine2-dev libv4l-dev
cd /usr/include/linux
sudo ln -s -f ../libv4l1-videodev.h videodev.h

 
sudo apt -y install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
sudo apt -y install libgtk2.0-dev libtbb-dev qt5-default
sudo apt -y install libatlas-base-dev
sudo apt -y install libfaac-dev libmp3lame-dev libtheora-dev
sudo apt -y install libvorbis-dev libxvidcore-dev
sudo apt -y install libopencore-amrnb-dev libopencore-amrwb-dev
sudo apt -y install libavresample-dev
sudo apt -y install x264 v4l-utils
 
# Optional dependencies
sudo apt -y install libprotobuf-dev protobuf-compiler
sudo apt -y install libgoogle-glog-dev libgflags-dev
sudo apt -y install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen

sudo apt -y install python3-dev python3-pip
sudo -H pip3 install -U pip numpy
sudo apt -y install python3-testresources

sudo -Hip install wheel numpy scipy matplotlib scikit-image scikit-learn ipython dlib
sudo apt-get install python-scipy python-numpy python-matplotlib python-scikit-image python-scikit-learn 

sudo apt-get install python-numpy

git clone https://github.com/opencv/opencv.git
cd opencv
cd ..
 
git clone https://github.com/opencv/opencv_contrib.git
cd opencv_contrib
cd ..
cd opencv
mkdir build
cd build

cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/usr -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -DWITH_EIGEN=ON-DBLAS="Open" -Dpython_version=3 -DCUDA_HOST_COMPILER=/usr/bin/g++-5 -DCUDA_PROPAGATE_HOST_FLAGS=off  -DWITH_FFMPEG=ON -DWITH_JASPER=ON -DWITH_JPEG=ON -DWITH_PNG=ON -DWITH_V4L=ON -DWITH_LIBV4L=ON -DWITH_XINE=ON -DBUILD_PACKAGE=ON -DBUILD_OPENCV_PYTHON3=ON -DPYTHON2_NUMPY_INCLUDE_DIRS=/usr/lib/python2.7/dist-packages/numpy/core/include -DCMAKE_CXX_FLAGS="-std=c++11" -DPYTHON3_NUMPY_INCLUDE_DIRS=/usr/lib/python3/dist-packages/numpy/core/include  -DBUILD_opencv_world=OFF -DOPENCV_ENABLE_NONFREE=ON -DWITH_CUDA=OFF .. 
make -j4
sudo make install
 

