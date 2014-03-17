a=`date +%Y%m%d%H%M%S`
mkdir -p /app/webappbackup/$a
/app/mp2/bin/shutdown.sh
kill -9 `pgrep -f app/mp2`
\cp /app/mp2/webapps/*.war /app/webappbackup/$a
rm -rf /app/mp2/webapps/*
\cp /app/upload/*.war /app/mp2/webapps/
/app/mp2/bin/startup.sh