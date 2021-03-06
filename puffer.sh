echo This will open all the ports and install PufferPanel
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
firewall-cmd --permanent --zone=public --add-port=5657/tcp
firewall-cmd --permanent --zone=public --add-port=5657/udp
firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --permanent --zone=public --add-port=8080/udp
firewall-cmd --reload
echo firewall configured 

clear

echo installing PufferPanel
curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh | sudo bash
apt-get install pufferpanel
systemctl enable pufferpanel
systemctl start pufferpanel

echo pufferpanel installed. 

echo creating a user
pufferpanel user add

clear 
echo PufferPanel fully setup. It can be accessed at IP:8080
