#!/bin/bash

./app.sh >/dev/null 2>&1

if [ $? -eq 0  ]; then
	echo "PASS"
	exit 0
else
	echo "FAIL"
	exit 1
fi
