i=1;
j=$#;
while [ $i -le $j ] 
do
    sudo useradd "$1" -c "$2" -e "2025-1-1";
    sudo passwd  "$1"
    i=$((i + 2));
    shift 2;
done
