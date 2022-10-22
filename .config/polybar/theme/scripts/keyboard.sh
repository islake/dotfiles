#!/bin/sh
if [ $(xinput list | grep -G ".*AT Translated Set.*floating.*" | wc -c) -eq 0 ]
then
  echo "%{T4}%{T-}"
else
  echo " %{T4}%{T-}"
fi
