clear
figlet For DDOS
echo  "1.Port Scan"
echo
echo "2.Vulnerable to Ddos Scan"
echo
read -p "Choose One Option : " q

if [[ $q == 1 ]];then
clear
toilet PORT SCAN
read -p "I need the Target To Scan : " b
nmap -Pn $b

elif [[ $q == 2 ]];then
clear
toilet Vuln DDOS Scan
read -p "Input the target : " w
nmap --script dos -Pn $w

fi
