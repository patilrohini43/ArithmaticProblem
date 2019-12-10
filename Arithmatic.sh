echo "Welcome to Arithmatic Operation"
read -p "Enter First Input" a
read -p "Enter Second Input" b
read -p "Enter Third Input" c

operation1=$(( a + b * c ))
operation2=$(( a * b + c ))
operation3=$(( c + a / b ))
operation4=$(( a % b + c))

echo $operation1
echo $operation2
echo $operation3
echo $operation4

declare -A storeResult

storeResult["Result_1"]=$operation1
storeResult["Result_2"]=$operation2
storeResult["Result_3"]=$operation3
storeResult["Result_4"]=$operation4

len=${#storeResult[@]}
count=0
for ((i=0;i<$len;i++))
do
	array[((count++))]=${storeResult[Result_$i]}
done


echo $(printf "%d\n" ${array[@]} | sort -n  )
echo $(printf "%d\n" ${array[@]} | sort -nr  )
