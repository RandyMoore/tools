#!/bin/env bash
if [ "$#" -ne 2 ]; then
	echo "Needs <What to archive> <Filename prefex>"
	exit 1
fi

tar -czf - $1 | openssl enc -e -aes256 -out "$2.tar.gz"
