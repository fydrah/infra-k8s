#!/bin/bash

CARAC="\$"
COLOR="32"
if [ $(/usr/bin/id -un) == "root" ]; then
  COLOR="33"
  if [ $HOME == "/root" ]; then
    COLOR="31"
    CARAC="#"
  fi
  CARAC="#"
fi

PS1="[\[\e[0;${COLOR}m\]\u@\h\[\e[00m\]]\n\w ${CARAC} "
