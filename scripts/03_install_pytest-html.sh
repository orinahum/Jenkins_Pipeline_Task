#!/bin/bash

# set the version you want to download
VERSION="3.2.0"
PACKAGE_NAME="pytest-html"
TARBALL_URL="https://files.pythonhosted.org/packages/source/p/${PACKAGE_NAME}/${PACKAGE_NAME}-${VERSION}.tar.gz"

# download the tarball
echo "Downloading ${PACKAGE_NAME} version ${VERSION}..."
curl -O ${TARBALL_URL}

# extract the tarball
echo "Extracting ${PACKAGE_NAME}-${VERSION}.tar.gz..."
tar -xzf ${PACKAGE_NAME}-${VERSION}.tar.gz

# navigate to the extracted directory
cd ${PACKAGE_NAME}-${VERSION}

# Install the package
echo "Installing ${PACKAGE_NAME}..."
pip install .

# Cleanup
cd ..
rm -rf ${PACKAGE_NAME}-${VERSION} ${PACKAGE_NAME}-${VERSION}.tar.gz

echo "${PACKAGE_NAME} version ${VERSION} installed successfully."