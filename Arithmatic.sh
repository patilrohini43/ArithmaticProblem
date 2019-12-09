echo "Welcome to Arithmatic Operation"
read -p "Enter First Input" a
read -p "Enter Second Input" b
read -p "Enter Third Input" c
cal1=$(( a + b * c ))
cal2=$(( a * b + c ))
cal3=$(( c + a / b ))
cal4=$(( a % b + c))
echo $cal1
echo $cal2
echo $cal3
echo $cal4
declare -A storeResult
storeResult["Result_1"]=$cal1
storeResult["Result_2"]=$cal2
storeResult["Result_3"]=$cal3
storeResult["Result_4"]=$cal4

len=${#storeResult[@]}
count=0
for ((i=0;i<$len;i++))
do
	array[((count++))]=${storeResult[Result_$i]}
done

