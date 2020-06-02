read -p "enter first number" a
read -p "enter first number" b
read -p "enter first number" c
echo $a $b $c
result1=$((a+b*c))
echo $result1
result2=$((a*b+c))
echo $result2
result3=`awk "BEGIN {print $c+$a/$b}"`
echo $result3
	
