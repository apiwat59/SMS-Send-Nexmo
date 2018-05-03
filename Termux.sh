#!/bin/bash

clear
{ IFS=$'\n'; for line1 in $(cat api_key.txt); do echo "$line1" ; done
IFS=$'\n'; for line2 in $(cat api_secret.txt); do echo "$line2" ; done }&> /dev/null
echo "                                     Api_key=$line1 Api_secret=$line2 "
echo "                                                      Note:( Cancel please ctrl+c)"
echo "                                                                  C0d3d by !GaSZa!"
	 
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
echo "SUCCESS..."




