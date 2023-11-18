#!/bin/bash

echo -e "\e[1m Starting ForbiddenFiles.sh \033[0m"

apt-get install mlocate
locate .mp3
locate .zip
locate .txt
locate .mp4
locate .wav
locate "password"
locate "hash"
locate "crack"
locate "ssn"

echo -e "\e[1m ForbiddenFiles.sh Complet \033[0m"