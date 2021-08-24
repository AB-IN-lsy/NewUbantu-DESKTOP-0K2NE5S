#!/bin/bash
javaname=$1 
javac $1
outname=${javaname%.*}
java $outname
