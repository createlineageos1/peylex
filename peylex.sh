echo Booting PEYLEX Multitool... Please wait...
sudo apt install cowsay -y
pkg install cowsay -y
apt install nmap -y
sleep 5
clear
cowsay PeYlEx mEnU

echo ==========
echo Menu
echo ----------
echo 1 FSOCIETY DoS -Windows-Only-
echo 2 Nmap LITE
echo 3 Nmap AGGRESIVE SCAN
echo 4 SQLMap
echo 5 Metasploit Framework -Termux-Only-
echo 6 Hashcat Brute-Force -Linux-Debian-Only-
echo 7 Install Android PIN Brute-Force
echo 8 Install BruteX
echo faq FAQ about Peylex

read -p "peylex> " cmd

if [ "$cmd" = "1" ]; then
        git clone https://github.com/vicouncil/FsocietyDDoS
        echo Installed completely to the drive

elif [ "$cmd" = "2" ]; then
        read -p "Enter an IP address to mini scan: " ip
        nmap "$ip"

elif [ "$cmd" = "3" ]; then
        read -p "Enter an IP address to aggresive scan: " ip2
        nmap -p- -T4 -A -v -sC -sV -O "$ip2"

elif [ "$cmd" = "4" ]; then
        echo "Launching SQLMap..."
        git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap
        python3 sqlmap/sqlmap.py

elif [ "$cmd" = "5" ]; then
        apt install wget -y
        wget https://raw.githubusercontent.com/gushmazuko/metasploit_in_termux/master/metasploit.sh
        chmod +x metasploit.sh
        ./metasploit.sh

elif [ "$cmd" = "6" ]; then
        sudo apt install hashcat -y

elif [ "$cmd" = "7" ]; then
        git clone https://github.com/urbanadventurer/Android-PIN-Bruteforce
        bash Android-PIN-Bruteforce/android-pin-bruteforce

elif [ "$cmd" = "8" ]; then
        git clone https://github.com/1N3/BruteX
        bash BruteX/brutex
        bash BruteX/install.sh
        read -p "Enter target domain: " domain
        read -p "Enter target port: " port
        brutex "$domain" "$port"

elif [ "$cmd" = "faq" ]; then
        echo "Peylex is an multitool that includes hacking scripts, tools. It has founded by someone that has nickname called Alexan>
fi
