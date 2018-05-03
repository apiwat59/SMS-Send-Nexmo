#!/bin/bash

clear
{ IFS=$'\n'; for line1 in $(cat api_key.txt); do echo "$line1" ; done
IFS=$'\n'; for line2 in $(cat api_secret.txt); do echo "$line2" ; done }&> /dev/null
toilet -f ivrit 'SendMessage' | boxes -d cat -a hc -p h8 | lolcat
echo "                                     Api_key=$line1 Api_secret=$line2 " | lolcat
echo "                                                      Note:( Cancel please ctrl+c)" | lolcat
echo "                                                                  C0d3d by !GaSZa!" | lolcat
	 
read -p 'NUMBER Exp.66023456789 66=AreaCode :' userval 
read -p 'From:' userval4
read -p 'Massage:' userval2
read -p 'How many Send Message:' userval3
for ((n=0;n<$userval3;n++))
do
{
curl -X POST  https://rest.nexmo.com/sms/json \
-d api_key=$line1 \
-d api_secret=$line2 \
-d to=$userval \
-d from="$userval4" \
-d text="$userval2"
}&> /dev/null
done 
echo "SUCCESS..." | lolcat




