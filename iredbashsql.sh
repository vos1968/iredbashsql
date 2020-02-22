#!/bin/bash

#set -x

# Exit if /tmp/lock.file exists
[ -f /tmp/iredbashsql.file ] && exit

# Create lock file, sleep 1 sec and verify lock
echo $$ > /tmp/iredbashsql.file
sleep 1
[ "x$(cat /tmp/iredbashsql.file)" == "x"$$ ] || exit

mysql=/usr/bin/mysql
user=vmailadmin
pass=...



# Remove lock file
rm /tmp/iredbashsql.file
exit 0
