#!/bin/env bash
if [ "$#" -ne 1 ]; then
	echo "Needs <What to decrypt>"
	exit 1
fi

mkdir -p restored
openssl enc -d -aes256 -in $1 | tar xz -C restored
