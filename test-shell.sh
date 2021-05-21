#for  Alapuzha
curl -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:89.0) Gecko/20100101 Firefox/89.0" -X GET "https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/calendarByDistrict?district_id=305&date=22-05-2021" -H  "accept: application/json" -H  "Accept-Language: en_US" | jq
