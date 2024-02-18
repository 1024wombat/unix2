#!/bin/bash

function usaeg() {
	cat << EOF
$(basename $0) num
	- num: 生成するファイル数
EOF
}

if [[ $# -ne 1 || "$1" =! [^0-9]+ ]]; then
	usage
	exit 1
fi

cd $(dirname $0)

if [ ! -d "sample" ]; then
	mkdir sample
fi

for num in $(sap -f %02g $1)
do
	touch "sample/date-${nim}.txt"
done
