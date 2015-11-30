#!/bin/bash
# Handler for onionslicer
# REQUIRES: nc or ncat

if [ ! -x "$(ncat -v)" ];then
  using=ncat
    if [ ! -x "$(nc -v)" ];then
      using=nc
    fi
fi



$using -l 127.0.0.1 -v -p 12345



