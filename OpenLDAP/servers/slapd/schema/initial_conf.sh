#!/bin/sh

apt update && apt upgrade -y && apt autoremove -y && apt autoclean -y

dpkg-reconfigure -plow slapd

ldapsearch -x -LLL -s base -b "" namingContexts
