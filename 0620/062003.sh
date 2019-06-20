line=$1
curl "http://express.heartrails.com/api/json?method=getStations&line=${line}" 2> /dev/null | jq '.response.station[].name'
