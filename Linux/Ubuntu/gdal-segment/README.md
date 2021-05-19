# How to install gdal-segment in Linux Ubuntu 20.04
## Project repository:
https://github.com/cbalint13/gdal-segment

## Installation instruction:


### Basic package:
```bash
sudo apt update
sudo apt upgrade
sudo apt install gdal-bin python-gdal python3-gdal libgdal-dev
```

### OpenCV package:
```bash
sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev

mkdir src
cd src
git clone https://github.com/opencv/opencv.git
git checkout 3.3.1
git clone https://github.com/opencv/opencv_contrib.git
git checkout 3.3.1
cd opencv
mkdir build
cd build
cmake CMAKE_VERBOSE=1 -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -DCMAKE_SKIP_RPATH=ON ../
make -j4
sudo make install
```

### Build ```gdal-segment```

```bash
cd src
git clone https://github.com/cbalint13/gdal-segment.git
cd gdal-segment
mkdir build
cd build
cmake -DCMAKE_CXX_FLAGS="-std=c++11 -fopenmp" ../
cmake ../
sudo make
```

## Errors:

### Build problems:
https://github.com/cbalint13/gdal-segment/issues/11

### No ```CV_RGB2Lab``` library:
Add 
```cpp 
#include <opencv2/imgproc/types_c.h>
```
in ```gdal-segment/src/gdal-segment.cpp```

source: https://github.com/cbalint13/gdal-segment/issues/10


### No ```libopencv_core.so.3.0``` after successfully compiling:
Link library:

```bash
ln -s /usr/local/lib/libopencv_core.so.3.4.7 libopencv_core.so.3.0
```

source: https://answers.opencv.org/question/217959/libopencv_coreso31-cannot-open-shared-object-file-no-such-file-or-directory/

## Useful links about segmentation:
https://www.youtube.com/watch?v=nDPWywWRIRo

https://www.youtube.com/watch?v=jLd2I2adQtw