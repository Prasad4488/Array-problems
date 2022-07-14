l1=0
l2=0
n1=999999
n2=999999
for i in $(seq 1 10) 
do
        res=$(( $RANDOM % 900 + 100 ))
        echo $res
        if [ $n1 -gt $res ]
        then
                n2=$n1
                n1=$res

        elif [ \( $n2 -gt $res \) -a \( $n1 -ne $res \) ]
        then
                num2=$res
        fi
        if [ $res -gt $l1 ]
        then
                l2=$l1
                l1=$res
        elif [ \( $res -gt $l2 \) -a \( $res -ne $l1 \) ]
        then
                l2=$res
        fi
done
echo "Smallest number is $n1"
echo "Second smallest number is $n2"
echo "Largest  number is $l1"
echo "Second largest  number is $l2"
