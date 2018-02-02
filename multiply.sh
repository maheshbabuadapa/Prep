#!bin/bash
echo "enter numder"
read y
x=1
while [ $x -le $y ]
do
    echo `expr $x \* $x`
    x=$(($x + 1))
done
