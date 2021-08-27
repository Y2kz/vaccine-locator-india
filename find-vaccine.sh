#!/bin/bash
#echo"Enter District code:"
read -p "Enter District code: " district_code

echo "Date Format (DD-MM-YYYY)"
echo "Eg:21-02-2021"
#echo "Enter the Date:"
read -p "Enter the Date: " date_var
#date_var=$(date +%d-%m-%Y -d "$date_var")
#DATE VERIFICATION #TODO

curl -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:89.0) Gecko/20100101 Firefox/89.0" -X GET "https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/calendarByDistrict?district_id=$district_code&date=$date_var" -H "accept: application/json" -H "Accept-Language: en_US" > temp_data

cat temp_data |jq . > result.txt && echo "File saved as result.txt"
cat result.txt | sed 's_[][,{}"]__g'| sed 's_^[ \t]*_ _g' |tee vaccination_centers.txt
rm temp_data result.txt
cat vaccination_centers.txt | less
#while [ 1 ]

#read vacc center
#loop

#IDEA
#curl -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:89.0) Gecko/20100101 Firefox/89.0" -X GET "https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/calendarByDistrict?district_id=305&date=21-05-2021" -H  "accept: application/json" -H  "Accept-Language: en_US" | jq > result.txt && echo "File saved as result.txt" 
#cat result.txt | sed 's_[][,{}"]__g'| sed 's_^[ \t]*_ _g'
