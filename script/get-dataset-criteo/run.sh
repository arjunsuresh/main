#!/bin/bash

if [ ! -z ${CM_CRITEO_PATH+x} ]; then
  echo "CM_DATASET_PATH=${CM_CRITEO_PATH}" > tmp-run-env.out
  test $? -eq 0 || exit 1
  exit 0
fi

curl -O -C - https://storage.googleapis.com/criteo-cail-datasets/day_{`seq -s "," 0 23`}.gz
test $? -eq 0 || exit 1

if [ ${CM_BACKUP_ZIPS:-no} == "yes" ]; then
    mkdir backup
    cp -r *.gz backup/
fi
yes n | gunzip -k day_{0..23}.gz
echo "CM_DATASET_PATH=$PWD" > tmp-run-env.out
