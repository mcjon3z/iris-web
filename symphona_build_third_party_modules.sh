#!/bin/bash

WORKING_DIR=${PWD}
TEMP_DIR=${WORKING_DIR}/temp
OUT_DIR=${WORKING_DIR}/source/dependencies

mkdir -p ${TEMP_DIR}

git clone https://github.com/socfortress/iris-cortexanalyzer-module/ ${TEMP_DIR}/iris-cortexanalyzer-module
cd ${TEMP_DIR}/iris-cortexanalyzer-module
sed -i '' 's/setuptools==59.6.0/setuptools/g' setup.cfg
python3 setup.py bdist_wheel
cp dist/* ${OUT_DIR}

git clone https://github.com/socfortress/iris-wazuhindexer-module ${TEMP_DIR}/iris-wazuhindexer-module
cd ${TEMP_DIR}/iris-wazuhindexer-module
sed -i '' 's/setuptools==59.6.0/setuptools/g' setup.cfg
python3 setup.py bdist_wheel
cp dist/* ${OUT_DIR}

git clone https://github.com/socfortress/iris-veloquarantineremove-module ${TEMP_DIR}/iris-veloquarantineremove-module
cd ${TEMP_DIR}/iris-veloquarantineremove-module
sed -i '' 's/setuptools==59.6.0/setuptools/g' setup.cfg
python3 setup.py bdist_wheel
cp dist/* ${OUT_DIR}

git clone https://github.com/socfortress/iris-veloquarantine-module ${TEMP_DIR}/iris-veloquarantine-module
cd ${TEMP_DIR}/iris-veloquarantine-module
sed -i '' 's/setuptools==59.6.0/setuptools/g' setup.cfg
python3 setup.py bdist_wheel
cp dist/* ${OUT_DIR}

git clone https://github.com/socfortress/iris-velociraptorartifact-module ${TEMP_DIR}/iris-velociraptorartifact-module
cd ${TEMP_DIR}/iris-velociraptorartifact-module
sed -i '' 's/setuptools==59.6.0/setuptools/g' setup.cfg
python3 setup.py bdist_wheel
cp dist/* ${OUT_DIR}

rm -rf ${TEMP_DIR}
