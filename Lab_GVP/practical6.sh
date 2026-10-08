date
echo "Date is ........................: $(date '+%d-%m-%y')"
echo "Date is ........................: $(date '+%m/%d/%y')"
echo "Time is ........................: $(date '+%I-%M-%S')"
echo "Time is ........................: $(date '+%I:%M:%S')"
echo "No.of days elapsed in this year is : $(date +%j)"
echo "Serial no of day (of week) is.... : $(date +%W)"
echo "Day and Date is...............: $(date '+%a %h %d, %Y')"
echo "Time in the form AM / PM .......: $(date '+%I:%M:%S %p')"

hours="$(date +%H)"

echo $hours

if [ $hours -ge 5 ] && [ $hours -le 12 ];
then
	echo "GOOD MORNING"
elif [ $hours -ge 13 ] && [ $hours -le 16 ];
then
	echo "GOOD AFTERNOON"
elif [ $hours -ge 17 ] && [ $hours -le 22 ];
then
	echo "GOOD EVENING"
else
	echo "GOOD NIGHT"
fi

