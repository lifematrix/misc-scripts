#!/usr/bin/env bash

if [ $# -ne 1 ]; then
    echo "The project directory name should be specified."
    exit -1
fi

proj_root=$1
cur_dir=`pwd`
subdirs="src shells data experiments"

mkdir $proj_root

for f in $subdirs; do
    mkdir $proj_root/$f
done
