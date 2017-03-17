#!/bin/sh

echo "What language are you coding in?: "
read my_lang

if [ -z "$my_lang" ]; then
	echo "wat"
elif [ "$my_lang" == "C" ]; then
	echo "Looks like you are writing in C"
	touch Makefile
	touch .gitignore
elif [ "$my_lang" == "Python" ]; then
	echo "Looks like you are writing in Python"
elif [ "$my_lang" == "Shell" ]; then
	echo "Looks like you are writing in Shell"
fi
