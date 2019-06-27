tar cjf backup.sh.tar.bz2 backup.sh

mkdir tmp
cd tmp/
tar czf 'home'-`date '+%Y%m%d'`.tar.bz2 -X ~/ex.cnf "$HOME"
