#!/bin/bash

# all arguments are in $@
for i in $@
do
  yum install  $i -y
done   