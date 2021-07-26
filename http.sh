clear
toilet HTTP SCAN
echo "1.Gather page titles from HTTP services"
echo
echo "2.Get HTTP headers of web services"
echo
echo "3.Find web apps from known paths"
echo
read -p "Choose Any You want! : " a
read -p "Enter the Site : " d
if  [[ $a == 1 ]];then
nmap --script=http-title $d/24

elif [[ $a == 2 ]];then
nmap --script=http-headers $d/24

elif [[ $a == 3 ]];then
nmap --script=http-enum $d/24
fi
