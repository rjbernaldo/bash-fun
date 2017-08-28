#!/bin/bash

ARG=$1

if [ -z "${ARG}" ]; then
  echo "Please enter an argument to this script."
else
  RESULT=$(file ${ARG})

  if [ "${RESULT}" = "${ARG}: Bourne-Again shell script text executable, ASCII text" ]; then
    exit 0
  elif [ "${RESULT}" = "${ARG}: directory" ]; then
    exit 1
  else
    exit 2
  fi
fi

