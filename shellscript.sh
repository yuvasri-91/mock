#! /bin/bash
echo -n "enter filename: "
read filename
if [ -f "$filename" ]; then
echo "File '$filename' exists."
else
    echo "File '$filename' does not exist."
fi
echo -n "Enter your salary: "
read salary
if [ "$salary" -lt 30000 ]; then
	    echo "No tax."
elif [ "$salary" -le 40000 ]; then
    tax=$((salary / 10))
    echo "10% tax: \$${tax}"
else
    tax=$((salary * 15 / 100))
    echo "15% tax: \$${tax}"
fi
echo -n "Enter your age: "
read age
if [ "$age" -lt 13 ]; then
    echo "You are a Child."
elif [ "$age" -le 19 ]; then
    echo "You are a Teenager."
else
    echo "You are an Adult."
fi

