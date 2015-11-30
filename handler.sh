#!/bin/bash
# Handler for onionslicer
# REQUIRES: nc or ncat

using=ncat
if [ -x "$(ncat -v)" ];then
  using=nc
    if [ ! -x "$(nc -v)" ];then
      echo 'Please install ncat or nc...'
    fi
fi



$using -l 127.0.0.1 -v -p 12345



