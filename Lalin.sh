#!/bin/bash

#=============================================================================

		 	#+ ---=> [ LALIN ( LAZY LINUX ) #

		    # + ---=> [ Welcome and dont disclaimer #

	       # + ---=> [ LALIN Author By Edooo -maland- #

	# + ---=> [ Tested On Kali Linux and Kali sana v.2 #

    # + ---=> [ contact me in screetsec@gmail.com #

# + ---=> [ Improve lazy command in here 

#=============================================================================

#This colour 
cyan='\e[0;36m'
green='\e[0;34m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'



# pause function
function pause(){
   echo -e $cyan""
   read -sn 1 -p "Press any keywoard to continue..."
}


# function ngerusuhlo
function ngerusuhlo {
	clear
        echo -e $white"Ngerusuhlo jan pencet asal dong , try again."
        pause 
        clear
}




##########Update Kali#############

function updatekali {
clear
echo -e $red"============================================================================="
echo -e $white"NOTE : "
echo -e $white"CREATE A BACKUP FILE WHEN YOU RUNE OPTION 1 2 3"
echo""
echo -e $red""
echo "██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗██╗  ██╗ █████╗ ██╗     ██╗"
echo "██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██║ ██╔╝██╔══██╗██║     ██║"
echo -e $white"██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗  █████╔╝ ███████║██║     ██║"
echo "██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝  ██╔═██╗ ██╔══██║██║     ██║"
echo "╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗██║  ██╗██║  ██║███████╗██║"
echo " ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝"
echo "                                                                             "
echo -e $red"============================================================================="
echo -e $white	" 		   Let's Update kali to New Version  "
echo -e $red"============================================================================="
echo "                                                                "
echo -e $white""
select lalinselc in "Add Myrepositories" "Update sources.list ( 2016 )" "Update Kali" "Update and Clean Kali" "Restore Repository" "Backup Repository" "Back to Main"; do
case $lalinselc in
	"Add Myrepositories")
		clear
		echo -e "\033[31m====== Adding new sources list and updating ======\033[m"
		rm /etc/apt/sources.list
		echo 'deb http://http.kali.org/kali sana main contrib non-free' >> /etc/apt/sources.list
		echo 'deb-src http://http.kali.org/kali sana main contrib non-free' >> /etc/apt/sources.list
		echo 'deb http://security.kali.org/kali-security sana/updates main contrib non-free' >> /etc/apt/sources.list
		echo 'deb-src http://security.kali.org/kali-security sana/updates main contrib non-free' >> /etc/apt/sources.list
		echo 'deb http://http.kali.org/kali kali-bleeding-edge contrib non-free main' >> /etc/apt/sources.list
		apt-get update
		apt-get upgrade
		pause
		clear ;;
        "Update sources.list")
                clear
		echo -e "\033[31m====== Adding new sources list and updating ======\033[m"
		rm /etc/apt/sources.list
		echo "" >> /etc/apt/sources.list
		echo '# Security updates ' >> /etc/apt/sources.list
		echo 'deb http://http.kali.org/kali kali-rolling main non-free contrib' >> /etc/apt/sources.list
		apt-get update
		apt-get upgrade
		pause
		clear ;;	

	"Update Kali")
		clear
		echo -e "\033[32mUpdating Kali\033[m"
		#apt-get update && apt-get -y dist-upgrade
		apt-get update && apt-get -y upgrade 
		echo -e "\033[32mDone updating kali\033[m"
		pause
		clear ;;

	"Update and Clean Kali")
		clear
		echo -e "\033[32mUpdating and Cleaning Kali\033[m"
		apt-get update && apt-get -y dist-upgrade && apt-get autoremove -y && apt-get -y autoclean
		echo -e "\033[32mDone updating and cleaning kali\033[m" ;;
	
	"Restore Repository")
		clear
		rm /etc/apt/sources.list
		mv /etc/apt/sources.list.backup /etc/apt/sources.list
		echo -e $red " Done Restore repository "
		pause
		clear ;;	
	
	"Backup Repository")
		clear
		rm /etc/apt/sources.list.backup
		cp /etc/apt/sources.list /etc/apt/sources.list.backup
		echo -e  $red " Backup name is sources.list.backup"
		pause
		clear ;;
		
	"Back to Main")
		clear
		lalin ;;
		
	*)
		ngerusuhlo
		updatekali ;;

esac

break

done
}

#################################################################################
#Install VirtualBox
#################################################################################
function babivirtualbox {
	clear
	echo -e "\e[1;33mThis option will install VirtualBox.\e[0m"
	echo "Do you want to install it ? (Y/N)"
	read install
	if [[ $install = Y || $install = y ]] ; then
			read -p "Are you using a 32bit or 64bit operating system [ENTER: 32 or 64]? " operatingsys
			if [ "$operatingsys" == "32" ]; then 
				echo -e "\e[1;33m[+] Downloading Virtualbox for Debian 32bit\e[0m"
				wget http://download.virtualbox.org/virtualbox/4.3.30/virtualbox-4.3_4.3.30-101610~Debian~wheezy_i386.deb
				echo -e "\e[31m[-] Done with download!\e[0m"
				echo -e "\e[1;33m[+] Installing VirtualBox\e[0m"
				dpkg -i virtualbox-4.3_4.3.30-101610~Debian~wheezy_i386.deb
				rm virtualbox-4.3_4.3.30-101610~Debian~wheezy_i386.deb
				echo -e "\e[34m[-] Done installing VirtualBox on your Kali Linux system!\e[0m"
			else
				echo -e "\e[1;33m[+] Downloading VirtualBox for Debian 64bit\e[0m"
				wget http://download.virtualbox.org/virtualbox/4.3.30/virtualbox-4.3_4.3.30-101610~Debian~wheezy_amd64.deb
				echo -e "\e[31m[-] Done with download!\e[0m"
				echo -e "\e[1;33m[+] Installing VirtualBox\e[0m"
				dpkg -i virtualbox-4.3_4.3.30-101610~Debian~wheezy_amd64.deb
				rm virtualbox-4.3_4.3.30-101610~Debian~wheezy_amd64.deb
				echo -e "\e[34m[-] Done installing VirtualBox on your Kali Linux system!\e[0m"
			fi
		else
			echo -e "\e[34m[-] Ok,maybe later !\e[0m"
		fi
}

#################################################################################
#Install Vmware 
#################################################################################
function installVmware {
	clear
	echo -e "\e[1;31mThis option will install Vmware-tools!\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Installing Vmware Tools ======\033[m"
				sleep 2
				apt-get -y -qq install open-vm-tools-desktop fuse 				
				echo -e "\033[32m====== Done Installing ======\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}

#################################################################################
# Install Qemu
#################################################################################
function installqemu {
	clear
	echo -e "\e[1;31mThis option will install Qemu with the packages!\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m=============================== Installing Qemu ===============================\033[m"
				sleep 2
				apt-get -y -qq install qemu-system 				
				echo -e "\033[32m=============================== Done Installing ===============================\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi

}	

#################################################################################
# Install VKM
#################################################################################
function installvkm {
	clear
	echo -e "\e[1;31mThis option will install VKM!\e[0m"
	echo -e ""
	echo -e $red"NOTE : "
	echo -e $white"KVM only works if your CPU has hardware virtualization support – either Intel VT-x or AMD-V."
	echo 
	echo -e $red"For Detail : " 
	echo -e $white"http-www-howtogeek.com/117635/how-to-install-kvm-and-create-virtual-machines-on-ubuntu/"
	echo
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m=============================== Installing VKM ===============================\033[m"
				sleep 2
				apt-get -y -qq install qemu-kvm libvirt-bin bridge-utils virt-manager 				
				echo -e "\033[32m=============================== Done Installing ===============================\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}
########VIRTUAL MACHINE##############
function virtualme {
clear
echo -e $white"============================================================================"
echo -e $yellow"NOTE : "
echo -e $white"You Must Connect To The Internet "
echo -e $cyan""
echo "██╗   ██╗██╗██████╗ ███╗   ███╗ █████╗  ██████╗██╗  ██╗██╗███╗   ██╗███████╗";
echo "██║   ██║██║██╔══██╗████╗ ████║██╔══██╗██╔════╝██║  ██║██║████╗  ██║██╔════╝";
echo "██║   ██║██║██████╔╝██╔████╔██║███████║██║     ███████║██║██╔██╗ ██║█████╗  ";
echo "╚██╗ ██╔╝██║██╔══██╗██║╚██╔╝██║██╔══██║██║     ██╔══██║██║██║╚██╗██║██╔══╝  ";
echo " ╚████╔╝ ██║██║  ██║██║ ╚═╝ ██║██║  ██║╚██████╗██║  ██║██║██║ ╚████║███████╗";
echo "  ╚═══╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝";
echo "                                                                            ";
echo -e $white"============================================================================"
echo -e $cyan	" 		Let's Intall Virtual Machine for Pentesting  "
echo -e $white"============================================================================"
echo "                                                                "
echo -e $white""
select lalinselc in "Install VirtualBox" "Install Vmware" "Install Qemu" "Install VKM" "Back to Main"; do
case $lalinselc in
	"Install VirtualBox")
		babivirtualbox
		pause
		virtualme ;;

	"Install Vmware")
		installVmware
		pause
		virtualme ;;

	"Install Qemu")
		installqemu
		pause
		virtualme ;;
	
	"Install VKM")
		installvkm
		pause
		virtualme ;;

	"Back to Main")
		clear
		lalin ;;
	*)
		ngerusuhlo
		virtualme ;;
			
esac

break

done
}


#################################################################################
# Install Google Chrome
#################################################################################
function gchrome {
	echo -e "\e[1;31mThis option will install Google Chrome Latest Version!\e[0m"
	echo "Do you want to install it ? (Y/N)"
	read install
	if [[ $install = Y || $install = y ]] ; then
			read -p "Are you using a 32bit or 64bit operating system [ENTER: 32 or 64]? " operatingsys
			if [ "$operatingsys" == "32" ]; then 
				echo -e "\e[1;31m[+] Downloading google-chrome-stable_current_i386\e[0m"
				wget wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
				echo -e "\e[32m[-] Done with download!\e[0m"
				echo -e "\e[1;31m[+] Installing google-chrome\e[0m"
				dpkg -i google-chrome-stable_current_i386.deb
				cp /opt/google/chrome/google-chrome.desktop /usr/share/applications/google-chrome.desktop
				echo -e "\e[1;31m[+] Patching to run as root!\e[0m"
				head -n -1 /opt/google/chrome/google-chrome > temp.txt ; mv temp.txt /opt/google/chrome/google-chrome
				echo 'exec -a "$0" "$HERE/chrome"  "$@" --user-data-dir' >> /opt/google/chrome/google-chrome
				chmod +x /opt/google/chrome/google-chrome
				echo -e "\e[32m[-] Done patching!\e[0m"
				rm google-chrome-stable_current_i386.deb
				echo -e "\e[32m[-] Done installing enjoy chrome!\e[0m"
			else
				echo -e "\e[1;31m[+] Downloading google-chrome-stable_current_amd64\e[0m"
				wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
				echo -e "\e[32m[-] Done with download!\e[0m"
				echo -e "\e[1;31m[+] Installing google-chrome\e[0m"
				dpkg -i google-chrome-stable_current_amd64.deb
				cp /opt/google/chrome/google-chrome.desktop /usr/share/applications/google-chrome.desktop
				echo -e "\e[1;31m[+] Patching to run as root!\e[0m"
				head -n -1 /opt/google/chrome/google-chrome > temp.txt ; mv temp.txt /opt/google/chrome/google-chrome
				echo 'exec -a "$0" "$HERE/chrome"  "$@" --user-data-dir' >> /opt/google/chrome/google-chrome
				chmod +x /opt/google/chrome/google-chrome
				echo -e "\e[32m[-] Done patching!\e[0m"
				rm google-chrome-stable_current_amd64.deb
				echo -e "\e[32m[-] Done installing enjoy chrome!\e[0m"
			fi
		else
			echo -e "\e[32m[-] Ok,maybe later !\e[0m"
		fi

}

#################################################################################
# Install Chromium
#################################################################################
function gchromium {
	clear
	echo -e "\e[1;31mThis option will install Chromium !\e[0m"
	echo -e ""
	apt-get update
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m=========================== Installing Chromium ===============================\033[m"
				sleep 2
				apt-get --force-yes install Chromium 				
				echo -e "\033[32m=============================== Done Installing ===============================\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi

}	

#################################################################################
# Install Firefox
#################################################################################
function gfox {
	echo -e "\e[1;31mThis option will install Firefox!\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m=============================== Installing Firefox ============================\033[m"
				sleep 2
				apt-get -y remove iceweasel
				echo -e deb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main | tee -a /etc/apt/sources.list > /dev/null
				apt-key adv –recv-keys –keyserver keyserver.ubuntu.com C1289A29
				apt-get update
				apt-get --force-yes install firefox-mozilla-build				
				echo -e "\033[32m=============================== Done Installing ===============================\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}

#################################################################################
# Tor Browser
#################################################################################
function gtor {
if [ ! -f /root/tor-browser_en-US/Browser/start_tor_browser ]; then
	echo -e "\e[1;31mThis option will install Tor Browser!\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Installing Tor Browser ======\033[m"
				sleep 2
				cd /root/Desktop
				wget https://www.torproject.org/dist/torbrowser/4.5.3/tor-browser-linux32-4.5.3_en-US.tar.xz
				tar -xf tor-browser-linux32-4.5.3_en-US.tar.xz
				cd /root/Desktop/tor-browser_en-US/Browser/
				mv start-tor-browser start-tor-browser.txt
				sed -i 's/`id -u`" -eq 0/`id -u`" -eq 1/g' start-tor-browser.txt
				mv start-tor-browser.txt start-tor-browser
				cd ..
				ls -ld
				chown -R root:root .
				ls -ld
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
	else
		echo -e "\e[32m[-] Tor Browser already installed !\e[0m"
	fi
}

######## BROWSERS MENU ##############
function listbrowser {
clear
echo -e $green"======================================================================="
echo -e $red"NOTE : "
echo -e $white"You Must Connect To The Internet "
echo -e $white"	____________ _____ _    _ _____ ___________  _____ "
echo "	| ___ \ ___ \  _  | |  | /  ___|  ___| ___ \/  ___|"
echo "	| |_/ / |_/ / | | | |  | \ \`--.| |__ | |_/ /\ \`--. "
echo "	| ___ \    /| | | | |/\| |\`--. \  __||    /  \`--. "
echo "	| |_/ / |\ \\ \_/ |  /\  /\__/ / |___| |\ \ /\__/ /"
echo "	\____/\_| \_|\___/ \/  \/\____/\____/\_| \_|\____/ "
echo
echo -e $green"======================================================================="
echo -e $white	" 		Let's Intall  and chocie your fav browser  "
echo -e $green"======================================================================="
echo "                                                                "
echo -e $white""
select lalinselc in "Install Google Chrome" "Install Chromium" "Install Firefox" "Install Min" "Install TOR" "Back to Main"; do
case $lalinselc in
	"Install Google Chrome")
		gchrome
		pause
		listbrowser ;;

	"Install Chromium")
		gchromium
		pause
		listbrowser ;;

	"Install Firefox")
		gfox
		pause
		listbrowser ;;
	
	"Install Min")
		firefox https://minbrowser.github.io/min/
		firefox http://www.linuxsec.org/2016/06/min-web-browser.html
		pause
		listbrowser ;;
	
	"Install TOR")
		gtor
		pause
		listbrowser ;;

	"Back to Main")
		clear
		lalin ;;
	*)
		ngerusuhlo
		virtualm ;;
			
esac

break

done
}

######################################################################
#Install linset
######################################################################
function wlinset {
	clear
	echo""
	echo -e $white"Linset is not social enginering toolkit "
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				clear	
				echo -e "\033[31m========================== Installing Linset ===============================\033[m"
				sleep 2
				rm -rf /root/Linset
				git clone https://github.com/kernel-64/linset.git /root/Linset/
				echo 
				echo -e "\033[31m================ Finish , now linset in /root/Linset ========================\033[m"
			else
				clear
				echo -e $white"Okays , Maybe see you next time "
			fi
}

#####################################################################
#Install wpsbreaker
######################################################################
function wbreak {
	clear
	echo""
	echo -e $white"High Touch WPS Breaker [HT-WB] is a small tool based on the bash script language, "
	echo -e "it can help you to extract the wps pin of many vulnerable routers and get the password,"
	echo""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				clear	
				echo -e "\033[31m========================== Installing Wpsbreaker ============================\033[m"
				sleep 2
				rm -rf /root/wpsbreak
				git clone https://github.com/SilentGhostX/HT-WPS-Breaker.git /root/wpsbreak/
				echo 
				echo -e "\033[31m================ Finish , now linset in /root/wpsbreak ========================\033[m"
			else
				clear
				echo -e $white"Okays , Maybe see you next time "
			fi
}



####################################################################
#Install wifiphisher
######################################################################
function wphiser {
	clear
	echo""
	echo -e $white"Wifiphisher is a security tool that mounts automated phishing attacks against WiFi networks in order to obtain secret passphrases or other credentials "
	echo -e "it is a social engineering attack that unlike other methods it does not include any brute forcing."
	echo""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				clear	
				echo -e "\033[31m========================== Installing WifiPhiser ============================\033[m"
				sleep 2
				rm -rf /root/wifiphiser
				git clone https://github.com/Tle7839/wifiphiser.git /root/WifiPhiser/
				echo 
				echo -e "\033[31m================ Finish , now linset in /root/WifiPhiser ======================\033[m"
			else
				clear
				echo -e $white"Okays , Maybe see you next time "
			fi
}

####################################################################
#Install Fluxion
######################################################################
function wflux {
	clear
	echo""
	echo -e $white"Fluxion is a remake of linset by vk439 with fixed bugs and added features. s "
	echo -e "It's compatible with the latest release of Kali"
	echo""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				clear	
				echo -e "\033[31m========================== Installing Fluxion ============================\033[m"
				sleep 2
				rm -rf /root/wpsbreak
				git clone https://github.com/deltaxflux/fluxion.git /root/fluxion/
				echo 
				echo -e "\033[31m================ Finish , now linset in /root/fluxion ========================\033[m"
				sleep 2
				sh /root/fluxion/installer.sh
			else
				clear
				echo -e $white"Okays , Maybe see you next time "
			fi
}

####################################################################
#Install wifi-hacker ( wpa , wep ,wps )
######################################################################
function whack {
	clear
	echo""
	echo -e $white"Shell Script For Attacking Wireless Connections Using Built-In Kali Tools."
	echo -e "Supports All Securities (WEP, WPS, WPA, WPA2)."
	echo""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				clear	
				echo -e "\033[31m========================== Installing Wifihacker ============================\033[m"
				sleep 2
				rm -rf /root/wifihacker
				git clone https://github.com/esc0rtd3w/wifi-hacker.git /root/Wifihacker/
				echo 
				echo -e "\033[31m================ Finish , now linset in /root/Wifihacker ======================\033[m"
			else
				clear
				echo -e $white"Okays , Maybe see you next time "
			fi
}
######################################################################
# Install wifite
######################################################################
function wwifite {
	echo -e "\e[1;31mThis option will install wifite!\e[0m"
	echo -e "\e[1;31mAn automated wireless attack tool.\e[0m"
	echo -e "\e[1;31mHow to use wifite\e[0m"
	echo -e "\e[1;31mhttps://www.youtube.com/watch?v=3n_lugYLApw\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====================== Installing wifite ==========================\033[m"
				sleep 2
				rm -rf /opt/WiFu/wifite/
				git clone https://github.com/derv82/wifite.git /opt/WiFu/wifite/
				echo -e "\033[31m====================== Installing wifite Done ==========================\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}
#################################################################################### 
#Install wpa-autopwn
####################################################################################
function wtown {
	echo -e "\e[1;31mThis option will install wpa-autopwn!\e[0m"
	echo -e "\e[1;31mWPA/WPA2 autopwn script that parses captured handshakes and sends them to the Crackq\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m======================== Installing wpa-autopwn ==============================\033[m"
				sleep 2
				rm -rf /opt/WiFu/wpa-autopwn/
				git clone https://github.com/vnik5287/wpa-autopwn.git /opt/WiFu/wpa-autopwn/
				echo -e "\033[31m====================== Installing wpa-autopwn Done ==========================\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}


########################################################
# Update Exploitdb
##########################################################
function updateexploitdb {
	clear
	echo -e "\033[31mThis script will update your Exploitdb\033[m"
	cd /usr/share/exploitdb
	rm -rf archive.tar.bz2
	wget http://www.exploit-db.com/archive.tar.bz2
	tar xvfj archive.tar.bz2
	rm -rf archive.tar.bz2
	echo -e "\e[32m[-] Done Updating Exploitdb!\e[0m"	
}

############################################################
# Searchsploit
##################################################################
function searchsploit {
	clear
	echo -e "\033[31mWhat do you want to Hack Today?\033[m"
	echo -e "\033[31mEnter a search term and hit Enter\033[m"
	read searchterm
	gnome-terminal --maximize -t "Seachsploit" --working-directory=WORK_DIR -x bash -c "searchsploit $searchterm; echo -e '\e[32m[-] Close this window when done!\e[0m'; bash" 2>/dev/null & sleep 2
	
}

######## Menu Update Exploitdb ##########
function exploitdb {
clear
echo -e $white"======================================================================="
echo -e $red"NOTE : "
echo -e $white"You Must Connect To The Internet "
echo
echo -e $red"  	      ) (   (       ) (          (          ";
echo " 	    ( /( )\ ))\ ) ( /( )\ )  *   ))\ )   (   ";
echo " 	(   )\()|()/(()/( )\()|()/(\` )  /(()/( ( )\  ";
echo " 	)\ ((_)\ /(_))(_)|(_)\ /(_))( )(_))(_)))((_) ";
echo "	((_)__((_|_))(_))   ((_|_)) (_(_()|_))_((_)_  ";
echo "	| __\ \/ / _ \ |   / _ \_ _||_   _||   \| _ ) ";
echo "	| _| >  <|  _/ |__| (_) | |   | |  | |) | _ \ ";
echo "	|___/_/\_\_| |____|\___/___|  |_|  |___/|___/ ";
echo "                                              ";
echo -e $white"======================================================================="
echo -e $red	" 		Let's Intall and update   "
echo -e $white"======================================================================="
echo "                                                                "        
select lalinselc in "Update Exploitdb" "Searchsploit" "Back to Main"; do
case $lalinselc in
	"Update Exploitdb")
		updateexploitdb
		pause 
		exploitdb;;
	
	"Searchsploit")
		searchsploit
		pause
		exploitdb ;;

	"Back to Main")
		clear
		mainmenu ;;
		
	*)
		ngerusuhlo
		exploitdb ;;
	
		
esac

break

done
}


######## WiFu Menu ####
function wifu {
clear
echo -e $cyan"======================================================================="
echo -e $red"NOTE : "
echo -e $white"You Must Connect To The Internet "
echo
echo -e $red"		 _    _ _____ ___________ _   _ "
echo "		| |  | |_   _|_   _|  ___| | | |"
echo "		| |  | | | |   | | | |_  | | | |"
echo "		| |/\| | | |   | | |  _| | | | |"
echo "		\  /\  /_| |_ _| |_| |   | |_| |"
echo "		 \/  \/ \___/ \___/\_|    \___/ "
echo "                                "
echo -e $cyan"======================================================================="
echo -e $white	" 		Let's Intall WiFu Tool and chocie your fav   "
echo -e $cyan"======================================================================="
echo -e $white""
select lalinselc in "Linset" "Wpsbreaker" "Wifiphiser" "Fluxion" "wifi-hack" "wifite" "wpa-autopwn" "Back to Main"; do
case $lalinselc in

	"Linset")
		wlinset
		pause
		wifu ;;
		
	"Wpsbreaker")
		wbreak
		pause
		wifu ;;
	
	"Wifiphiser")
		wphiser
		pause
		wifu ;;
		
	"Fluxion")
		wflux
		pause
		wifu ;;
		
	"wifi-hack")
		whack
		pause
		wifu ;;
		
	"wifite")
		wwifite
		pause
		wifu ;;

	"wpa-autopwn")
		wtown
		pause
		wifu ;;

	"Back to Main")
		clear
		mainmenu ;;
		
	*)
		ngerusuhlo
		wifu ;;
	
		
esac

break

done
}

#############################################################################
# Install Firefox Security Toolkit
#############################################################################

function fst {
	echo -e "\e[1;31mThis option will install Firefox Security Toolkit !\e[0m"
	echo -e "\e[1;31mA tool that transforms Firefox browsers into a penetration testing suite\e[0m"
	echo""
	echo -e $yellow"Available Addons:-"
	echo -e $cyan""
	echo +"    Cookie Export/Import"
	echo +"    Cookie Manager"
	echo +"    Copy as Plain Text"
	echo +"    Crypto Fox"
	echo +"    CSRF-Finder"
	echo +"    Disable WebRTC"
	echo +"    FireBug"
	echo +"    Fireforce"
	echo +"    FlagFox"
	echo +"    Foxy Proxy"
	echo +"    HackBar"
	echo +"    Live HTTP Headers"
	echo +"    Multi Fox"
	echo +"    PassiveRecon"
	echo +"    Right-Click XSS"
	echo +"    Tamper Data"
	echo +"    User Agent Switcher"
	echo +"    Wappalyzer"
	echo +"    Web Developer"
	echo""
	echo -e $yellow"Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m========================== Installing Firefox Security ============================\033[m"
				sleep 2
				cd "tools" 
				chmod +x fst.sh
				bash ./fst.sh run
				echo -e "\033[31m========================== Installing Firefox Security ============================\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}




#############################################################################
# Install bettercap
#############################################################################

function ibettercap {
	echo -e "\e[1;31mThis option will install bettercap!\e[0m"
	echo -e "\e[1;31mA complete, modular, portable and easily extensible MITM framework.\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m========================== Installing Bettercap ============================\033[m"
				sleep 2
				rm -rf /opt/MITM/bettercap/
				git clone https://github.com/evilsocket/bettercap /opt/MITM/bettercap/
				sudo apt-get install build-essential ruby-dev libpcap-dev
				cd /opt/MITM/bettercap/
				gem build bettercap.gemspec
				sudo gem install bettercap*.gem
				echo -e "\e[32m[-]==========================  Done Installing! ===============================\e[0m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}

#################################################################################### 
#Install mitmf
####################################################################################
function imitmf {
if [ ! -f /opt/MITMf-master/mitmf.py ]; then
	echo -e "\e[1;31mThis option will install mitmf!\e[0m"
	echo -e "\e[1;31mFramework for Man-In-The-Middle attacks\e[0m"
	echo -e "\e[1;31mDefeat HTST to get HTTPS password\e[0m"
	echo -e "\e[1;31mhttps://www.youtube.com/watch?v=KtYWeeQ4hoI\e[0m"
	echo -e "\e[1;31mHow to use MITMF\e[0m"
	echo -e "\e[1;31mhttps://www.youtube.com/watch?v=0trxc7axE4Y\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m========================== Installing mitmf ==========================\033[m"
				sleep 2
				rm -rf /opt/Sniffing-Spoofing/mitmf/
				git clone https://github.com/byt3bl33d3r/MITMf.git /opt/Sniffing-Spoofing/mitmf/
				cd  /opt/Sniffing-Spoofing/mitmf/
				./setup.sh
				apt-get -y install python-dev python-setuptools libpcap0.8-dev libnetfilter-queue-dev
				pip install --upgrade -r requirements.txt
				else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
	else
		echo -e "\e[32m[-] MITMF already installed !\e[0m"
	fi
}


####################################################################
#Install Weeman
######################################################################
function iweeman {
	clear
	echo""
	echo -e $white"HTTP server for phishing in python. (and framework) "
	echo -e "Usually you will want to run Weeman with DNS spoof attack. (see dsniff, ettercap)."
	echo""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				clear	
				echo -e "\033[31m========================== Installing Weeman ============================\033[m"
				sleep 2
				rm -rf /root/Weeman
				git clone https://github.com/Hypsurus/weeman.git /root/Weeman/
				echo 
				echo -e "\033[31m================ Finish , now linset in /root/Weeman ======================\033[m"
			else
				clear
				echo -e $white"Okays , Maybe see you next time "
			fi
}


####################################################################
#Install yamas
#####################################################################
function iyamas {
	if [ ! -f /usr/bin/yamas ]; then
		echo "Yamas is not installed. Do you want to install it ? (Y/N)"
		read install
		if [[ $install = Y || $install = y ]] ; then
			cd /tmp
			wget http://comax.fr/yamas/bt5/yamas.sh
			cp yamas.sh /usr/bin/yamas
			chmod +x /usr/bin/yamas
			rm yamas.sh
			cd
			echo "Script should now be installed. Launching it !"
			sleep 3
			gnome-terminal -t "Yamas" -x bash yamas 2>/dev/null & sleep 2
			exit 1
		else
			echo -e "\e[32m[-] Ok,maybe later !\e[0m"
		fi
	else
		echo "Script is installed"
		gnome-terminal -t "Yamas" -x bash yamas 2>/dev/null & sleep 2
		sleep 1
	fi		
}


####################################################################
#Install easycreds
#####################################################################
function iEasy {
	if [ ! -f /usr/bin/easy-creds ]; then
		echo "This will install Easy-Creds. Do you want to install it ? (Y/N)"
		read install
			if [[ $install = Y || $install = y ]] ; then
				echo -e "\033[31m====== Installing Depends ======\033[m"
				apt-get -y install screen hostapd dsniff dhcp3-server ipcalc aircrack-ng
				echo -e "\033[32m====== Done Installing Depends ======\033[m"
				echo -e "\033[31m====== Installing Easy-Creds ======\033[m"
				git clone git://github.com/brav0hax/easy-creds.git /opt/easy-creds
				ln -s /opt/easy-creds/easy-creds.sh  /usr/bin/easy-creds
				cd /root/ &>/dev/null
				echo -e "\033[32m===== All Done ======\033[m"
				echo "Launching easy-creds in new window !"
				gnome-terminal -t "Easy-Creds" -e easy-creds 2>/dev/null & sleep 2				
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
		else
			echo "Easy-Creds is installed."
			echo "Launching easy-creds in new window !"
			gnome-terminal -t "Easy-Creds" -e easy-creds 2>/dev/null & sleep 2	
		fi	
}

####################################################################
#Install pwnstar
#####################################################################
function iPwn {
		if [ ! -e "/opt/PwnSTAR_0.9/PwnSTAR_0.9" ];then
			echo "PwnStar is not installed. Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				mkdir /opt/PwnSTAR_0.9
				cd /opt/PwnSTAR_0.9
				wget http://pwn-star.googlecode.com/files/PwnSTAR_0.9.tgz
				tar -zxvf PwnSTAR_0.9.tgz 
				mv hotspot_3 /var/www/ && mv portal_hotspot /var/www/ && mv portal_pdf /var/www/ && mv portal_simple /var/www/
				#rm $0
				echo "PwnStar should now be installed. Launching it !"
				sleep 3
				gnome-terminal -t "PwnStar" -e /opt/PwnSTAR_0.9/PwnSTAR_0.9 2>/dev/null & sleep 2
				pause
				sniffspoof
				exit 1
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
		else
			echo "PwnStar is installed, Launching it now!"
			sleep 1
			gnome-terminal -t "PwnStar" -e /opt/PwnSTAR_0.9/PwnSTAR_0.9 2>/dev/null & sleep 2
		fi 
}


####################################################################
#Install subterfuge
#####################################################################
function installsubterfuge {
	echo "This will install Subterfuge. Do you want to install it ? (Y/N)"
	read install
	if [[ $install = Y || $install = y ]] ; then
		echo -e "\e[31m[+] Installing Subterfuge now!\e[0m"
		cd /tmp
		wget http://subterfuge.googlecode.com/files/SubterfugePublicBeta5.0.tar.gz
		tar zxvf SubterfugePublicBeta5.0.tar.gz
		cd subterfuge
		python install.py
		cd ../
		rm -rf subterfuge/
		rm SubterfugePublicBeta5.0.tar.gz
		echo -e "\e[32m[-] Done Installing Subterfuge!\e[0m"		
	else
		echo -e "\e[32m[-] Ok,maybe later !\e[0m"
	fi
}

##### Subterfuge
function iSub {
	if [ ! -f /usr/local/bin/unicornscan ]; then
			installsubterfuge
		else
			echo "Subterfuge is installed."
			echo -e "\e[31m[+] Launching Subterfuge now!\e[0m"
			echo "leave the window that opens open until done using."
			gnome-terminal -t "Subterfuge" -e subterfuge 2>/dev/null & sleep 2			
		fi	
}

##### Ghost-Phisher
function iGhost {
	if [ ! -f /opt/Ghost-Phisher/ghost.py ]; then
			installghostphisher
		else
			echo "Ghost-Phisher is installed."
			echo -e "\e[31m[+] Launching Ghost-Phisher now!\e[0m"
			python /opt/Ghost-Phisher/ghost.py 2>/dev/null & sleep 2			
		fi	
}
#############################################################
#Install Ghost-Phisher
#############################################################
function installghostphisher {
	echo "This will install Ghost-Phisher. Do you want to install it ? (Y/N)"
	read install
	if [[ $install = Y || $install = y ]] ; then
		echo -e "\e[31m[+] Installing Ghost-Phisher now!\e[0m"
		cd /tmp
		wget http://ghost-phisher.googlecode.com/files/Ghost-Phisher_1.5_all.deb
		dpkg -i Ghost-Phisher_1.5_all.deb
		rm Ghost-Phisher_1.5_all.deb
		echo -e "\e[32m[-] Done Installing GhostFisher!\e[0m"		
	else
		echo -e "\e[32m[-] Ok,maybe later !\e[0m"
	fi
	
	
}

############################################################################## 
#Hunting with rodents hamster and ferret
##############################################################################
function ihf {
		if [ ! -e "/usr/share/hamster-sidejack/ferret" ];then
			echo -e "\033[31m[+] Creating link /usr/share/hamster-sidejack/ferret\033[m"
			echo "we need this to avoid file not found error"
			ln -s /usr/bin/ferret /usr/share/hamster-sidejack/ferret
			hamfer			
		else
			echo -e "\033[31m[+] Starting Sidejacking with Hamster & Ferret.\033[m"
			echo "1" > /proc/sys/net/ipv4/ip_forward
			iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --to-port 1000
			sslstrip -f -a -k -l 1000 -w /root/out.txt &
			sleep 4
			xterm -T "arpspoof" -e arpspoof -i $IFACE $DEFAULT_ROUTE &
			sleep 2
			#xterm -e /usr/share/hamster-sidejack/ferret -i $IFACE 2>/dev/null & sleep 2
			cd /usr/share/hamster-sidejack
			xterm -e ./hamster 2>/dev/null & sleep 2 
			echo -e "\n\033[31m[+] Attack is running\033[m.\nSet browser proxy to 127.0.0.1:1234\nIn Browser go to http://hamster\nPress (q) to stop"
			cd
			while read -n1 char
			do
				case $char in
				q)
				break
				;;
			
				* )
					echo -ne "\nInvalid character '$char' entered. Press (q) to quit."
				esac
			done
			echo -e "\033[31m\n[+] Killing processes and resetting iptable.\033[m"
			killall sslstrip
			killall arpspoof
			killall ferret
			killall hamster
			echo "0" > /proc/sys/net/ipv4/ip_forward
			iptables --flush
			iptables --table nat --flush
			iptables --delete-chain
			iptables --table nat --delete-chain
			echo -e "\033[32m[-] Clean up successful !\033[m"
	
		fi	

}


######## MENU SNINFFING&MITM ####
function snim {
clear
echo -e $cyan"======================================================================="
echo -e $red"NOTE : "
echo -e $white"You Must Connect To The Internet "
echo -e $red""
echo "	 __ _  _ _ _  _ ___ ___ _ _  _  __  _   _   _ _ ___ _   _ ";
echo "	/ _| \| | | \| | __| __| | \| |/ _|(o) | \_/ | |_ _| \_/ |";
echo "	\_ \ \\ | | \\ | _|| _|| | \\ ( |_n/oV7| \_/ | || || \_/ |";
echo "	|__/_|\_|_|_|\_|_| |_| |_|_|\_|\__/\_n\|_| |_|_||_||_| |_|";
echo "                                                          ";
echo -e $cyan"======================================================================="
echo -e $white	" 		Let's Intall Sniffing and Mitm Tools   "
echo -e $cyan"======================================================================="
echo -e $white""
select lalinselc in "Bettercap" "Mitmf" "Weeman" "Yamas" "EasyCreds" "PwnStar" "Subterfuge" "Ghost-Phiser" "Hunting With Hamster&ferret" "Back to Main"; do
case $lalinselc in

	"Bettercap")
		ibettercap
		pause
		snim ;;
		
	"Mitmf")
		imitmf
		pause
		snim ;;
			

	"Weeman")
		iweeman
		pause
		snim ;;
			
	"Yamas")
		iyamas
		pause
		snim ;;

	"EasyCreds")
		iEasy
		pause
		snim ;;

	"PwnStar")
		iPwn
		pause
		snim ;;

	"Subterfuge")
		iSub
		pause
		snim ;;

	"Ghost-Phiser")
		iGhost
		pause
		snim ;;

	"Hunting With Hamster&ferret")
		ihf
		pause
		snim ;;

	"Back to Main")
		clear
		mainmenu ;;
		
	*)
		ngerusuhlo
		snim ;;
	
		
esac

break

done
}

#################################################################################### 
#install hackpack
#############################################################################
function ihackpack {
	echo "This will install Hackpack. Do you want to install it ? (Y/N)"
	read install
	if [[ $install = Y || $install = y ]] ; then
		cd /tmp
		wget http://lazykali.googlecode.com/files/hackpack.tar.gz
		tar zxvf hackpack.tar.gz
		cd hackpack
		echo -e "\033[31m============================== Installing =========================\033[m"
		./install.sh
		echo -e "\e[32m[-] Done !\e[0m"
		cd ../
		echo -e "\033[31m======================== Cleaning up ==============================\033[m"
		rm hackpack.tar.gz
		rm -rf hackpack
		echo -e "\e[32m[-] Done !\e[0m"
	else
		echo -e "\e[32m[-] Ok,maybe later !\e[0m"
	fi
	
}

###########################################################
#simple-ducky
#############################################################
function pducky {
	if [ ! -e "/usr/bin/simple-ducky" ];then
			clear
			echo "Simple-Ducky is not installed. Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				wget https://simple-ducky-payload-generator.googlecode.com/files/installer_v1.1.0_debian.sh
				chmod +x installer_v1.1.0_debian.sh
				./installer_v1.1.0_debian.sh
				rm installer_v1.1.0_debian.sh
				echo -e "\e[1;34mDone! Be sure to run Option's 5 and 6 prior to generating any payloads.\e[0m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
		else
			echo -e "\e[32m[-] Simple-Ducky is installed!\e[0m"
			echo "Launch a new terminal and enter simple-ducky to run."			
		fi	
}


####################################################################
#Install Pateensy
######################################################################
function pteensy {
	clear
	echo""
	echo -e $white"Payload Teensy ( Bad Usb ) Like a rubber ducky "
	echo""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				clear	
				echo -e "\033[31m========================== Installing Pateensy ============================\033[m"
				sleep 2
				rm -rf /root/Pateensy
				git clone https://github.com/screetsec/Pateensy.git /root/Pateensy/
				echo 
				echo -e "\033[31m================ Finish , now Pateensy in /root/Pateensy ======================\033[m"
			else
				clear
				echo -e $white"Okays , Maybe see you next time "
			fi
}

######## Menu HID ATTACK ##########
function menuhid {
clear
echo -e $white"======================================================================="
echo -e $red"NOTE : "
echo -e $white"HUMAN INTERFACE DEVICE ( USB RUBBER DUCKY OR TEENSY )  "
echo
echo -e $red""
echo "██╗  ██╗██╗██████╗      █████╗ ████████╗████████╗ █████╗  ██████╗██╗  ██╗";
echo -e $white"██║  ██║██║██╔══██╗    ██╔══██╗╚══██╔══╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝";
echo "███████║██║██║  ██║    ███████║   ██║      ██║   ███████║██║     █████╔╝ ";
echo -e $cyan"██╔══██║██║██║  ██║    ██╔══██║   ██║      ██║   ██╔══██║██║     ██╔═██╗ ";
echo "██║  ██║██║██████╔╝    ██║  ██║   ██║      ██║   ██║  ██║╚██████╗██║  ██╗";
echo -e $red"╚═╝  ╚═╝╚═╝╚═════╝     ╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝";
echo "                                                                         ";
echo -e $white"======================================================================="
echo -e $red	" 		Let's Install HID ATTACK   "
echo -e $white"======================================================================="
echo "                                                                "        
select lalinselc in "Payload Ducky" "Payload Teensy" "Back to Main"; do
case $lalinselc in
	"Payload Ducky")
		pducky
		pause 
		menuhid ;;
	
	"Payload Teensy")
		pteensy
		pause
		menuhid ;;

	"Back to Main")
		clear
		mainmenu ;;
		
	*)
		ngerusuhlo
		menuhid ;;
	
		
esac

break

done
}

##################################################################
#Install Shellter
###################################################################
function ishellter {
if [ ! -f /usr/bin/shellter ]; then
	echo -e "\e[1;32mThis option will install Shellter!\e[0m"
	echo -e "\e[1;31mShellter is a dynamic shellcode injection tool, and probably the first dynamic PE infector ever created.\e[0m"
	echo -e "\e[1;31mHow to use shellter\e[0m"
	echo -e "\e[1;32mhttps://www.youtube.com/user/KyREc0n/videos\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m================== Installing Shellter ========================\033[m"
				sleep 2
				apt-get update -y
				apt-get -y install shellter
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
	else
		echo -e "\e[32m[-] Shellter already installed !\e[0m"
	fi
}

###############################################################
# Install Veil-Framework
###############################################################
function iveil {
	echo -e "\e[1;31mThis option will install Veil-Evasion!\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m=========================== Installing Veil-Evasion ===============================\033[m"
				sleep 2
				apt-get update --force-yes
				apt-get --force-yes install veil-evasion 				
				echo -e "\033[32m=============================== Done Installing ===============================\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi

}	


###########################################################################################
#Install Unicorn
###########################################################################################
function iunicorn {
if [ ! -f /opt/BypassAV/unicorn-master/unicorn.py ]; then
	echo -e "\e[1;32mThis option will install Unicorn!\e[0m"
	echo -e "\e[1;31mUnicorn is a simple tool for using a PowerShell downgrade attack and inject shellcode straight into memory.\e[0m"
	echo -e "\e[1;31mHow to use unicorn\e[0m"
	echo -e "\e[1;32mhttps://www.youtube.com/watch?v=YF1ovpb1Cqc\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m======================== Installing Unicorn ==================\033[m"
				sleep 2
				git clone https://github.com/trustedsec/unicorn.git /opt/BypassAV/unicorn-master
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
	else
		echo -e "\e[32m[-] Unicorn already installed !\e[0m"
	fi
}

############################################################################################
#Install Backdoor-Factory
###########################################################################################
function ibackdoorf {
if [ ! -f /opt/BypassAV/the-backdoor-factory/backdoor.py ]; then
	echo -e "\e[1;32mBackdoor Factory allready installed in Kali linux \e[0m"
	echo -e "\e[1;31mThis option will install Backdoor-Factory!\e[0m"
	echo -e "\e[1;31mPatch PE, ELF, Mach-O binaries with shellcode\e[0m"
	echo -e "\e[1;31mHow to use backdoor-factory\e[0m"
	echo -e "\e[1;32mhttps://www.youtube.com/watch?v=YzeGxIurQy8\e[0m"
	echo -e ""
	echo -e "Do you want to install it , Backdoor Factory Already Install in Kali Linux ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Installing Backdoor Factory ======\033[m"
				sleep 2
				git clone https://github.com/secretsquirrel/the-backdoor-factory.git /opt/BypassAV/the-backdoor-factory/
				cd /opt/BypassAV/the-backdoor-factory/
				./install.sh
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
	else
		echo -e "\e[32m[-] Backdoor Factory already installed !\e[0m"
	fi
}


######################################################################
# Install Avoid
######################################################################
function iavoid {

	echo -e "\e[1;31mThis option will install Avoid!\e[0m"
	echo -e "\e[1;31mMetasploit AV Evasion Tool\e[0m"
	echo -e "\e[1;31mHow to use Avoid\e[0m"
	echo -e "\e[1;32mhttps://www.youtube.com/watch?v=nKvHM0lzEJU\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m================== Installing Avoid ========================\033[m"
				sleep 2
				rm -rf /opt/BypassAV/Avoid/
				git clone https://github.com/nccgroup/metasploitavevasion.git /opt/BypassAV/Avoid/
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}


######################################################################
# Install gcat
######################################################################
function igcat {
	echo -e "\e[1;31mThis option will install gcat!\e[0m"
	echo -e "\e[1;31mA fully featured backdoor that uses Gmail as a C&C server\e[0m"
	echo -e "\e[1;31mHow to use gcat\e[0m"
	echo -e "\e[1;32mhttps://www.youtube.com/watch?v=EFxH1c8yQXs\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Installing gcat ======\033[m"
				sleep 2
				rm -rm /opt/Maintaining-Access/OS-Backdoor/gcat-master/
				git clone https://github.com/byt3bl33d3r/gcat.git /opt/Maintaining-Access/OS-Backdoor/gcat-master/
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}


######################################################################
# Install maligno
######################################################################
function imaligno {
if [ ! -f /opt/BypassAV/maligno/maligno_srv.py ]; then
	echo -e "\e[1;31mThis option will install maligno!\e[0m"
	echo -e "\e[1;31mMaligno is an open source penetration testing tool written in Python that serves Metasploit payloads. It generates shellcode with msfvenom and transmits it over HTTP or HTTPS. The shellcode is encrypted with AES and encoded prior to transmission.\e[0m"
	echo -e "\e[1;31mHow to create FUD using maligno\e[0m"
	echo -e "\e[1;31mhttps://www.youtube.com/watch?v=dwOMiE13Y0s\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Installing maligno ======\033[m"
				sleep 2
				rm -rf /opt/BypassAV/maligno/
				cd /opt/
				mkdir BypassAV/
				cd BypassAV/
				mkdir maligno/
				cd /opt/BypassAV/maligno/
				wget https://www.encripto.no/tools/maligno-2.2.tar.gz
				tar -zxvf maligno-2.2.tar.gz
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
	else
		echo -e "\e[32m[-] maligno already installed !\e[0m"
	fi
}

################################################################### 
#Install payload
######################################################################
function impc {
	echo -e "\e[1;31mThis option will install mpc!\e[0m"
	echo -e "\e[1;31mLinux backdoor implMsfvenom Payload Creator (MPC).\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Installing MPC ======\033[m"
				sleep 2
				rm -rf /opt/exploitation/Network/mpc/
				git clone https://github.com/g0tmi1k/mpc.git /opt/exploitation/Network/mpc/
				echo -e "\e[32m[-] Done Installing!\e[0m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}

######## MENU BACKDOOR ##########
function backdoor {
clear
echo -e $white"======================================================================="
echo -e $red"NOTE : "
echo -e $white"Create a backdoor with tool ( FUD ) "
echo
echo -e $cyan""
echo " ▄▄▄▄    ▄▄▄       ▄████▄   ██ ▄█▀▓█████▄  ▒█████   ▒█████   ██▀███  "
echo "▓█████▄ ▒████▄    ▒██▀ ▀█   ██▄█▒ ▒██▀ ██▌▒██▒  ██▒▒██▒  ██▒▓██ ▒ ██▒"
echo "▒██▒ ▄██▒██  ▀█▄  ▒▓█    ▄ ▓███▄░ ░██   █▌▒██░  ██▒▒██░  ██▒▓██ ░▄█ ▒"
echo "▒██░█▀  ░██▄▄▄▄██ ▒▓▓▄ ▄██▒▓██ █▄ ░▓█▄   ▌▒██   ██░▒██   ██░▒██▀▀█▄  "
echo "░▓█  ▀█▓ ▓█   ▓██▒▒ ▓███▀ ░▒██▒ █▄░▒████▓ ░ ████▓▒░░ ████▓▒░░██▓ ▒██▒"
echo "░▒▓███▀▒ ▒▒   ▓▒█░░ ░▒ ▒  ░▒ ▒▒ ▓▒ ▒▒▓  ▒ ░ ▒░▒░▒░ ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░"
echo "▒░▒   ░   ▒   ▒▒ ░  ░  ▒   ░ ░▒ ▒░ ░ ▒  ▒   ░ ▒ ▒░   ░ ▒ ▒░   ░▒ ░ ▒░"
echo " ░    ░   ░   ▒   ░        ░ ░░ ░  ░ ░  ░ ░ ░ ░ ▒  ░ ░ ░ ▒    ░░   ░ "
echo " ░            ░  ░░ ░      ░  ░      ░        ░ ░      ░ ░     ░     "
echo "      ░           ░                ░                                 "
echo -e $white"======================================================================="
echo -e $cyan	" 		Let's Install the TOOLS   "
echo -e $white"======================================================================="
echo "                                                                "        
select lalinselc in "Shellter" "Veil Evasion" "Unicorn" "Backdoor-Factory" "Avoid" "GCAT" "Maligno" "mpc" "Back to Main"; do
case $lalinselc in
	"Shellter")
		ishellter
		pause 
		backdoor;;

	"Veil Evasion")
		iveil
		pause
		backdoor ;;		
	
	"Unicorn")
		iunicorn
		pause
		backdoor ;;

	"Backdoor-Factory")
		ibackdoorf
		pause	
		backdoor ;;

	"Avoid")	
		iavoid
		pause
		backdoor ;;

	"GCAT")
		igcat
		pause
		backdoor ;;

	"Maligno")
		imaligno
		pause
		backdoor ;;

	"mpc")
		impc
		pause
		backdoor ;;

	"Back to Main")
		clear
		mainmenu ;;
		
	*)
		ngerusuhlo
		backdoor ;;
	
		
esac

break

done
}

##### Metasploit Services
function smetasploit {
clear
echo -e "
\033[31m##########################################################\033[m
                Metasploit Services
\033[31m##########################################################\033[m"
select lalinselc in "Start Metasploit Services" "Stop Metasploit Services" "Restart Metasploit Services" "Autostart Metasploit Services" "Back to Main"; do
case $lalinselc in
	"Start Metasploit Services")
		echo -e "\033[32mStarting Metasploit Services..\033[m"
		service postgresql start && service metasploit start
		msfconsole
		pause ;;
	
	"Stop Metasploit Services")
		echo -e "\033[32mStoping Metasploit Services..\033[m"
		service postgresql stop && service metasploit stop
		pause ;;
		
	"Restart Metasploit Services")
		echo -e "\033[32mRestarting Metasploit Services..\033[m"
		service postgresql restart && service metasploit restart
		pause ;;
		
	"Autostart Metasploit Services")
		echo -e "\033[32mSetting Metasploit Services to start on boot..\033[m"
		update-rc.d postgresql enable && update-rc.d metasploit enable
		pause ;;

	"Back to Main")
		clear
		mainmenu ;;
		
	*)
		ngerusuhlo
		smetasploit ;;		
		
esac

break

done
}


#####openvasstart
function openvasstart {
# style variables
execstyle="[\e[01;32mx\e[00m]" # execute msgs style
warnstyle="[\e[01;31m!\e[00m]" # warning msgs stylee
infostyle="[\e[01;34mi\e[00m]" # informational msgs style

#fun little banner
clear
echo -e "\e[01;32m 
####### ######  ####### #     # #     #    #     #####  
#     # #     # #       ##    # #     #   # #   #     # 
#     # #     # #       # #   # #     #  #   #  #       
#     # ######  #####   #  #  # #     # #     #  #####  
#     # #       #       #   # #  #   #  #######       # 
#     # #       #       #    ##   # #   #     # #     # 
####### #       ####### #     #    #    #     #  #####  
                                                        
\e[0m"
echo -e "\e[1;1m   ..----=====*****(( Startup Script ))*******=====----..\e[0m"
echo -e "\e[31m *************************************************************\e[0m"
echo -e "\e[31m *                                                           *\e[0m"
echo -e "\e[31m *              \e[1;37mStarting All OpenVas Services \e[0;31m               *\e[0m"
echo -e "\e[31m *                      By Reaperz73                         *\e[0m"
echo -e "\e[31m *************************************************************\e[0m"

echo
echo -e "\e[31mKilling all Openvas for fresh start.\e[0m"
#kill openvas scanner
echo -e "$execstyle Checking OpenVas Scanner is running..."
ps -ef | grep -v grep | grep openvassd
if [ $? -eq 1 ]
 then
	echo -e "$warnstyle OpenVas Scanner not running!" 
 else
	echo -e "$execstyle Stopping OpenVas Scanner..."
	killall openvassd
fi

#kill openvas administrator
echo -e "$execstyle Checking if OpenVas Administrator is running..."
ps -ef | grep -v grep | grep openvasad
if [ $? -eq 1 ]
 then
	echo -e "$warnstyle OpenVas Administrator not running!" 
 else
	echo -e "$execstyle Stopping OpenVas Administrator..."
	killall openvasad
fi

#kill openvas manager
echo -e "$execstyle Checking if OpenVas Manager is running..."
ps -ef | grep -v grep | grep openvasmd
if [ $? -eq 1 ]
 then
	echo -e "$warnstyle OpenVas Manager not running!" 
 else
	echo -e "$execstyle Stopping OpenVas Manager..."
	killall openvasmd
fi

#kill Greenbone Security Assistant
echo -e "$execstyle Checking if Greenbone Security Assistant is running..."
ps -ef | grep -v grep | grep gsad
if [ $? -eq 1 ]
 then
	echo -e "$warnstyle Greenbone Security Assistant not running!" 
 else
	echo -e "$execstyle Stopping Greenbone Security Assistant..."
	killall gsad
fi

#### all done! now start services
echo
echo -e "\033[31mAll Done!! :\033[m
Now starting OpenVas services..."

echo -e "\033[31mSyncing updates.......\033[m
This may take a while!!!!"
openvas-nvt-sync
echo ok!

echo -e "\e[31mStarting OpenVas Scanner.\e[0m"
openvassd
echo ok!

echo -e "\033[31mRebuilding database......\033[m
This may take a while!!!!"
openvasmd --migrate
openvasmd --rebuild
echo ok!

echo -e "\e[31mStarting OpenVas Manager.\e[0m"
openvasmd -p 9390 -a 127.0.0.1
echo ok!

echo -e "\e[31mStarting OpenVas Administrator.\e[0m"
openvasad -a 127.0.0.1 -p 9393
echo ok!

echo -e "\e[31mStarting Greenbone Security Assistant.\e[0m"
gsad --http-only --listen=127.0.0.1 -p 9392
echo ok! All should be good!

#is it up openvas scanner
echo -e "$execstyle Checking if OpenVas Scanner is running..."
ps -ef | grep -v grep | grep openvassd
if [ $? -eq 1 ]
 then
	echo -e "$warnstyle OpenVas Scanner not running!" 
 else
	echo -e "$infostyle OpenVas Scanner is running!!"
fi

#is it up openvas administrator
echo -e "$execstyle Checking if OpenVas Administrator is running..."
ps -ef | grep -v grep | grep openvasad
if [ $? -eq 1 ]
 then
	echo -e "$warnstyle OpenVas Administrator not running!" 
 else
	echo -e "$infostyle OpenVas Administrator is running!!"
fi

#is it up openvas manager
echo -e "$execstyle Checking if OpenVas Manager is running..."
ps -ef | grep -v grep | grep openvasmd
if [ $? -eq 1 ]
 then
	echo -e "$warnstyle OpenVas Manager not running!" 
 else
	echo -e "$infostyle OpenVas Manager is running!!"
fi

#is it up Greenbone Security Assistant
echo -e "$execstyle Checking if Greenbone Security Assistant is running..."
ps -ef | grep -v grep | grep gsad
if [ $? -eq 1 ]
 then
	echo -e "$warnstyle Greenbone Security Assistant not running!" 
 else
	echo -e "$infostyle Greenbone Security Assistant is running"
fi

#### all done!
echo
echo -e "\033[01;32mOK!!\033[m"
echo -e "\033[31mAll Done!! :) \033[m
OpenVas is running!! Open browser to 127.0.0.1:9392 or open Green Bone Security Desktop."
}

########openvasstop
function openvasstop {
# style variables
execstyle="[\e[01;32mx\e[00m]" # execute msgs style
warnstyle="[\e[01;31m!\e[00m]" # warning msgs style
infostyle="[\e[01;34mi\e[00m]" # informational msgs style

#fun little banner
clear
echo -e "\e[01;32m
####### ######  ####### #     # #     #    #     #####  
#     # #     # #       ##    # #     #   # #   #     # 
#     # #     # #       # #   # #     #  #   #  #       
#     # ######  #####   #  #  # #     # #     #  #####  
#     # #       #       #   # #  #   #  #######       # 
#     # #       #       #    ##   # #   #     # #     # 
####### #       ####### #     #    #    #     #  #####  
                                                        
\e[0m"
echo -e "\e[1;1m   ..----=====*****(( Shutdown Script ))*******=====----..\e[0m"
echo -e "\e[31m *************************************************************\e[0m"
echo -e "\e[31m *                                                           *\e[0m"
echo -e "\e[31m *              \e[1;37mStopping All OpenVas Services \e[0;31m               *\e[0m"
echo -e "\e[31m *                                                           *\e[0m"
echo -e "\e[31m *************************************************************\e[0m"

#kill openvas scanner
echo -e "$execstyle Checking OpenVas Scanner is running..."
ps -ef | grep -v grep | grep openvassd
if [ $? -eq 1 ]
 then
	echo -e "$warnstyle OpenVas Scanner not running!" 
 else
	echo -e "$execstyle Stopping OpenVas Scanner..."
	killall openvassd
	echo -e "$infostyle OpenVas Scanner is dead!!"
fi

#kill openvas administrator
echo -e "$execstyle Checking if OpenVas Administrator is running..."
ps -ef | grep -v grep | grep openvasad
if [ $? -eq 1 ]
 then
	echo -e "$warnstyle OpenVas Administrator not running!" 
 else
	echo -e "$execstyle Stopping OpenVas Administrator..."
	killall openvasad
	echo -e "$infostyle OpenVas Administrator is dead!!"
fi

#kill openvas manager
echo -e "$execstyle Checking if OpenVas Manager is running..."
ps -ef | grep -v grep | grep openvasmd
if [ $? -eq 1 ]
 then
	echo -e "$warnstyle OpenVas Manager not running!" 
 else
	echo -e "$execstyle Stopping OpenVas Manager..."
	killall openvasmd
	echo -e "$infostyle OpenVas Manager is dead!!"
fi

#kill Greenbone Security Assistant
echo -e "$execstyle Checking if Greenbone Security Assistant is running..."
ps -ef | grep -v grep | grep gsad
if [ $? -eq 1 ]
 then
	echo -e "$warnstyle Greenbone Security Assistant not running!" 
 else
	echo -e "$execstyle Stopping Greenbone Security Assistant..."
	killall gsad
	echo -e "$infostyle Greenbone Security Assistant is dead!!"

fi

#### all done!
echo
echo -e "\033[01;32m All Done!! :) \033[m"
}

######## Rollback Openvas to Version 5
function rollbackopenvas {
echo -e "\033[31mThis script will roll OpenVas back to Version 5\033[m"
echo -e "\033[31myou may need this if you broke Openvas with apt-get dist-upgrade\033[m"
echo "Do you want to rollback ? (Y/N)"
read install
if [[ $install = Y || $install = y ]] ; then	
		echo -e "\033[31m====== Rolling OpenVas back to V5 ======\033[m"
		apt-get remove --purge greenbone-security-assistant libopenvas6 openvas-administrator openvas-manager openvas-cli openvas-scanner
		mkdir openvasfix
		cd openvasfix
		if [ $(uname -m) == "x86_64" ] ; then
			#64 bit system
			wget http://repo.kali.org/kali/pool/main/o/openvas-manager/openvas-manager_3.0.4-1kali0_amd64.deb
			wget http://repo.kali.org/kali/pool/main/o/openvas-administrator/openvas-administrator_1.2.1-1kali0_amd64.deb
			wget http://repo.kali.org/kali/pool/main/o/openvas-cli/openvas-cli_1.1.5-1kali0_amd64.deb
			wget http://repo.kali.org/kali/pool/main/o/openvas-scanner/openvas-scanner_3.3.1-1kali1_amd64.deb
			wget http://repo.kali.org/kali/pool/main/o/openvas/openvas_1.1_amd64.deb
			wget http://repo.kali.org/kali/pool/main/g/greenbone-security-assistant/greenbone-security-assistant_3.0.3-1kali0_amd64.deb
			wget http://repo.kali.org/kali/pool/main/libo/libopenvas/libopenvas5_5.0.4-1kali0_amd64.deb
		else
			#32 bit system
			wget http://repo.kali.org/kali/pool/main/o/openvas-manager/openvas-manager_3.0.4-1kali0_i386.deb
			wget http://repo.kali.org/kali/pool/main/o/openvas-administrator/openvas-administrator_1.2.1-1kali0_i386.deb
			wget http://repo.kali.org/kali/pool/main/o/openvas-cli/openvas-cli_1.1.5-1kali0_i386.deb
			wget http://repo.kali.org/kali/pool/main/o/openvas-scanner/openvas-scanner_3.3.1-1kali1_i386.deb
			wget http://repo.kali.org/kali/pool/main/o/openvas/openvas_1.1_i386.deb
			wget http://repo.kali.org/kali/pool/main/g/greenbone-security-assistant/greenbone-security-assistant_3.0.3-1kali0_i386.deb
			wget http://repo.kali.org/kali/pool/main/libo/libopenvas/libopenvas5_5.0.4-1kali0_i386.deb
		fi
		dpkg -i *
		apt-get install gsd kali-linux kali-linux-full
		wget --no-check-certificate https://svn.wald.intevation.org/svn/openvas/trunk/tools/openvas-check-setup
		chmod +x openvas-check-setup
		./openvas-check-setup --v5
		else
			echo -e "\e[32m[-] Ok,maybe later !\e[0m"
		fi
		echo -e "\e[32m[-] Done!\e[0m"	
}



######## Open Vas Services
function sopenvas {
clear
echo -e "
\033[31m##########################################################\033[m
                  OpenVas Services
\033[31m##########################################################\033[m"
select menusel in "Start OpenVas Services" "Stop OpenVas Services" "Rollback V5" "Back to Main"; do
case $menusel in
	"Start OpenVas Services")
		openvasstart
		pause 
		OpenVas;;
	
	"Stop OpenVas Services")
		openvasstop
		pause
		OpenVas ;;
		
	"Rollback V5")
		rollbackopenvas
		pause
		OpenVas ;;

	"Back to Main")
		clear
		mainmenu ;;
		
	*)
		screwup
		OpenVas ;;
	
		
esac

break

done
}


##### Apache Services
function sapache {
clear
echo -e "
\033[31m##########################################################\033[m
                Apache Services
\033[31m##########################################################\033[m"
select lalinselc in "Start Apache Services" "Stop Apache Services" "Restart Apache Services" "Back to Main"; do
case $lalinselc in
	"Start Apache Services")
		echo -e "\033[32mStarting Apache Services..\033[m"
		service apache2 start
		pause ;;
	
	"Stop Apache Services")
		echo -e "\033[32mStoping Apache Services..\033[m"
		service apache2 stop
		pause ;;
		
	"Restart Apache Services")
		echo -e "\033[32mRestarting apache2 Services..\033[m"
		service apache2 restart
		pause ;;
		

	"Back to Main")
		clear
		ss ;;
		
	*)
		ngerusuhlo
		sapache ;;		
		
esac

break

done
}



##### Network Services
function snetwork {
clear
echo -e "
\033[31m##########################################################\033[m
                Network Services
\033[31m##########################################################\033[m"
select lalinselc in "Start Network Services" "Stop Network Services" "Restart Network Services" "Back to Main"; do
case $lalinselc in
	"Start  Network Services")
		echo -e "\033[32mStarting Network Services..\033[m"
		service NetworkManager start
		pause ;;
	
	"Stop Network Services")
		echo -e "\033[32mStoping Netwok Services..\033[m"
		service NetworkManager stop
		pause ;;
		
	"Restart Network Services")
		echo -e "\033[32mRestarting Network Services..\033[m"
		service NetworkManager restart
		pause ;;
		

	"Back to Main")
		clear
		mainmenu ;;
		
	*)
		ngerusuhlo
		snetwork ;;		
		
esac

break

done
}

######## MENU START SERVICES ##########
function ss {
clear
echo -e $white"======================================================================="
echo -e $red"NOTE : "
echo -e $white"Easy command to start services "
echo
echo -e $cyan""
echo "███████╗████████╗ █████╗ ██████╗ ████████╗";
echo "██╔════╝╚══██╔══╝██╔══██╗██╔══██╗╚══██╔══╝";
echo "███████╗   ██║   ███████║██████╔╝   ██║   ";
echo "╚════██║   ██║   ██╔══██║██╔══██╗   ██║   ";
echo "███████║   ██║   ██║  ██║██║  ██║   ██║   ";
echo "╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ";
echo "                                          ";
echo -e $white"======================================================================="
echo -e $cyan	" 		Let's start services what you want   "
echo -e $white"======================================================================="
echo "                                                                "        
select lalinselc in "Service Metasploit" "Service OpenVAS" "Service Apache" "Service Network" "Back to Main"; do
case $lalinselc in
	"Service Metasploit")
		smetasploit
		ss ;;

	"Service OpenVAS")
		sopenvas
		ss ;;		
	
	"Service Apache")
		sapache
		backdoor ;;

	"Service Network")
		snetwork	
		ss ;;


	"Back to Main")
		clear
		lalin ;;
		
	*)
		ngerusuhlo
		ss ;;
	
		
esac

break

done
}

#############################################################################
# Install Fix Sound Mute
####################################################################################

function fsound {
	echo -e "\e[1;31mThis option will fix sound mute on Kali Linux on boot!\e[0m"
	echo -e ""
	echo -e "Do you want to install alsa-utils to fix it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Fixing sound mute ======\033[m"
				sleep 2
				apt-get -y install alsa-utils
				echo -e "\033[32m====== Done Installing alsa-utils ======\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}

#######################################################################################
# Install fix device
###########################################################################################
function fdevice {
	echo -e "\e[1;31mThis option will fix device mananged error!\e[0m"
	echo -e ""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Fixing ======\033[m"
				sleep 2
				mv /etc/NetworkManager/NetworkManager.conf /etc/NetworkManager/NetworkManager.txt
				sed -i 's/false/true/g' /etc/NetworkManager/NetworkManager.txt
				mv /etc/NetworkManager/NetworkManager.txt /etc/NetworkManager/NetworkManager.conf
				echo -e "\033[32m====== Done Fixing ======\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}

#############################################################################
# Install Fix Font Square
#############################################################################

function ffont {
	echo -e "\e[1;31mThis option will fix font square in kali linux!\e[0m"
	echo -e ""
	echo -e "Do you want to  fix it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m====== Fixing sound mute ======\033[m"
				sleep 2
				apt --reinstall --force-yes install fonts-cantarell 
				echo -e "\033[32m====== Done Installing  ======\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}

#############################################################################
# Fix Chrome not open
#############################################################################
function fchrome {
	echo -e "\e[1;31mThis option will fix chrome not open\e[0m"
	echo  
	echo -e "\e[1;32mSimple problem you just run chrome in not root user\e[0m "
	echo -e "\e[1;32mOr you want open chrome in root user ?\e[0m "
	echo
	echo
	echo -e "\e[1;32mTo run google chrome use command:\e[0m "
	echo
	echo -e "\e[1;32mgksu -u chromeuser google-chrome\e[0m "
	echo""
	echo -e "Do you want fix ( when press yes you just run chrome with gksu -u chromeuser google-chrome  ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m================= Loading  ==========================\033[m"
				sleep 2
				clear
				useradd  -m chromeuser
				clear
				echo -e "\033[32m================ Thankyou ============================\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}

#############################################################################
# Run chromium with fix
#############################################################################

function fchromium {
	echo -e "\e[1;31mThis option will open chromium with fix\e[0m"
	echo -e ""
	echo -e "Do you want to  run chromium with fix ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m===================== Loading  ========================\033[m"
				sleep 2
				chromium --user-data-dir --no-sandbox 
				echo -e "\033[32m====== Done Open  ======\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}

############################################################################
# Fix Linset 
############################################################################

function flinset {
	echo -e "\e[1;31mThis option will fix Linset \e[0m"
	echo -e ""
	echo -e "Do you want to  fix Linset ? (Y/N)"
	echo -e $yellow"Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m========================== Installing requirements ============================\033[m"
				sleep 2
				cd "tools" 
				chmod +x fixlinset.sh
				bash ./fixlinset.sh run
				echo -e "\033[31m========================== Installing Done ============================\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}


############################################################################
# Lazynmap
############################################################################

function lazynmap {
	echo -e "\e[1;31mThis option will run nmap with easy command \e[0m"
	echo -e ""
	echo -e $yellow"Do you want contiune ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then	
				echo -e "\033[31m========================== Wait Babe ============================\033[m"
				sleep 2
				cd "tools" 
				chmod +x lazynmap.sh
				./lazynmap.sh 
				echo -e "\033[31m========================== Thankyou ============================\033[m"
			else
				echo -e "\e[32m[-] Ok,maybe later !\e[0m"
			fi
}

######## MENU FIXING ALL PROBLEM ##########
function fap {
clear
echo -e $white"======================================================================="
echo -e $yellow"NOTE : "
echo -e $white"FAP ( FIXING ALL PROBLEM )"
echo
echo -e $yellow""
echo "		   ▄████████    ▄████████    ▄███████▄ ";
echo "		  ███    ███   ███    ███   ███    ███ ";
echo "		  ███    █▀    ███    ███   ███    ███ ";
echo "		 ▄███▄▄▄       ███    ███   ███    ███ ";
echo "		▀▀███▀▀▀     ▀███████████ ▀█████████▀  ";
echo "		  ███          ███    ███   ███        ";
echo "		  ███          ███    ███   ███        ";
echo "		  ███          ███    █▀   ▄████▀      ";
echo "                                       ";
echo -e $white"======================================================================="
echo -e $yellow	" 			Let's Fix your Problems   "
echo -e $white"======================================================================="
echo "                                                                "        
select lalinselc in "Fix Sound Mute" "Fix Device Not Found" "Fix Font Square" "Fix Chrome not open" "Open Chromium" "Fix Linset" "Back to Main"; do
case $lalinselc in
	"Fix Sound Mute")
		fsound
		fap ;;

	"Fix Device Not Found")
		fdevice
		fap ;;		
	
	"Fix Font Square")
		ffont
		fap ;;

	"Fix Chrome not open")
		fchrome	
		fap ;;
		
	"Open Chromium")
		fchromium
		fap ;;

	"Fix Linset")
		flinset
		fap ;;


	"Back to Main")
		clear
		mainmenu ;;
		
	*)
		ngerusuhlo
		fap ;;
	
		
esac

break

done
}


####################################################################
#Install Shellsploit
######################################################################
function ishellsploit {
	clear
	echo""
	echo -e $white"Shellsploit let's you generate customized shellcodes, backdoors, injectors for various operating system. And let's you obfuscation every byte via encoders."
	echo -e "It's compatible with the latest release of Kali"
	echo""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				clear	
				echo -e "\033[31m========================== Installing Shellsploit ============================\033[m"
				sleep 2
				rm -rf /root/exploitdev/shellsploit
				git clone https://github.com/b3mb4m/shellsploit-framework.git /root/exploitdev/shellsploit/
				echo 
				echo -e "\033[31m================ Finish , now shellsploit in /root/shellsploit ========================\033[m"
				sleep 2
				cd /root/shellsploit
				setup.py -s install
			else
				clear
				echo -e $white"Okays , Maybe see you next time "
			fi
}


####################################################################
#Install RouterSploit
######################################################################
function iroutersploit {
	clear
	echo""
	echo -e $white"The RouterSploit Framework is an open-source exploitation framework dedicated to embedded devices."
	echo -e "It's compatible with the latest release of Kali"
	echo""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				clear	
				echo -e "\033[31m========================== Installing Routersploit ============================\033[m"
				sleep 2
				rm -rf /root/exploitdev/routersploit
				git clone https://github.com/reverse-shell/routersploit.git /root/exploitdev/routersploit/
				echo 
				echo -e "\033[31m================ Finish , now routersploit in /root/exploitdev/routersploit ========================\033[m"
				sleep 2
			else
				clear
				echo -e $white"Okays , Maybe see you next time "
			fi
}


####################################################################
#Install Windows Exploit Suggester
######################################################################
function wes {
	clear
	echo""
	echo -e $white"This tool compares a targets patch levels against the Microsoft vulnerability database in order to detect potential missing patches on the target. It also notifies the user if there are public exploits and Metasploit modules available for the missing bulletins."
	echo -e "It's compatible with the latest release of Kali"
	echo""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				clear	
				echo -e "\033[31m========================== Installing  ============================\033[m"
				sleep 2
				rm -rf /root/exploitdev/Windows-Exploit-Suggester
				git clone https://github.com/GDSSecurity/Windows-Exploit-Suggester.git /root/exploitdev/Windows-Exploit-Suggester/
				echo 
				echo -e "\033[31m================ Finish ==========================================\033[m"
				sleep 2
			else
				clear
				echo -e $white"Okays , Maybe see you next time "
			fi
}


####################################################################
#Install Linux Exploit Suggester
######################################################################
function les {
	clear
	echo""
	echo -e $white"This program run without arguments will perform a 'uname -r' to grab the Linux Operating Systems release version, and return a suggestive list of possible exploits. Nothing fancy, so a patched/back-ported patch may fool this script."
	echo -e "It's compatible with the latest release of Kali"
	echo""
	echo -e "Do you want to install it ? (Y/N)"
			read install
			if [[ $install = Y || $install = y ]] ; then
				clear	
				echo -e "\033[31m========================== Installing  ============================\033[m"
				sleep 2
				rm -rf /root/exploitdev/Linux-Exploit-Suggester
				git clone https://github.com/PenturaLabs/Linux_Exploit_Suggester.git /root/exploitdev/Linux-Exploit-Suggester/
				echo 
				echo -e "\033[31m================ Finish ==========================================\033[m"
				sleep 2
			else
				clear
				echo -e $white"Okays , Maybe see you next time "
			fi
}

######## MENU EXPLOIT DEVELOPMENT KIT ##########
function expdev {
clear
echo -e $white"======================================================================="
echo -e $red"NOTE : "
echo -e $white"EXPLOIT DEVELOPMENT KIT "
echo
echo -e $cyan""
echo "	███████╗██╗  ██╗██████╗ ██╗      ██████╗ ██╗████████╗";
echo "	██╔════╝╚██╗██╔╝██╔══██╗██║     ██╔═══██╗██║╚══██╔══╝";
echo "	█████╗   ╚███╔╝ ██████╔╝██║     ██║   ██║██║   ██║   ";
echo "	██╔══╝   ██╔██╗ ██╔═══╝ ██║     ██║   ██║██║   ██║   ";
echo "	███████╗██╔╝ ██╗██║     ███████╗╚██████╔╝██║   ██║   ";
echo "	╚══════╝╚═╝  ╚═╝╚═╝     ╚══════╝ ╚═════╝ ╚═╝   ╚═╝   ";
echo "                                                                              ";
echo -e $white"======================================================================="
echo -e $cyan	" 		Let's Install the TOOLS   "
echo -e $white"======================================================================="
echo "                                                                "        
select lalinselc in "Shellsploit" "Routersploit" "Windows Exploit Suggester" "Linux Exploit Suggester" "Back to Main"; do
case $lalinselc in
	"Shellsploit")
		ishellsploit
		pause 
		expdev ;;

	"Routersploit")
		iroutersploit
		pause
		expdev ;;		
	
	"Windows Exploit Suggester")
		wes
		pause
		expdev ;;

	"Linux Exploit Suggester")
		les
		pause	
		expdev ;;


	"Back to Main")
		clear
		mainmenu ;;
		
	*)
		ngerusuhlo
		expdev ;;
	
		
esac

break

done
}

#### credits
function credits {
clear
echo -e "
\033[31m##########################################################################\033[m
		             Credits To
\033[31m##########################################################################\033[m"
echo
echo -e $white "Special thanks to:"
echo
echo -e $red "Offensive Security for the awesome OS"
echo
echo -e $green "http://www.offensive-security.com/"
echo
echo -e $yellow "http://www.kali.org/"
echo
echo -e $cyan "http://www.kitploit.com/"
echo
echo -e $white "http://www.linuxsec.org/ ( Jack Wilder )"
echo 
echo -e $yellow "Daniel for lazynmap www.commonexploits.com "
echo
echo -e $cyan "https://github.com/mazen160/Firefox-Security-Toolkit"
echo
echo
echo -e $red "Big Thanks to : http://www.github.com/"
echo 


}


# Banner Lalin
clear
echo
echo
function lalin {
echo -e $white"                 ██╗      █████╗ ██╗     ██╗███╗   ██╗"
echo -e $cyan"                 ██║     ██╔══██╗██║     ██║████╗  ██║"
echo -e $white"                 ██║     ███████║██║     ██║██╔██╗ ██║"
echo -e $red"                 ██║     ██╔══██║██║     ██║██║╚██╗██║"
echo -e $white"                 ███████╗██║  ██║███████╗██║██║ ╚████║"
echo -e $cyan"                  ╚══════╝╚═╝  ╚═╝╚══════╝╚═╝╚═╝  ╚═══╝"
echo -e $red"                  ░ ▒░▓  ░▒▒   ▓▒█░░ ▒░▓  ░░▓  ░ ▒░ ▒ ▒"
echo -e $white"                 ░ ░ ▒  ░ ▒   ▒▒ ░░ ░ ▒  ░ ▒ ░░ ░░ ░ ▒░"
echo -e $cyan "                  ░ ░    ░   ▒     ░ ░    ▒ ░   ░ ░ ░ "
echo -e $white"                   ░  ░     ░  ░    ░   ░  ░   "
echo
echo -e $white"             ============================================="
echo -e $white"             %                                           %"
echo -e $white"             % $cyan           LAZY "$red"LINUX$cyan TOOLKIT v1.0 $white       %"
echo -e $white"             % $cyan  Tested On $red Kali sana v.2 $cyan and "$red"rolling$white   %"
echo -e $white"             % $cyan  Contact me in screetsec[at]@gmail.com$white   %"
echo -e $white"             % $cyan         Powered by "$red"Miffly"$cyan" [ Edo -m-] $white    %"
echo -e $white"             %                                           %"
echo -e $white"             ============================================="
echo
echo
echo
select lalinselc in "Update Kali" "Virtual Machine" "Browsers" "WiFu" "Exploit-db" "Sniffing&MITM" "Firefox Security Toolkit" "HackPack" "HID Attack Payload" "BACKDOOR" "Lazynmap" "Exploit Development" "Start Services" "Fixing all problem" "Credits" "Exit"; do
case $lalinselc in
	"Update Kali")
		updatekali
		clear ;;

	"Virtual Machine")
		virtualme
		clear ;;
	
	"Browsers")
		listbrowser
		clear ;;
	
	"WiFu")
		wifu 
		clear ;;

	"Exploit-db")
		exploitdb
		clear ;;

	"Sniffing&MITM")
		snim
		clear ;;

	"Firefox Security Toolkit")
		fst
		clear ;;

	"HackPack")
		ihackpack
		clear ;;

	"HID Attack Payload")
		menuhid
		clear ;;

	"BACKDOOR")
		backdoor
		clear ;;

	"Lazynmap")
		lazynmap
		clear;;
	
	"Exploit Development")
		expdev
		clear;;

	"Start Services")
		ss
		clear ;;
		

	"Fixing all problem")
		fap
		clear ;;

	"Credits")
		credits
		pause
		clear ;;
	
	"Exit")
		clear && exit 0 ;;
		
	* )
		ngerusuhlo
		clear ;;
esac

break

done
}
while true; do lalin; done



