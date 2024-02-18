#!/bin/bash

if [ ! -d "sample" ]; then
	mkdir sample
fi

touch sample/date-{01..10}.txt
