#!/bin/sh
LIGHTGREEN="\e[92m"
LIGHTRED="\e[91m"
LIGHTCYAN="\e[96m"
ENDCOLOR="\e[0m"
printf "\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m]\e[0m\e[1;93m Addition\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;93m Substraction\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m]\e[0m\e[1;93m Multiplication\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m]\e[0m\e[1;93m Division\e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option
if [[ $option == 1 ]]; then
	echo -e "${LIGHTGREEN} Value of A"
	read A 
	echo -e "${LIGHTGREEN} Value of B"
	read B
	echo -e "${LIGHTGREEN}Total=$(($A+$B))"
fi

if [[ $option == 2 ]]; then
	echo -e "${LIGHTRED}Value of A"
	read A
	echo -e "${LIGHTRED}Value of B"
	read B
	echo -e "${LIGHTRED}Total=$(($A-$B))"
fi
if [[ $option == 3 ]]; then
	echo -e "${LIGHTCYAN}Value of A"
	read A
	echo -e "${LIGHTCYAN}Value of B"
	read B
	echo -e "${LIGHTCYAN}Total=$(($A*$B))"
fi
if [[ $option == 4 ]]; then
	echo "Value of A"
	read A
	echo "Value of B"
	read B
	echo "Total=$(($A%$B))"
fi



