sudo find /var -type f | xargs sudo du | awk '$1 ~ /^0$/{print $0}'
