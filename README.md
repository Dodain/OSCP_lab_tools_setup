# OSCP_lab_tools_setup
Due to recent ban of VPN including Offsec VPN by PTA (Pakistan Telecommunication Authority) it isn't possible to perform scans and other tasks in OSCP Labs. So I wrote this quick bash script which setups basis tools required for OSCP Lab and exam. You can spin an Ec2 Instance or Droplet and setup your lab there. 

# Setup
Just run the script with sudo. It creates a tools directroy in $home directory and installs everything in it. It also adds them in PATH so it is easier to call them on terminal.

# What tools it installs
unzip  
Nmap  
Metasploit Framework  
OpenVpn  
SMBMAP  
showmount  
enum4linux  
nmapautomator  
dirsearch  
gobuster  
cadaver  
nikto  

# Tested On
Ubunutu 18.04 and 20.04

# Todo
- [ ] smbclient
