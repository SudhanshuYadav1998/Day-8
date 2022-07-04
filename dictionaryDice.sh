#!/bin/bash -x

oneCount=0
twoCount=0
threeCount=0
fourCount=0
fiveCount=0
sixCount=0
i=1
while (( i <= 55))
do
	((i++))
	randomCheck=$((RANDOM%6+1))
	declare -A numCheck
	numCheck[$i]=$(($randomCheck))
		if (($randomCheck == 1))
		then
		((oneCount++))
		elif (($randomCheck==2))
		then
		((twoCount++))
		elif (($randomCheck == 3))
                then
                ((threeCount++))
                elif (($randomCheck== 4))
                then
                ((fourCount++))
		elif (($randomCheck == 5))
                then
                ((fiveCount++))
                elif (($randomCheck==6))
                then
                ((sixCount++))
                fi
done
				if (( $oneCount >  $twoCount && $oneCount >  $threeCount && $oneCount >  $fourCount && $oneCount >  $fiveCount && $oneCount >  $sixCount ))
				then
				echo "1 has reached maximun times"
				elif (( $twoCount >  $oneCount && $twoCount >  $threeCount && $twoCount >  $fourCount && $twoCount >  $fiveCount && $twoCount >  $sixCount ))
                                then
                                echo "2 has reached maximun times"
				elif (( $threeCount >  $twoCount && $threeCount >  $fourCount && $threeCount >  $oneCount && $threeCount >  $fiveCount && $threeCount >  $sixCount ))
                                then
                                echo "3 has reached maximun times"
				elif (( $fourCount >  $oneCount && $fourCount >  $threeCount && $fourCount >  $twoCount && $fourCount >  $fiveCount && $fourCount >  $sixCount ))
                                then
                                echo "4 has reached maximun times"
                                elif (( $fiveCount >  $twoCount && $fiveCount >  $fourCount && $fiveCount >  $oneCount && $fiveCount >  $threeCount && $fiveCount >  $sixCount ))
                                then
                                echo "5 has reached maximun times"
				elif (( $sixCount >  $twoCount && $sixCount >  $fourCount && $sixCount >  $oneCount && $sixCount >  $threeCount && $sixCount >  $fiveCount ))
                                then
                                echo "6 has reached maximun times"
				fi

						if (( $oneCount <  $twoCount && $oneCount <  $threeCount && $oneCount <  $fourCount && $oneCount <  $fiveCount && $oneCount <  $sixCount ))
                                		then
                               			echo "1 has reached minimum times"
                                		elif (( $twoCount <  $oneCount && $twoCount <  $threeCount && $twoCount <  $fourCount && $twoCount <  $fiveCount && $twoCount <  $sixCount ))
                                		then
                                		echo "2 has reached minimum times"
                                		elif (( $threeCount <  $twoCount && $threeCount <  $fourCount && $threeCount <  $oneCount && $threeCount <  $fiveCount && $threeCount <  $sixCount ))
                                		then
                                		echo "3 has reached minimum times"
                                		elif (( $fourCount <  $oneCount && $fourCount <  $threeCount && $fourCount <  $twoCount && $fourCount <  $fiveCount && $fourCount <  $sixCount ))
                                		then
                                		echo "4 has reached minimum times"
                                		elif (( $fiveCount <  $twoCount && $fiveCount <  $fourCount && $fiveCount <  $oneCount && $fiveCount <  $threeCount && $fiveCount <  $sixCount ))
                                		then
                                		echo "5 has reached minimum times"
                                		elif (( $sixCount <  $twoCount && $sixCount <  $fourCount && $sixCount <  $oneCount && $sixCount <  $threeCount && $sixCount <  $fiveCount ))
                                		then
                                		echo "6 has reached minimum times"
                                		fi


echo ${numCheck[@]}
echo "1 - $oneCount times"
echo "2 - $twoCount times"
echo "3 - $threeCount times"
echo "4 - $fourCount times"
echo "5 - $fiveCount times"
echo "6 - $sixCount times"
