#!/bin/bash
isExistApp=`pgrep httpd`
if [[ -n  \$isExistApp ]]; then
   echo "httpd is running!"
else
   echo "httpd is not running!"
   exit -1
fi