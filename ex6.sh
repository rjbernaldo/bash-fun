#!/bin/bash

read -p "Input file or directory: " FILE

echo $(file ${FILE})
echo $(ls ${FILE})