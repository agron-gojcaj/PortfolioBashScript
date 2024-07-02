#! /bin/bash
clear

name="Agron Gojcaj"
sum=0
status="y"

echo "Hello, welcome to $name's Bash calculator!"
echo "Enter one number: "
read n1
echo "Enter a second number: "
read n2
while [ $status = "y" ]; do
	echo "1.Addition"
	echo "2.Subtraction"
	echo "3.Multiplication"
	echo "4.Division"
	echo "Enter your choice"
	read operation
	case $operation in
	1)
		sum=$(expr $n1 + $n2)
		echo "$n1 + $n2 = "$sum
		;;
	2)
		sum=$(expr $n1 - $n2)
		echo "$n1 - $n2 = "$sum
		;;
	3)
		sum=$(expr $n1 \* $n2)
		echo "$num1 * $num2 = "$sum
		;;
	4)
		sum=$(expr $n1 / $n2)
		echo "$n1 / $n2 = "$sum
		;;
	*) echo "Invalid choice" ;;
	esac
	echo "Do you want to continue (y/n)) ?"
	read status
	if [ $status != "y" ]; then
		exit
	fi
done