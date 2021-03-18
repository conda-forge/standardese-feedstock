#!/bin/bash

mkdir build
cd build

cmake \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_PREFIX_PATH=$PREFIX \
  -DBUILD_SHARED_LIBS=OFF \
  -DSTANDARDESE_BUILD_TEST=OFF \
  -DCMAKE_BUILD_TYPE=Release \
  ..

make -j${CPU_COUNT} VERBOSE=1
make install
