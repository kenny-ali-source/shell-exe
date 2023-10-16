grep "test" /var/log/auth.log | wc -l > number_connection-Date
date_format=$(date +%d-%m-%Y-%H:%M)
mkdir -p ~/Backup
tar -cvf ~/Backup/number_connection-$date_format.tar number_connection-Date
mv ~/Backup/number_connection-$date_format.tar ~/Backup/



