i=1
echo "if you need any more service than inter 1 else inter 0"
while [ $i == 1 ] 
do
echo "write down your destination"
read -p  "from " from 
read -p  "to " to
From=${from^^}
To=${to^^}
if [ $From == "DHAKA" -o $From == "CHANDRA" -a $To == "ULLAPARA" -o $To == "PAVNA" ] || [ $To == "DHAKA" -o $To == "CHANDRA"  -a $From == "ULLAPARA" -o $From == "PAVNA" ]
then
echo "In this root we have four bus 1.Cline 2.Sorker 3.pabna expres 4.sajadput"
read -p "BUS name " bus
Bus=${bus^^}
#for Cline
if [ $Bus == "CLINE" ]
then
cd CLINE
read -p  "date " date
read -p  "time " times
#for file chack
if [ -f "$date$times.txt" ]
then 
cat "$date$times.txt"
read -p "seat " seat 
#for seat chack
if grep  $seat "$date$times.txt"
then
sed -i 's/'"$seat"'/  /' "$date$times.txt"
echo "Your seat $seat is Booked"
cd ~/Desktop
else 
echo "Your seat $seat is not Abalible"
cd ~/Desktop
fi
#end of seat chack
else
touch "$date$times.txt"
cp seatplan.txt "$date$times.txt"
cat "$date$times.txt"
read -p "seat " seat 
if grep  $seat "$date$times.txt"
then
sed -i 's/'"$seat"'/  /' "$date$times.txt"
echo "Your seat $seat is Booked"
cd ~/Desktop
else 
echo "Your seat $seat is not Abalible"
cd ~/Desktop
fi
fi
#end of file chack here end
#for pabna
elif [ $Bus == "PABNA" ]
then
cd pabna
read -p  "date " date
read -p  "time " times
#for file chack
if [ -f "$date$times.txt" ]
then 
cat "$date$times.txt"
read -p "seat " seat 
#for seat chack
if grep  $seat "$date$times.txt"
then
sed -i 's/'"$seat"'/  /' "$date$times.txt"
echo "Your seat $seat is Booked"
cd ~/Desktop
else 
echo "Your seat $seat is not Abalible"
cd ~/Desktop
fi
#end of seat chack
else
touch "$date$times.txt"
cp seatplan.txt "$date$times.txt"
cat "$date$times.txt"
read -p "seat " seat 
if grep  $seat "$date$times.txt"
then
sed -i 's/'"$seat"'/  /' "$date$times.txt"
echo "Your seat $seat is Booked"
cd ~/Desktop
else 
echo "Your seat $seat is not Abalible"
cd ~/Desktop
fi
fi
#end of file chack here end
#for pabna
elif [ $Bus == "SORKER" ]
then
cd SR
read -p  "date " date
read -p  "time " times
#for file chack
if [ -f "$date$times.txt" ]
then 
cat "$date$times.txt"
read -p "seat " seat 
#for seat chack
if grep  $seat "$date$times.txt"
then
sed -i 's/'"$seat"'/  /' "$date$times.txt"
echo "Your seat $seat is Booked"
cd ~/Desktop
else 
echo "Your seat $seat is not Abalible"
cd ~/Desktop
fi
#end of seat chack
else
touch "$date$times.txt"
cp seatplan.txt "$date$times.txt"
cat "$date$times.txt"
read -p "seat " seat 
if grep  $seat "$date$times.txt"
then
sed -i 's/'"$seat"'/  /' "$date$times.txt"
echo "Your seat $seat is Booked"
cd ~/Desktop
else 
echo "Your seat $seat is not Abalible"
cd ~/Desktop
fi
fi
#end of file chack here end
#for sajadpur
elif [ $Bus == "SAJADPUR" ]
then
cd sajadpur
read -p  "date " date
read -p  "time " times
#for file chack
if [ -f "$date$times.txt" ]
then 
cat "$date$times.txt"
read -p "seat " seat 
#for seat chack
if grep  $seat "$date$times.txt"
then
sed -i 's/'"$seat"'/  /' "$date$times.txt"
echo "Your seat $seat is Booked"
cd ~/Desktop
else 
echo "Your seat $seat is not Abalible"
cd ~/Desktop
fi
#end of seat chack
else
touch "$date$times.txt"
cp seatplan.txt "$date$times.txt"
cat "$date$times.txt"
read -p "seat " seat 
if grep  $seat "$date$times.txt"
then
sed -i 's/'"$seat"'/  /' "$date$times.txt"
echo "Your seat $seat is Booked"
cd ~/Desktop
else 
echo "Your seat $seat is not Abalible"
cd ~/Desktop
fi
fi
#end of file chack here end
else
echo "No Bus is abailbe in by this name"
fi
#end of Bus chack
else
echo "no"
fi
read i
done
