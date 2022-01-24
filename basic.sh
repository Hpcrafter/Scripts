echo This will open all the ports and install the latest version of minecraft server.
echo Make Sure you have done the firewall on the oracle website as well


apt upgrade 
apt update

echo installing Java
apt install openjdk-17-jdk
echo java installed

echo setting up firewall

apt install firewalld 
firewall-cmd --permanent --zone=public --add-port=25565/tcp
firewall-cmd --permanent --zone=public --add-port=25565/udp
firewall-cmd --reload
echo firewall configured 

clear
