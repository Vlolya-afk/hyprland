#!/bin/bash
files=()
i=0
for file in ~/Wallpapers/Static/*;do
	files+=("$file")
	i=$((i+1))
done
read -n1 enter
if [[ "$enter" == "r"  ||  "$enter" == "R"  ||  "$enter" == "К"  ||  "$enter" == "к" ]];
then
	while [ True ]; do 
		if [[ "$enter" == "r"  ||  "$enter" == "R"  ||  "$enter" == "К"  ||  "$enter" == "к" ]];
		then 	
			swww img ${files[$RANDOM % $i]}
			read -n1 enter
		else 
			break
		fi
	done
elif [[ "$enter" == "w" || "$enter" == "W" || "$enter" == "Ц" || "$enter" == "ц" ]];
then
	n=0
	swww img ${files[0]}
	while [ True ]; do	
		read -n1 enter
		if [[ "$enter" == "w" || "$enter" == "W" || "$enter" == "Ц" || "$enter" == "ц" ]];
		then
			n=$((n+1))
			swww img ${files[$n % $i]}
		elif [[ "$enter" == "s" || "$enter" == "S" || "$enter" == "ы" || "$enter" == "Ы" ]];
		then
			n=$((n-1))
			swww img ${files[$n % $i]}
		else
			break
		fi
	done	
else 
	echo "Thanks for use"
fi
