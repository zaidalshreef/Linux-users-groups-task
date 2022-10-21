!/bin/bash


i=1;
j=$#;

dataAfter3year=$(date -d +3years +%Y-%m-%d)

while [ $i -le $j ] 
do
    sudo useradd "$1" -c "$2" -e $dataAfter3year;
    sudo passwd  "$1";
    i=$((i + 2));
    shift 2;
done
