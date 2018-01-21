#!bin/bash
echo "enter number"
read x
y=0
while [ $y -le $x ];

do
echo `expr $y \* $y`
y=$(($y + 1))
done
