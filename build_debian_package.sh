#!/bin/bash -e
# bash script to create a simple debian package

PACKAGE_NAME=$1
PACKAGE_VERSION=$2
BUILD_DIR=$3

# create necessary file system structure for package
mkdir -p $BUILD_DIR/package/$PACKAGE_NAME/DEBIAN
mkdir -p $BUILD_DIR/package/$PACKAGE_NAME/usr/local/bin

# copy binary to destination
cp $BUILD_DIR/machine/bin/docker-machine* $BUILD_DIR/package/$PACKAGE_NAME/usr/local/bin/docker-machine

# copy package control template and replace version info
cp -v ./control_file_template $BUILD_DIR/package/$PACKAGE_NAME/DEBIAN/control
sed -i'' "s/<VERSION>/${PACKAGE_VERSION}/g" $BUILD_DIR/package/$PACKAGE_NAME/DEBIAN/control

# actually create package with dpkg-deb
cd $BUILD_DIR/package
dpkg-deb --build $PACKAGE_NAME
