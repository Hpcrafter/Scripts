
echo This will open all the ports and install Only Pterodactyl Panel
echo Make Sure you have done the firewall on the oracle website as well
echo make sure your domain for accessing the panel is setup to go to this servers IP 


apt upgrade 
apt update

echo installing Java
apt install openjdk-17-jdk
echo java installed

echo setting up firewall

apt install firewalld 
firewall-cmd --permanent --zone=public --add-port=80/tcp
firewall-cmd --permanent --zone=public --add-port=80/udp
firewall-cmd --permanent --zone=public --add-port=443/tcp
firewall-cmd --permanent --zone=public --add-port=443/udp
firewall-cmd --permanent --zone=public --add-port=2022/tcp
firewall-cmd --permanent --zone=public --add-port=2022/udp
firewall-cmd --permanent --zone=public --add-port=22/tcp
firewall-cmd --permanent --zone=public --add-port=22/udp
firewall-cmd --permanent --zone=public --add-port=5657/tcp
firewall-cmd --permanent --zone=public --add-port=5657/udp
firewall-cmd --permanent --zone=public --add-port=56423/tcp
firewall-cmd --permanent --zone=public --add-port=56423/udp
firewall-cmd --permanent --zone=public --add-port=8080/tcp
firewall-cmd --permanent --zone=public --add-port=8080/udp
firewall-cmd --permanent --zone=public --add-port=25565/tcp
firewall-cmd --permanent --zone=public --add-port=25565/udp
firewall-cmd --reload
echo firewall configured 

clear

echo installing panel Make Sure to say yes to SSL and enter the domain you want to connect to the panel from
bash <(curl -s https://raw.githubusercontent.com/vilhelmprytz/pterodactyl-installer/master/install-panel.sh)
echo panel installed. It can be accessed at https://yourdomain

echo now install Wings on its server 
