#!/bin/bash

# read -p "Input file or directory: " FILE
FILES=$@

for FILE in ${FILES}
do
  echo $(file ${FILE})
  echo $(ls ${FILE})
done