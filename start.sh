for ((i=0;i<4;i++))
do
nohup snarkos start --nodisplay --dev $i --validator >> validator_$i.log&
done

