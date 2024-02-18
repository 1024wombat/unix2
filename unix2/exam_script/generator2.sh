#!/bin/bash

function usage() {
	cat << EOF
Usage:
	$(basename $0) num
		- num: 消費するファイル数
EOF
}

if [[ $# - ne 1 || "$1" =~ [^0-9]+ ]]; then
	usage
	exit 1 
fi

cd $(dirname $0)

files$(ls sample/date-* | sort | head -n $1)

for f in $files
do
	"$f" "${f}.used"
done
