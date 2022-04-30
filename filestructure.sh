#Created by Matthew Francis
#Date : 06/12/20

#!/bin/bash
#Prompts the user to enter a directory name
echo -n "Enter directory name: "
read dir

#If the user inputs "ACME_plc" as the directory name and this already exists
#then the script will exit
if [ -d "$dir" ]
   then
      echo "Directory already exists"
      exit 1
#If no directory name is entered then the script will exit
elif [ -z "$dir" ];
   then
      echo "you must supply a parameter for this program"
      exit 1
#The script creates the given directories and files
else
   mkdir ACME_plc
   cd ACME_plc
   #Create file showing the user and time/date
   w > logfile.log
   date >> logfile.log
   mkdir Policies
   cd Policies
   mkdir acceptable_use
   mkdir email
   mkdir naming_conventions
   cd ..
   mkdir Public_html
   cd Public_html
   touch index.html
   touch my_details.html
   mkdir Graphics
   cd Graphics
   touch my_pictures,jpg
   touch corporate_logo.gif
   cd ../..
   mkdir Development
   cd Development
   mkdir C
   cd C
   touch template1.h
   touch template1.c
   cd ..
   mkdir Python
   cd Python
   touch template1.py
   touch template2.py
   cd ../..
   mkdir Backup
   echo "Script ran successfully, file structure created!"
fi

#This is a comment
