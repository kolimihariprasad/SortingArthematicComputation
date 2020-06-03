read -p "enter first number" a
read -p "enter first number" b
read -p "enter first number" c
declare -A result
result[result1]=$((a+b*c))
result[result2]=$((a*b+c))
result[result3]=$((c+a/b))
#result[result3]=`awk "BEGIN {print $c+$a/$b}"`
result[result4]=$((a%b+c))
for((k=0;k<5;k++))
do
	resultArray[$k]=${result["result"$k]}
done
echo ${resultArray[@]}
#echo ${resultArray[@]} | sort -r -n
for(( i=1;i<5;i++ ))
do
        for(( j=$i+1;j<5;j++ ))
        do
                if [ ${resultArray[$i]} -gt ${resultArray[$j]} ]
                then
                        temp=${resultArray[$i]}
                        resultArray[$i]=${resultArray[$j]}
                        resultArray[$j]=$temp
                fi
        done
done

echo ${resultArray[@]}
