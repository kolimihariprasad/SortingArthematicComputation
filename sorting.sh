read -p "enter first number" a
read -p "enter first number" b
read -p "enter first number" c
declare -A result
result[result1]=$((a+b*c))
result[result2]=$((a*b+c))
result[result3]=`awk "BEGIN {print $c+$a/$b}"`
result[result4]=$((a%b+c))
for((i=0;i<5;i++))
do
	resultArray[$i]=${result["result"$i]}
done
echo ${resultArray[@]} | sort

