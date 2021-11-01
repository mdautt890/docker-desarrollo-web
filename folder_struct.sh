#!/bin/bash

echo "Build Folder structure"
mkdir ./src
cd supports
mkdir mysql
mkdir postgres
cd postgres
mkdir dbdata
cd ..
cd mysql
mkdir entrypoint
mkdir data
cd ..
cd ..
echo "Done..."
