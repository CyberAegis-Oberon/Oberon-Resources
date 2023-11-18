#!/bin/bash

echo -e "\e[1;33m Starting Firewall.sh \e[0m"

ufw enable > /dev/null
ufw status verbose > /dev/null

echo -e "\e[1;33m Firewall.sh Complete \e[0m"