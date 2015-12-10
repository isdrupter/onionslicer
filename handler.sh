#!/bin/bash


# Handler for onionslicer (and lots of other shells)
# REQUIRES: nc or ncat

port=$2



case $1 in

-h|--help)

Echo "usage: $0 -p <port>"

;;

-p|--port)

if [[ !  $(which ncat) == "" ]];then

  ncat -v -l 127.0.0.1 $port

else

  echo Reverting to nc
  nc -l -v 127.0.0.1 -v -p $port

fi

;;

esac

exit



