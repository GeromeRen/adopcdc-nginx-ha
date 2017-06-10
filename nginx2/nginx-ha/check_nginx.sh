!/bin/bash
#logfiletime=$(date +%Y%m%d%H%M%s)
#logfile_name=/etc/keepalived/$logfiletime.log
#echo "start to check" >> $logfile_name
if [ "$(ps -ef | grep "nginx: master process"| grep -v grep )" == "" ]; then
    #echo "nginx is down" >> $logfile_name
    service nginx restart
    sleep 5
    if [ "$(ps -ef | grep "nginx: master process"| grep -v grep )" == "" ]; then
        service keepalived stop
        #echo "service keepalived stop" >> $logfile_name
        exit 1
    else
        exit 0
    fi
else
   #echo "nginx is up" >> $logfile_name
   exit 0
fi
