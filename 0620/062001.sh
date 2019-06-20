zipcode=$1
curl http://zip.cgis.biz/csv/zip.php?zn=${zipcode} 2> /dev/null | nkf -wLu
