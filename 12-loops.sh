#!/bin/bash

# all args(arguments) are in $@
for i in $@
do 
    yum install $i -y
done     

