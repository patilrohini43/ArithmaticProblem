echo "Welcome to Arithmatic Operation"
read -p "Enter First Input" a
read -p "Enter Second Input" b
read -p "Enter Third Input" c
cal1=$(( a + b * c ))
cal2=$(( a * b + c ))
cal3=$(( c + a / b ))
echo $cal1
echo $cal2
echo $cal3


