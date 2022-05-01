#!/bin/sh
LIGHTGREEN="\e[92m"
LIGHTRED="\e[91m"
LIGHTCYAN="\e[96m"
ENDCOLOR="\e[0m"
printf "\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m]\e[0m\e[1;93m Addition\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;93m Substraction\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m]\e[0m\e[1;93m Multiplication\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m]\e[0m\e[1;93m Division\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m]\e[0m\e[1;93m Square Of Number\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m]\e[0m\e[1;93m Cube Of Number\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m]\e[0m\e[1;93m Square Root\e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option
if [[ $option == 1 ]]; then
	echo -e "${LIGHTGREEN}Enter number A"
	read A 
	echo -e "${LIGHTGREEN}Enter number B"
	read B
	echo -e "${LIGHTGREEN}Total=$(($A+$B))"
fi

if [[ $option == 2 ]]; then
	echo -e "${LIGHTRED}Enter number A"
	read A
	echo -e "${LIGHTRED}Enter number B"
	read B
	echo -e "${LIGHTRED}Total=$(($A-$B))"
fi
if [[ $option == 3 ]]; then
	echo -e "${LIGHTCYAN}Enter number A"
	read A
	echo -e "${LIGHTCYAN}Enter number B"
	read B
	echo -e "${LIGHTCYAN}Total=$(($A*$B))"
fi
if [[ $option == 4 ]]; then
	echo "Enter number A"
	read A
	echo "Enter number B"
	read B
	echo "Total=$(($A%$B))"
fi
if [[ $option == 5 ]]; then
echo -e "${LIGHTGREEN}Enter number A"
read A
echo -e "${LIGHTGREEN}Total=$(($A*$A))"
fi
if [[ $option == 6 ]]; then
echo -e "${LIGHTGREEN}Enter number A"
read A
echo -e "${LIGHTGREEN}Total=$(($A*$A*$A))"
fi
if [[ $option == 7 ]]; then
read -p "Enter a number: " number
square_root=`echo "scale=4; sqrt($number)" | bc`
echo "Square Root of $number is $square_root"
fi


