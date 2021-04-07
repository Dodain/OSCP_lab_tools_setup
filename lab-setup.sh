echo "Upading repo"
sudo apt update

echo "Installing unzip"
sudo apt install unzip -y
sudo apt install p7zip-full -y

echo "Creating tools directory"
mkdir ~/tools
cd ~/tools/

echo "Installing Nmap"
sudo apt install nmap -y

echo "Installing Metasploit Framework"

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall

echo "Installing OpenVpn"
sudo apt install openvpn -y

echo"Installing showmount"
sudo apt-get install nsf-common -y

echo "Installing SMBMAP"
sudo apt install smbmap -y

echo "Installing enum4linux"
git clone https://github.com/CiscoCXSecurity/enum4linux.git
cd enum4linux
mv enum4linux.pl enum4linux
chmod +x enum4linux
echo "Adding enum4linux in path"
sudo mv enum4linux /usr/local/bin/

echo "Installing nmapautomator"
git clone https://github.com/21y4d/nmapAutomator.git
cd nmapAutomator/
chmod +x nmapAutomator.sh
echo "Adding nmapautomator in path"
sudo cp nmapAutomator.sh /usr/local/bin/nmapautomator

echo "Installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd dirsearch
echo "Installing python pip 3"
sudo apt install python3-pip -y
pip3 install -r requirements.txt

wget https://github.com/OJ/gobuster/releases/download/v3.1.0/gobuster-linux-amd64.7z
7z x gobuster-linux-amd64.7z
cd gobuster-linux-amd64/
chmod +x gobuster
echo "Adding gobuster in path"
sudo cp gobuster /usr/local/bin/


echo "Installing cadaver"
sudo apt install cadaver

echo "Installing nikto"
sudo apt install nikto
