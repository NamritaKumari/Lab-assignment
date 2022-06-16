figlet "BEGINS"
#I have chosen gulahmed as my domain
echo
echo "What's the Domain you want to work on?"
#domain will be asked from the user
read var;
#var is short for variable,it can be any input
echo
echo "$var"
echo
nslookup $var 
#nslookup checks IP of the domain
echo
echo
sublist3r -d $var  -o   domains.txt
cat domains.txt
#sublist3r tells sub-domains
echo
echo
whois  $var
#it tells the domain name from IP
echo
echo
dig $var >> domains.txt
cat domains.txt
#tells DNS info
echo
echo
theHarvester -d $var -l 500  -b all  -f domains.txt 
#it tells email addresses and their sub-domains
echo
echo
nmap $var >> domains.txt
#nmap tells the ports state
cat domains.txt
echo
echo
dnsrecon  -d  /home/kali/Desktop/script.txt -a  /home/kali/Desktop/script.txt/script.sh
#dnsrecon for ip resolution
echo
figlet "END"


