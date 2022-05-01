#!/bin/sh
printf "\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m]\e[0m\e[1;93m Addition\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;93m Substraction\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m]\e[0m\e[1;93m Multiplication\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m]\e[0m\e[1;93m Division\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m]\e[0m\e[1;93m Square of Number\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m]\e[0m\e[1;93m Cube of number\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m]\e[0m\e[1;93m Square Root\e[0m\n"
read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m\en' option
if [[ $option == 1 ]]; then
read -p "Enter a number A: " numberA
read -p "Enter a number B: "numberB
Addition=`echo "scale=4; $number$A+$numberB" | bc`
echo "Total is $Addition"
fi
if [[ $option == 2 ]]; then
read -p "Enter a number A: " numberA
read -p "Enter a number B: "numberB
Substraction=`echo "scale=4; $number$A-$numberB" | bc`
echo "Total is $Substraction"
fi
if [[ $option == 3 ]]; then
read -p "Enter a number A: " numberA
read -p "Enter a number B: "numberB
Multiplication=`echo "scale=4; $number$A*$numberB" | bc`
echo "Total is $Multiplication"
fi
if [[ $option == 4 ]]; then
read -p "Enter a number A: " numberA
read -p "Enter a number B: "numberB
Division=`echo "scale=4; $number$A%$numberB" | bc`
echo "Total is $Division"
fi
if [[ $option == 5 ]]; then
read -p "Enter a number: " number
square=`echo "scale=4; $number*$number" | bc`
echo "Square is $square"
fi
if [[ $option == 6 ]]; then
read -p "Enter a number: " number
Cube=`echo "scale=4; $number*$number*$number" | bc`
echo "Cube is $Cube"
fi
if [[ $option == 7 ]]; then
read -p "Enter a number: " number
square_root=`echo "scale=4; sqrt($number)" | bc`
echo "Square Root is $square_root"
fi  
