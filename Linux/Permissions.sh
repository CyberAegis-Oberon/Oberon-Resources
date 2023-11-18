#!/bin/bash

echo -e "\033[0;31m Starting Permissions.sh \033[0m"

chmod 644 /etc/passwd > /dev/null
chmod 644 /etc/group > /dev/null
chmod 600 /etc/login.defs > /dev/null
# chmod 600 /etc/securetty
chmod 600 /etc/pam.d/* > /dev/null
chmod 0000 /etc/shadow > /dev/null

echo -e "\033[0;31m Permissions.sh Complete \033[0m"