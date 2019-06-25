touch backup.sh

tar czf backup.sh.tar.gz backup.sh

mkdir tmp

cd tmp/

tar czf home-`date '+%Y%m%d'`.tar.gz -X ~/ex.cnf "HOME"
