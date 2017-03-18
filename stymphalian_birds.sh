#!/bin/sh

echo "What language are you coding in?: "
read my_lang

create_authorfile ()
{
	echo "Should we make an author file? (y/n)"
	read using_authorfile
	if [ "$using_authorfile" == "y" ] || [ "$using_authorfile" == "Y" ]; then
		whoami > author
	elif [ "$using_authorfile" == "n" ] || [ "$using_authorfile" == "N" ]; then
		echo "You chose not to create an author file"
	else echo "That's not a valid answer"
	fi
}

create_makefile ()
{
	echo "Should we create a Makefile? (y/n)"
	read using_makefile
	if [ "$using_makefile" == "y" ] || [ "$using_makefile" == "Y" ]; then
		touch Makefile
	elif [ "$using_makefile" == "n" ] || [ "$using_makefile" == "N" ]; then
		echo "You chose not to create a Makefile"
	else echo "That's not a valid answer"
	fi
}

create_gitgnore ()
{
	echo "Should we create a .gitignore? (y/n)"
	read using_gitignore
	if [ "$using_gitignore" == "y" ] || [ "$using_gitignore" == "Y" ]; then
		touch .gitignore
	elif [ "$using_gitignore" == "n" ] || [ "$using_gitignore" == "N" ]; then
		echo "You chose not to create a .gitignore file"
	else echo "That's not a valid answer"
	fi
}



if [ -z "$my_lang" ]; then
	vim main.c
elif [ "$my_lang" == "C" ] || [ "$my_lang" == "c" ]; then
	create_authorfile
	create_makefile
	create_gitgnore



	# echo "Are you using your libft? (y/n)"
	# read using_libft
	# echo $using_libft
elif [ "$my_lang" == "Python" ]; then
	echo "Looks like you are writing in Python"
elif [ "$my_lang" == "Shell" ]; then
	echo "Looks like you are writing in Shell"
fi
