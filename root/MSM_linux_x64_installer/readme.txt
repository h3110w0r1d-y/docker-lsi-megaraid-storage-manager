This release note and the software that accompanies it are copyright (c) 2012, Avago Technologies or its suppliers, and may only be installed and used in accordance with the license that accompanies the software.

This Software is furnished under license and may only be used or copied in accordance with the terms of that license. No license, express or implied, by estoppel or otherwise, to any intellectual property rights is granted by this document. The Software is subject to change without notice, and should not be construed as a commitment by AVAGO TECHNOLOGIES or its suppliers to market, license, sell or support any product or technology. Unless otherwise provided for in the license under which this Software is provided, the Software is provided AS IS, with no warranties of any kind, express or implied. Except as expressly permitted by the Software license, neither Intel Corporation nor its suppliers assumes any responsibility or liability for any errors or inaccuracies that may appear herein. Except as expressly permitted by the Software license, no part of the Software may be reproduced, stored in a retrieval system, transmitted in any form, or distributed by any means without the express written consent of AVAGO TECHNOLOGIES.

MegaRAID Storage Manager(MSM) Installation
==========================================

From MSM version 17.05.03.00 user need to follow below Pre-Requisites before installing the MSM.

Pre-Requisites
==============

Prior to the MSM installation or Upgrade setup a JRE.  Follow the below instructions to setup.
Recommended JRE version: AdoptOpenJDK8u282-b08.

Step 1: Download and unzip OpenJRE in your desired location ( assume: /root/jre folder)
     (i) gunzip OpenJDK8U-jre_x64_linux_hotspot_8u282b08.tar.gz
     (ii) tar -xvf OpenJDK8U-jre_x64_linux_hotspot_8u282b08.tar
     (iii) (Not Mandatory step for AdoptOpenJDK8) Copy javax.activation.jar file to /root/jre/jdk8u282-b08-jre/bin folder. 
            Download:https://github.com/javaee/activation/releases/tag/JAF-1_2_0

Step2: Set jdk8u282-b08-jre path to profile
     (i)  vi /etc/profile (add below lines and save)
            JRE_HOME='/root/jre/jdk8u282-b08-jre'
            export JRE_HOME
     (ii) source /etc/profile

Step 3: upgrade the MSM with new release and launch

Notes:
	1)	Download OpenJRE-8u282-b08 x64 and extract from https://adoptopenjdk.net/releases.html?variant=openjdk8&jvmVariant=hotspot
	2)	Version check: Open the new terminal and check for the java version. 
		$JRE_HOME/bin/java -version (Version should be "1.8.0_282")


The kit contains both mode of installation. The interactive and non-interactive.
To, install the product using interactive mode, the user should execute the command "./install.csh" from the installation disk.
To, install the product in a non-interactive or silent mode, the user may use the command "./install.csh [-options] [ -ru popup]" from the installation disk. The options are:
  a, for Complete installation
  c, for Client Component Only
  s, for StandAlone
  l, for Local
  d, for Server
The "-ru popup" will remove popup from installation list.
User may also run non-interactive installation using "RunRPM.sh" command.

Below are the set of commands to be used for update only installation for different setup types.
Usage : install.sh [-option]
The options are :
                                        au - The update only Complete Installation of MegaRAID Storage Manager (MSM)
                                        cu - The update only Client components only program of MSM
                                        su - The update only StandAlone component of MSM
                                        lu - The update only Local component of MSM
                                        du - The update only Server component of MSM


The installer provides the user with five types of setup option.
1. Complete - This will install all the features of the product.
2. Client Components Only - The storelib feature of the product will not be installed in this type of installation. As a result, the resident system will only be able to administer and configure all the servers in the subnet, but will not be able to serve as a server.
3. StandAlone - This option will only install components required for local server management. This system will not be discovered automatically by other MSM
   servers in the subnet and it will not discover other MSM servers in the subnet automatically. (multicasting will be disabled) But the system can connect 
   to other MSM servers by providing the ipaddress in the hostview screen and can be connected by the other MSM clients in the subnet.
4. Local - This option will install only components required for local configuration. Will not allow other systems on the network to connect to
   this server and cannot connect to other servers. This MSM installation mode only uses the loopback interface.
5. Server - This option will only install components required for remote server management.

The installation will help the user to select any of the setup type, but if the user directly run "RunRPM.sh", it will install the complete feature.

NOTE:
	1. For RHEL 5, it is necessary to install compat-libstdc++ version 33-3.x before installing rpm.
	2. For SLES-10 SP3 64bit OS, it is necessary to install libstdc++33-32bit-3.3.3-7.8.1.x86_64.rpm 
	   before installing MSM. This RPM is available in the OS DVD 
	   (path is /media/SUSE-Linux-Enterprise-Server_001/suse/x86_64)
	   The RPM and library version number may differ across other versions of OS's.
	3. For SLES-9 32bit OS, it is necessary to install compat-libstdc++-lsb-4.0.2_20050901-0.4.i586.rpm
	   before installing MSM. This RPM is available in the OS DVD (path is /media/dvd/suse/i586)
	4. For RHEL 3, it is necessary to install the RPM libstdc++34-3.4.0-1.i386 before installing MSM.
	5. It is necessary to enable shadow password in RHEL 6 to login to MSM.
	6. Prerequisites for installing MSM on RHEL6.x x64 operating system 
	   Before installing MSM on RHEL6.x x64 system, Please install the following rpms,
	   Without these files/RPM's MSM may not be install properly or may not work as expected.

		libstdc++-4.4.4-13.el6.i686.rpm
		compat-libstdc++-33-3.2.3-69.i686.rpm
		libXau-1.0.5-1.el6.i686.rpm
		libxcb-1.5-1.el6.i686.rpm
		libX11-1.3-2.el6.i686.rpm
		libXext-1.1-3.el6.i686.rpm
		libXi-1.3-3.el6.i686.rpm
		libXtst-1.0.99.2-3.el6.i686.rpm
		
	    Also note that RHEL6.x complete OS installation is required for MSM to work.
		The above mentioned rpm's come as part of RHEL6 OS DVD. These RPM's may need
	    additional dependent RPM's as well, all the dependent RPM's also must be installed on the target system.
	   The RPM and library version number may differ across other versions of OS's.

	7. Net-SNMP rpm installation is required before we install agent rpms.
		RHEL 4.8:
			net-snmp-5.1.2-18.el4.x86_64.rpm
			net-snmp-utils-5.1.2-18.el4.x86_64.rpm
		RHEL5.4
			lm_sensors-2.10.7-4.el5.x86_64.rpm 
			net-snmp-utils-5.3.2.2-7.el5.x86_64.rpm
			net-snmp-5.3.2.2-7.el5.x86_64.rpm
		RHEL 5.3
			lm_sensors-2.10.7-4.el5.x86_64.rpm
			net-snmp-5.3.2.2-5.el5.x86_64.rpm
			net-snmp-utils-5.3.2.2-5.el5.x86_64.rpm
		RHEL 5.5
			net-snmp-5.3.2.2-9.el5.x86_64.rpm
			net-snmp-utils-5.3.2.2-9.el5.x86_64.rpm
		RHEL 5.6
			net-snmp-5.3.2.2-9.el5_5.1.x86_64.rpm
			net-snmp-5.3.2.2-9.el5_5.1.x86_64.rpm
		RHEL 5.7
			net-snmp-5.3.2.2-14.el5_5.1.x86_64.rpm
			net-snmp-utils-5.3.2.2-14.el5_5.1.x86_64
		RHEL 5.8
			net-snmp-5.3.2.2-17.el5_5.1.x86_64.rpm
			net-snmp-utils-5.3.2.2-17.el5_5.1.x86_64
		RHEL 5.10
			net-snmp-5.3.2.2-20.el5.x86_64.rpm 
            net-snmp-utils-5.3.2.2-20.el5.x86_64 
		RHEL 5.11
			net-snmp-5.3.2.2-22.el5_10.1.x86_64.rpm 
            net-snmp-utils-5.3.2.2-22.el5_10.1.x86_64.x86_64 
		RHEL 6.0
			net-snmp-5.5-27.el6.x86_64.rpm
			net-snmp-utils-5.5-27.el6.x86_64
		RHEL 6.1
			net-snmp-5.5-31.el6.x86_64.rpm
			net-snmp-utils-5.5-31.el6.x86_64.rpm
		RHEL 6.2
			net-snmp-5.5-37.el6.x86_64.rpm
			net-snmp-utils-5.5-37.el6.x86_64.rpm
		RHEL 6.3
			net-snmp-5.5-39.el6.x86_64.rpm
			net-snmp-utils-5.5-39.el6.x86_64.rpm
		RHEL 6.4
			net-snmp-5.5-44.el6.x86_64.rpm
			net-snmp-utils-5.5-44.el6.x86_64.rpm
		RHEL 6.5
            net-snmp-5.5-49.el6.x86_64.rpm
            net-snmp-utils-5.5-49.el6.x86_64.rpm
		RHEL 6.6
            net-snmp-5.5-49.el6_5.3.x86_64.rpm
            net-snmp-utils-5.5-49.el6_5.3.x86_64.rpm
		RHEL 7.0 & RHEL 7.1
			net-snmp-5.7.2-18.el7.x86_64.rpm
			net-snmp-utils-5.7.2-18.el7.x86_64.rpm	
				
		SLES 11
			net-snmp-5.4.2.1-8.1.x86_64.rpm
			perl-SNMP-5.4.2.1-8.1.x86_64.rpm
		SLES11 SP3
			net-snmp-5.4.2.1-8.12.16.1.1.x86_64.rpm
			perl-SNMP-5.4.2.1-8.12.16.1.x86_64.rpm
		SLES12
			net-snmp-5.7.2.1-3.8.x86_64.rpm
			perl-SNMP-5.7.2.1-3.8.x86_64.rpm
	8. In case you are unable to install lsi snmp agent rpms, use rpm -ivh --force *.rpm and 
	   then you can uninstall the lsi rpms using rpm -e *.rpm. 
	9. In case of problems with installing multiple rpms and get into cyclic redundancy issue,
	   one can install all rpms in one command line.
	   (Example: rpm  -ivh net-snmp-5.4.2.1-8.1.x86_64.rpm perl-SNMP-5.4.2.1-8.1.x86_64.rpm)
	10. For VMware 3.5, it is necessary to install libstdc++34-3.4.0-1.i386.rpm before installing
	   MegaRAID Storage Manager(MSM). The rpm can be downloaded from
	   http://rpm.pbone.net/index.php3/stat/4/idpl/1203252/com/libstdc++34-3.4.0-1.i386.rpm.html.
	11.For VMware 4.1, it is necessary to create a softlink as mentioned below before installing
	   MegaRAID Storage Manager(MSM). Run the below command to create the necessary soft link
	   required for MegaRAID Storage Manager(MSM) to work.
	   "sudo ln -sf /lib/libgcc_s.so.1 /usr/lib/vmware/lib/libgcc_s.so.1"
	12. JRE1.6 differences - In Linux 32/64 bit: MSM is shipped with JRE 1.6 U37 unlike other platforms like Windows/Solaris because of the OS
    	backward compatibility issues with JRE1.7 Here is the link where we can find out the OS support matrix for JRE1.7
		http://www.oracle.com/technetwork/java/javase/config-417990.html
	13. User has to manually upgrade OpenSSL v0.9.8za in Linux platforms to avoid security issues.
	14. Soft links in Linux 64 bit: For RHEL/SLES on 64 bit platform(s), it is necessary to create the below soft links before installing
    	MegaRAID Storage Manager(MSM) 64 bit package.
	    "ln -sf /usr/lib64/libcrypto.so.xx.xx /lib64/libcrypto.so.4"
        "ln -sf /usr/lib64/libssl.so.xx.xx /lib64/libssl.so.4"
	15. It is necessary to install "xterm" rpm packages on RHEL/SLES operating system.
        Before installing MSM on RHEL/SLES systems, Please install the following rpms,
        Without these files/RPM's MSM may not be install/uninstall properly or may not work as expected.
        xterm-253-1.el6
        These RPM's may need additional dependent RPM's as well, all the dependent RPM's also must be installed on the target system.
        The RPM and library version number may differ across other versions of OS's.

        or alternatively the yum command can be used to install xterm rpm's.
		"yum install xterm".

=========================
CLI Packaging Strategies
=========================
MSM Major Release(N):N-1 GA/point release of CLI (latest) will be bundled.
MSM Point Release(N):N GA/point release of CLI (latest) will be bundled.

                  Where: N – Release stream.

=========
Attention
=========
1) From MR5.3 MSM is added with 256 bit encryption and this option is disabled by default from factory.
   The end user(s) who needs to enable 256 bit encryption is\are expected to perform the below steps

	1.Go to <MSM_HOME>\ StrongSSLEncryption.ini
	2.Modify the property SSL_STRONG_ENCRYPTION to "ENABLE"
	3.Restart the MSM Framework

	Warning : Please be aware that enabling 256bit encryption would
	restrict the user from communicating with the previous versions of
	MSM due to the higher Vs lower bit encryption handshake in the
	communication channel.
2)MSM Framework uses the 3071 port, please make sure this port is not occupied by other application to avoid the issues like Ex: GUI refresh and Monitor Events logging issues. 

3) Increase/Decrease strength of Public/Private RSA keys:

        Linux MSM Installer provides an option to user to select Self signed key size.
        Upon installation user can still switch the keys and below were the steps to perform the same:
 	- Stop MSMFramework Service.
	- Make sure service is Stopped
	- Edit the vivaldikey.properties available in below locations
 	       <MSM_HOME>\MegaRAID Storage Manager
	       <MSM_HOME>\Framework
	      <MSM_HOME>\MegaPopup
	- Comment/Uncomment the VIVALDI_KEY_FILE field for Key size selection.
	- Save the vivaldikey.properties file.
	- Start the MegaRAID Storage Manager Framework service.
	- Start the MegaPopup (<MSM_HOME>\MegaPopup\popup.sh)
4)Alert notifications of users choice:

        Linux MSM Installer provides an option to user to select alert notifications choice.
        Upon installation user can still switch the alert notifications choices and below were the steps to perform the same:
 	- Stop MSMFramework Service.
	- Make sure service is Stopped
	- Edit the eventnotificationchoice.properties available in below location
	       <MSM_HOME>\Framework
	- Comment/Uncomment the EVENT_NOTIFICATION_CHOICE field for alert notification choice selection.
	- Save the eventnotificationchoice.properties file.
	- Start the MegaRAID Storage Manager Framework service.
	- Start the MegaPopup (<MSM_HOME>\MegaPopup\popup.sh)
Note: This list had been derived based on the symptoms / usage descriptions of advisory and AVAGO engineers are not equipped with insight of openssl code segment of impact analysis

==================
Known Restrictions
==================
1) Latest LSI MegaRAID Storage Manager for Windows/Linux/Solaris is using an expired SSL certification (it was expired in Aug 18, 2009).
   Though MSM is not a Web-based application, MSM uses the Socket connection over SSL to handshakes only with the legitimate clients of its 
   own using the proprietary key files which were generated using java's key tool with the limited life time. 
   Though it has been identified as an issue as the key was expired, this is not a constraint to end-user anymore. 
   The renewal of "vivaldikey" , "server.cert"  and "server.key"  needs to be done with both client and Framework i.e. if we renew the key in both 
   the client and Framework the latest version of the MSM will not work with earlier versions of the Framework which implies a limitation in 
   the deployment environment.In LSI MegaRAIDStorageManager MSM GUI, MegaPopup acts as Client and Framework act as Server. 
2) MSM do not support IPv6 network.Make sure IPV6 is disabled before installation of MSM.
3) In case of multiple NIC environment, MSM Service automatically picks a valid NIC Address which is suggested by JAVA API.
   Hence there is no force option to specify the NIC address for MSM service

Prerequisite for MSM installation:
==================================
MSM installation scripts also installs the LSI SNMP agent rpm. 
The LSI SNMP agent application depends upon standard SNMP Utils package. 
Please ensure that the SNMP-Util package is present in the system before
installing MSM. SNMP-Util package includes the rpm.s net-snmp-libs , net-snmp-utils  and
additional dependent RPM.s. Please make sure that these RPM.s are installed from the OS media before
installing the MSM.

Prior to install MSM, check for existence of libstdc++.so.5 and libstdc++.so.6
librareis are present in /usr/lib directory. If not present/ installed, 
then install the Linux software component RPM that provides these libraries.
These RPM's will be available in the OS DVD. 

Prior to executing install.csh, check for existence of /bin/csh. If
not present/ installed, then install the Linux software component RPM
that provides /bin/csh.

Prerequisites to run MSM remote admin
======================================

1. Configure the system with valid IP address. Make sure there is no IP address conflict with in the sub network.

2. Ports such as 3071 and 5571 are open and available for MSM framework communication.

3. Disable all security manager and firewall.

4. Configure the multicasting, make sure class D multicast IP addresses are registered (at least 229.111.112.12 should be register for MSM to work), if not create static route using the following command:

        route add 229.111.112.12 dev eth1.

        Note that this command will not modify the routing table to be persistent across reboots. Please follow the guidelines per operating system to add the above mentioned IP address as a static entry into the routing table to be persistent across reboots.

        You may wish to add the entire range of IP addressess (224.0.0.0 through 239.255.255.255) into the routing table. Please note that this requires procedures that varies between different flavours and versions of operating system and may have security implications.

5. Install MSM, if already installed then restart MSM framework.


CIMPlugin Support
=================
In case of networks that doesn't have DNS configured, the .hosts. file of the systems where MSM is installed must be manually edited to map the IP address & the host name of your CIMOM server.  In addition, it should also have a mapping of its own IP address (not the loop back address) and host name for the indications to be supported.


MSM Uninstallation
==================
The product can be uninstalled using "Uninstall" short-cut created in Program menu. The user may also directly run the script "/usr/local/MegaRAID Storage Manager/uninstaller.sh" to uninstall MSM.


Notes:
  1. MSM upgrade is supported in this release. In other word, this release can be upgraded by future releases.

  2. To shutdown MSM Framework service, run "/etc/init.d/vivaldiframeworkd stop".
  
  3. "Any kernel upgrade requires restart of the MSM Framework and Services"
      for example, 
      RedHat Linux command to reload or restart network (login as root user):
      To start Linux network service:
      # service network start
      Debian Linux command to reload or restart network:
      # /etc/init.d/networking restart

==========================
Supported RAID Controllers
==========================
This download supports the following controllers

LSI MegaRAID:MegaRAID SAS 9362-4i,MegaRAID SAS 9362-8i,MegaRAID SAS 9361-4i,MegaRAID SAS 9361-8i,MegaRAID SAS 9363-4i,MegaRAID SAS 9380-8e,
MegaRAID SAS 9381-4i4e,MegaRAID SAS 9361-8iCC,MegaRAID SAS 9380-8eCC,MegaRAID SAS 9364-8i,MegaRAID SAS 9340-8i,MegaRAID SAS 9341-8i,MegaRAID SAS 9341-4i,
MegaRAID SAS 9240-4i/8i,MegaRAID SAS 9260-4i/8i/16i,MegaRAID SAS 9261-8i,MegaRAID SAS 9280-4i4e,MegaRAID SAS 9280-8e,MegaRAID SAS 9280-16i4e,
MegaRAID SAS 9280-4i4e,MegaRAID SAS 9265-8i,MegaRAID SAS 9285-8e,MegaRAID SAS 8704EM2,MegaRAID SAS 8708EM2,MegaRAID SAS 8880EM2,MegaRAID SAS 8888ELP

LSI HBA:LSI SAS3041E-R,LSI SAS3041X-R,LSI SAS3080X-R,LSI SAS3081E-R,LSI SAS3442E-R,LSI SAS3442X-R,LSI WarpDrive SLP-300,9212 4i4e-R spec,9211-8i/4i-R spec,LSI Nytro WarpDrive WLP4-200,LSI Nytro WarpDrive WLP4-400,LSI Nytro WarpDrive BLP4-400,LSI Nytro WarpDrive BLP4-800,LSI Nytro WarpDrive BLP4-1600,LSI Nytro XD BLP4-400, LSI Nytro XD BLP4-800,LSI SAS 9207-4i4e,LSI SAS 9217-4i4e,LSI SAS 9207-8i,LSI SAS 9217-8i,LSI SAS 9207-8e,LSI SAS 9201-16e,LSI SAS 9200-8e


********************************************************************
    LSI SNMP agent for Linux 
********************************************************************

Installation procedure for LSI SNMP Agent(For SUSE and Red Hat Linux)
--------------------------------------------------------------------------

1. LSI SNMP Agent rpm's installs the agents. 

2. rpm will take care of the necessary modification needed in the snmpd.conf
file for running the agent.
[
NB: Before installation please check,there is any pass command 
    starts with 1.3.6.1.4.1.3582 OID in snmpd.conf, if available then delete
all the old pass commands starts with 1.3.6.1.4.1.3582 OID.
(This could be possible if there is any previous LSI SNMP Agent was installed
in the system)
]
3. The snmpd.conf file structure should be same as lsi_mrdsnmpd.conf. For
reference,a sample conf file (lsi_mrdsnmpd.conf) will be there in the
/etc/lsi_mrdsnmp directory. 

4. For running SNMP query from a remote m/c add the ip address of that m/c in
the snmpd.conf file like this..

   com2sec	snmpclient	172.28.136.112		public

   Here ipaddress of the remote m/c is 172.28.136.112

5. For receiving snmp trap to a particular m/c, add the ip address of that m/c
in the com2sec section of snmpd.conf file. For example, to get Trap in
10.0.0.144, then add following line to snmpd.conf.
#       sec.name	source			community
   com2sec	snmpclient	10.0.0.144		public

6. To Run/stop the snmpd daemon.
   	/etc/init.d/snmpd start/stop
	RHEL 7.x/OEL 7.0: systemctl start/stop snmpd.service
	
7. To start/stop the SNMP Agent daemon before issuing any snmp query.
    /etc/init.d/lsi_mrdsnmpd start/stop
	RHEL 7.x/OEL 7.0: systemctl start/stop lsi_mrdsnmpd.service
	
8. Status of the SNMP Agent daemon can be checked by issuing the following
command...
    /etc/init.d/lsi_mrdsnmpd status
	RHEL 7.x/OEL 7.0: systemctl status lsi_mrdsnmpd.service
	
9. You can issue snmp query like this...

    snmpwalk -v1 -c public localhost .1.3.6.1.4.1.3582

10. You can get the snmp trap from local m/c by issuing the following
command...
    snmptrapd -P -F "%02.2h:%02.2j TRAP%w.%q from %A %v\n" 

11. For SLES-11 platform, please follow the below steps to configure traps.
	Edit /etc/lsi_mrdsnmp/sas/sas_TrapDestination.conf file & add ipaddress as
	shown below.

	#################################################
	# Agent Service needs the IP addresses to sent trap
	# The trap destination may be specified in this file or
	# using snmpd.conf file. Following indicators can be set
	# on "TrapDestInd" to instruct the agent to pick the IPs
	# as the destination.
	# 1 - IPs only from snmpd.conf
	# 2 - IPs from this file only
	# 3 - IPs from both the files
	#################################################
	TrapDestInd 3
	#############Trap Destination IP##################
	127.0.0.1   public
	172.28.157.149 public
	#################################################
	
NOTE:
	For SNMP components to work, it is necessary that linux system should
have snmp-net packages(rpm) to be already present.

	It is assumed that snmpd.conf is located at /etc/snmp for Redhat and
/etc for SuSE. Anyway, user can change the file location from
/etc/init.d/lsi_mrdsnmpd file

	It is neccessary to uninstall all the previous version before
installing a new version. The rpm has not been created to support -U version.
The rpm -U is most likely to fail with this rpm.

SNMP Trap Disable functionality
===============================
User may disable SNMP Trap functionality using "-notrap" as install(install.csh) parameter.

MegaRAID Storage Manager(MSM) Installation on VMware :
======================================================
To, install the MSM on VMWare operating system, the user should execute the
command "./vmware_install.sh" from the installation disk.

The installer provides the user to choose the License agreement,operating system 
and storelib to be used as mentioned below.
1. End user license agreement.
2. Operating system  (VMware 3.5 or VMware 4.0).
3. Select the Storelib (Inbox Storelib or Storelib from MSM package).

Note:
1. LSI SNMP Agent is not a supported configuration on VMware Operating system (VMware 3.5 or VMware 4.0).
2. Ensure that on a 32 bit or on a 64 bit VMware operating system, you install the 32 bit MegaRAID Storage Manager software.
3. Workaround Specific to ESXi Server:  
   a) Ensure that the thirdparty application services like "slpd and sfcbd-watchdog services are up and running on ESXi
   	  server".(/etc/init.d/slpd status & /etc/init.d/sfcbd-watchdog status).
   b) Ensure that firewall has been disabled on ESXi server.
      (Check Firewall status : "esxcli network firewall get" To Disable Firewall : "esxcli network firewall unload").
   c) sfcb timeout socket error in CIMOM server results in AEN blocked by sfcb-cimom and may lead to duplicate entries in client with incorrect event description. 
	  To get rid of this, user is required to restart sfcb service in VMware ESXi.
	  Command to restart : /etc/init.d/sfcbd-watchdog stop.
   						   /etc/init.d/sfcbd-watchdog start.
      The same has been raised against VMware. Refer to the link further details[https://www.vmdev.net/tracker/tracking/linkid/prpl1235/remcurreport/true/template/ViewIssue.vm?id=LSDM89&readonly=true]
   d) CURL error in CIMOM server results in AEN blocked by CIMOM server to upper layer(CIMProvider-->MSM). This can happen if servers are in differnt subnet or if there is any incomplete AEN subscritions.
	To get rid of this, user is required to have both client and server in same subnet.
	Any incomplete AEN subscriptions needs to be removed via CIMClient
	Either restart of sfcb service or reboot the server is recommended after any change in VMware server.
   e)  To Mangae VMware ESXi from RHEL 7.x user has to execute below commands before installation of MSM
	1) service ebtables restart
	2) service iptables stop 
   f)  For any VMware connection errors due to configured protocols please refer
	https://kb.vmware.com/s/article/2151279
	For additional information related to sfcb, please refer to the VMware website documentation

MegaRAID Storage Manager(MSM) Uninstallation on VMWare :
======================================================
The MSM can be uninstalled by running the script 
"/usr/local/MegaRAID Storage Manager/uninstaller.sh".

MSM Performance improvement
===========================
For better performance of MSM, when subjected to any heap-intensive (say heavy
IOs) or computational tasks,improve the heap by including the following command
"-Xms1024m -Xmx1024m",where
 1024m           Size of the heap allocated. The specified size is dependent on the machine's Hardware configuration.
 -Xms1024m       Sets the initial size of the Java heap to 1024 Mbytes
 -Xmx1024m       Sets the maximum heap size to 1024 Mbytes

 1. Goto product home folder (/usr/local/MegaRAID Storage Manager).
 2. Open startupui.sh file in editable mode.
 3. Include the command -Xms1024m -Xmx1024m after "$JRE_HOME/bin/java"
    effectively:
    LD_LIBRARY_PATH=$MSM_HOME/lib $JRE_HOME/bin/java -Xms1024m -Xmx1024m -DVENUS=true....

==========================
Known Issues & Limitations
==========================
1)With the usage of the components version MR 5.8 or MR 6.1 (or greater) firmware and MR5.5, 5.6, 5,7 & MR6.0 MSM builds, the following issues are observed with 4k drives:
  1. When user tries to create any logical drive with stripe size below 32K, configuration creation will fail 
  2. When user tries to create logical drive with stripe size more than 32K, configuration creation will result in a incorrect stripe size value 
To avoid this issue use the latest MR 5.8 or MR 6.1 (or greater) MSM build.
2)MSM Device tree always shows green check icon for BBU status. Refer "Status" property in the BBU properties page for more details on BBU Status. Please refer defect:SCGCQ00323453 for more details.
3)MSM shows java icon instead of MSM icon for Pop-Up Notification
4)MSM reports VD size slightly larger (by 0.001) than original size for large VD configuration
5)Health status displayed in MSM Login page will be in below format/order if server contains combination of MR and IR Controllers:
	--> MR,IR3,IR2,IR1
  For Example: 1) If MR Controller contains offline VD and IR-3 Contians Degraded VD, then System health will be displayed as offline.
	       2) System health will be Displayed as degraded if MR Contains Degraded VD and IR-3 contains Offline VD.
	       3) Health will be optimal if none of the mentioned controllers has offline/degraded VD.
6)Manage MegaRAID Advanced Software Options window may not be proper if it is opened using mnemonics.
7)In Device tree MSM will not show Security ICON for Secure capable JBOD PD. Below text will be displayed in Decive tree  to differentiate between secure and non-secure jbod, if security is enabled on controller.
	FDE JBOD drive --> Security Capable
	FDE JBOD secured drive --> Secured
8)MSM resets a few controller property to "0" if there is any mix and match use of MSM (older of MSMv6.8) vs FW from later of the quarterly releases.
  To provide an example, if the customer is using older version of MR 6.7 MSM which does not have the support of this field (say "errorThreshold") with latest version of FW MR6.8, 
  which has this support in FW brings an issue as the reserved field at that particular offset in the Ctrl Prop structure is sending the MSM defaults value of 0 to FW which overwrites the FW default value.
  This issue is completely fixed in MR6.8. This fix will be back ported to N-2 version starting from MR6.8 MSM. (N=MR6.8MSM)
  a) In case of any customer who uses older than N-2 version (MR6.6/MR6.7) and encounter this issue, need to be moved to MR6.8.
