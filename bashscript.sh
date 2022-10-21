
# #!/bin/bash


echo " $UID $USER"

echo "$(whoami)"

if [ $? -ne 0 ] 
then
   echo "not success"
else
  echo "success"
fi


test "$(whoami)" = "yaman" && echo "yes" || echo "not yaman"   

for i in {1..3}
do
    read -p "Enter user name: " name
    read -p "EXPIRATION_DAY: " EXPIRATION_DAY
    read -p "Enter ROLE:" ROLE
    sudo useradd "$name" -c "$ROLE" -e $EXPIRATION_DAY;
    sudo passwd  "$name";
done
