#!/bin/sh
if [ $(xinput list | grep -G ".*AT Translated Set.*floating.*" | wc -c) -eq 0 ]
then
  xinput float 12
else
  xinput reattach 12 3 
fi
