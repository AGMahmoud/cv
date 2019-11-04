sudo apt-get -y remove x264 libx264-dev
 
## Install dependencies
sudo apt-get -y install build-essential checkinstall cmake pkg-config yasm
sudo apt-get -y install git gfortran
sudo apt-get -y install libjpeg8-dev libjasper-dev libpng12-dev
 
sudo apt-get -y install libtiff5-dev
 
sudo apt-get -y install libtiff-dev
 
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
sudo apt-get -y install libxine2-dev libv4l-dev
cd /usr/include/linux
sudo ln -s -f ../libv4l1-videodev.h videodev.h
cd $cwd
 
sudo apt-get -y install libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev
sudo apt-get -y install libgtk2.0-dev libtbb-dev qt5-default
sudo apt-get -y install libatlas-base-dev
sudo apt-get -y install libmp3lame-dev libtheora-dev
sudo apt-get -y install libvorbis-dev libxvidcore-dev libx264-dev
sudo apt-get -y install libopencore-amrnb-dev libopencore-amrwb-dev
sudo apt-get -y install libavresample-dev
sudo apt-get -y install x264 v4l-utils
 
# Optional dependencies
sudo apt-get -y install libprotobuf-dev protobuf-compiler
sudo apt-get -y install libgoogle-glog-dev libgflags-dev
sudo apt-get -y install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen
sudo apt-get -y install python3-dev python3-pip
sudo -H pip3 install -U pip numpy
sudo apt-get -y install python3-testresources
sudo sed -i 's/CONF_SWAPSIZE=100/CONF_SWAPSIZE=1024/g' /etc/dphys-swapfile
sudo /etc/init.d/dphys-swapfile stop
sudo /etc/init.d/dphys-swapfile start
pip install numpy dlib
cd /home/pi/
cd opencv
mkdir build

cmake -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/usr -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -DWITH_EIGEN=ON-DBLAS="Open" -Dpython_version=3 -DCUDA_HOST_COMPILER=/usr/bin/g++-5 -DCUDA_PROPAGATE_HOST_FLAGS=off  -DWITH_FFMPEG=ON -DWITH_JASPER=ON -DWITH_JPEG=ON -DWITH_PNG=ON -DWITH_V4L=ON -DWITH_OPENGL=ON -DWITH_LIBV4L=ON -DWITH_XINE=ON -DBUILD_PACKAGE=ON -DBUILD_OPENCV_PYTHON3=ON -DPYTHON2_NUMPY_INCLUDE_DIRS=/usr/lib/python2.7/dist-packages/numpy/core/include -DCMAKE_CXX_FLAGS="-std=c++11" -DPYTHON3_NUMPY_INCLUDE_DIRS=/usr/lib/python3/dist-packages/numpy/core/include  -DBUILD_opencv_world=OFF -DOPENCV_ENABLE_NONFREE=ON -DWITH_CUDA=OFF .. 
make -j$(nproc)
sudo make install

