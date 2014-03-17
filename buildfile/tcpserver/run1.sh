a=`date +%Y%m%d%H%M%S`
mkdir -p /app/tcpServer/backup/$a
kill -9 `pgrep -f TcpServer.jar`
mv /app/tcpServer/TcpServer.jar /app/tcpServer/backup/$a
\cp /app/tcpServer/upload/UETcpServer.jar /app/tcpServer/TcpServer.jar
#BUILD_ID=
#nohup java -jar /app/tcpServer/TcpServer.jar >/dev/null 2>&1 &
#java -jar /app/tcpServer/TcpServer.jar
nohup java -jar /app/tcpServer/TcpServer.jar </dev/null>nohup.out 2>&1 &
#tailf nohup.out