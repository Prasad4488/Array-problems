echo "Enter three Integers with space"
read  -a array
t=0
for i in ${array[@]};
do
  let t+=$i
done
echo "Total: $t"
