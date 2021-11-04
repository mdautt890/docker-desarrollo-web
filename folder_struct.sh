#!/bin/bash

echo "Build Folder structure"
mkdir ./src
cd supports
mkdir mysql
mkdir postgres
mkdir mariadb
cd postgres
mkdir dbdata
cd ..
cd mysql
mkdir entrypoint
mkdir data
cd ..
cd mariadb
mkdir config
mkdir dbdata
cd ..
cd ..
echo "Done..."
