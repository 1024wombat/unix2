#!/bin/bash

files=$(ls sample/date-*)

for f in $files
do
	mv "$f" "${f}.used"
done
