#!/usr/bin/env bash

# Verify input dir exists
if [ ! -d $1 ]
then
    echo "Directory $1 DOES NOT exists."
    exit -1
fi

# Download training data
train_list=$1/ucfTrainTestlist/trainlist.txt
train_dir=$1/Train
mkdir -p ${train_dir}
python3 ucf101.py --file_list=${train_list} --save_dir=${train_dir}

# Download testing data
test_list=$1/ucfTrainTestlist/testlist.txt
test_dir=$1/Test
mkdir -p ${test_dir}
python3 ucf101.py --file_list=${test_list} --save_dir=${test_dir}