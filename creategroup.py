import os
import sys
from tokenize import group

group_name = sys.argv[1]

os.system(f"sudo -S groupadd {group_name}")

users = ''
for i in range(2, len(sys.argv)):
    if sys.argv[i] != sys.argv[len(sys.argv)-1]:
        users += sys.argv[i]+","
    else:
        users += sys.argv[i]

os.system(f"sudo -S gpasswd -M {users} {group_name}")

password = input("Enter y/yes to add password to the group: ")

if (password.lower() == "y" or password.lower() == "yes"):
    os.system(f"sudo -S gpasswd {group_name}")


print(users)
