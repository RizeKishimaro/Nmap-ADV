#!/bin/bash
#Don't repair the script it suck!
#Installation Start here
RED="$(printf '\033[31m')"  GREEN="$(printf '\033[32m')"  ORANGE="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"  CYAN="$(printf '\033[36m')"  WHITE="$(printf '\033[37m')" BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"  GREENBG="$(printf '\033[42m')"  ORANGEBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"  CYANBG="$(printf '\033[46m')"  WHITEBG="$(printf '\033[47m')" BLACKBG="$(printf '\033[40m')"
figlet The Basic Installation
apt install nmap
apt install figlet
sleep 3
figlet installation done
clear
echo -e ${RED}
figlet -s Nmap ADV
echo "Coded by ToXiC_666(YeMinAung)"
echo "${WHITE}"
echo
echo "1.DETECT OS SERVICE"
echo
echo "2.STANDARD SERVICE DETECTION"
echo
echo "3.More aggressive Service Detection"
echo
echo "4.Lighter banner grabbing detection"
echo
echo "5.Scan using default safe scripts "
echo
echo "6.Scan using a specific NSE script"
echo
echo "7.Scan with a set of scripts "
echo
echo "8.I want to Scan IP address"
echo
echo "9.I Want to Scan Http Service"
echo
echo "10.For DDOS "
echo
echo "11.Exit"
echo
read -p "Yeah!I'll Choose : " F
#The Script Start Activate in This Step!
#I think you will see this!I'm Myanmar!
if [[ $F == 1 ]];then
read -p "I'll Collect The Victim ? : "
echo "The 1st Script (DETECT OS SERVICE) Started"
echo
nmap -A $H

elif [[ $F == 2 ]];then
read -p  "I'll Collect The Victim info : " H
echo "The 2nd Script (STANDARD SERVICE DETECTION) Started"
echo "This is the command to scan for running service"
echo
nmap -sV $H

elif [[ $F == 3 ]];then 
read -p "I'll Collect The Victim info : " H
echo "The 3rd Script (More aggressive Service Detection) Started"
echo
nmap -sV --version-intensity 5 $H

elif [[ $F == 4 ]];then
read -p "I'll Collect The Victim info : " H
echo "The 4th Script (Lighter banner grabbing detection) Started"
echo
nmap -sV --version-intensity 0 $H

elif [[ $F == 5 ]];then
read -p "I'll Collect The Victim info : " H
echo "The 5th Script(Scan using default safe scripts) Started"
echo
nmap -sV -sC $H

elif [[ $F == 6 ]];then
read -p "I'll Collect The Victim info : " H
echo "The 6th Script (Scan using a specific NSE script)"
echo
nmap -sV -p 443 –script=ssl-heartbleed.nse $H

elif [[ $F == 7 ]];then
read -p "I'll Collect The Victim info : " H
echo "The 7th script (Scan with a set of scripts) started"
echo
nmap -sV --script=smb* $H

elif [[ $F == 8 ]];then
clear
figlet IP SCAN
read -p "I'll collect the Victim ip! : " i
nmap--script=asn-query,whois,ip-geolocation-maxmind $i

elif [[ $F == 9 ]];then
bash http.sh
elif [[ $F == 10 ]];then
bash ddos.sh
elif [[ $F == 11 ]];then
exit
fi

