#!/bin/sh
sleep 5
/usr/local/bin/python /app/call_api.py >> /var/log/cron.log 2>&1