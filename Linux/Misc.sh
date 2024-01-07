#!/bin/bash

echo -e "\e[3m Starting Misc.sh \033[0m"

# login.defs configs
echo "SYS_UID_MAX = 999" >> "/etc/login.defs" > /dev/null
echo "PASS_MAX_DAYS	90" >> "/etc/login.defs" > /dev/null
echo "PASS_MIN_DAYS	7" >> "/etc/login.defs" > /dev/null
echo "PASS_MIN_LEN	14" >> "/etc/login.defs" > /dev/null
echo "PASS_WARN_AGE	14" >> "/etc/login.defs" > /dev/null
echo "PASS_MIN_DAYS	10" >> "/etc/login.defs" > /dev/null
echo "FAILLOG_ENAB	yes" >> "/etc/login.defs" > /dev/null
echo "LOG_UNKFAIL_ENAB	yes" >> "/etc/login.defs" > /dev/null
echo "LOG_OK_LOGINS	yes" >> "/etc/login.defs" > /dev/null
echo "SYSLOG_SU_ENAB	yes" >> "/etc/login.defs" > /dev/null
echo "SYSLOG_SG_ENAB	yes" >> "/etc/login.defs" > /dev/null
echo "LOGIN_RETRIES	5" >> "/etc/login.defs" > /dev/null
echo "ENCRYPT_METHOD	SHA512" >> "/etc/login.defs" > /dev/null
echo "LOGIN_TIMEOUT	60" >> "/etc/login.defs" > /dev/null

# crontabs checking
shopt -s nullglob dotglob     # To include hidden files
files=(/var/spool/cron/crontabs/*)
if [ ${#files[@]} -gt 0 ]; then echo "Crontabs exist in /var/spool/cron/crontabs"; fi

echo -e "\e[3m Misc.sh Complete \033[0m"