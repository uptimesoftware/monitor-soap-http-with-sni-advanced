#!/bin/sh

inst=`grep ^inst /etc/init.d/uptime_httpd | cut -d= -f2`
MIBDIRS=$inst/mibs
export MIBDIRS

/usr/local/uptime/apache/bin/php ../../plugins/scripts/monitor-soap-http-with-sni-advanced/monitor-soap-http-with-sni-advanced.php
