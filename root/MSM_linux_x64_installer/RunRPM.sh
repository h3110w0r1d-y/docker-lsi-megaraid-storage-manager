#!/bin/sh

./deleteOldVersion.sh
retval=$?
if [ $retval == 1 ]; then
  exit
fi

if [ -f /usr/lib64/libstdc++.so.6 ]; then
      libstdc=1;
      else
      libstdc=0;
      echo "File /usr/lib64/libstdc++.so.6 not found"
      echo "Install the libstdc++ rpm from the OS CD and retry"
      echo "Refer to MSM readme for more details"
      exit 0;
fi

##Check for Third-party library RPM
utils2_rpm=`rpm -qa | grep Lib_Utils2-1 | wc -l`
if [ $utils2_rpm = 0 ]; then
        rpm -ivh Lib_Utils2-1.00-11.noarch.rpm --nodeps
else
	newdate=1352112240
		olddate=`rpm -q --queryformat "%{BUILDTIME}" Lib_Utils2`
		if [ $newdate -gt $olddate ]; then
			rpm -ivh Lib_Utils2-1.00-11.noarch.rpm --force
		fi
		if [ $newdate -eq $olddate ]; then
			echo "Latest Lib_Utils2 RPM is already installed"
		fi
fi	

##Step 2 : Install MegaRAID Storage Manager 17.05.06-00

rpm -i --test MegaRAID_Storage_Manager-17.05.06-00.noarch.rpm
status=$?
if [ $status = 0 ]; then
  echo "Installing  MegaRAID_Storage_Manager-17.05.06-00"
  rpm -Uvh MegaRAID_Storage_Manager-17.05.06-00.noarch.rpm
else
  echo "RPM Installation Failed"
  exit 1
fi

ln -sf /opt/lsi/Pegasus/libcrypto.so.1.1 /opt/lsi/Pegasus/libcrypto.so.4
ln -sf /opt/lsi/Pegasus/libssl.so.1.1 /opt/lsi/Pegasus/libssl.so.4


if [ "$setuptype" = "" ]; then
	setuptype="a"
fi
if [ "$removesnmp" = "" ]; then
	removesnmp=0
fi

if [ "$vivaldikeyvalue" = "" ]; then
	vivaldikey="2"
	else
	vivaldikey="$vivaldikeyvalue"
fi

if [ "$eventnotificationchoice" = "" ]; then
	eventnotificationchoice="3"
	else
	eventnotificationchoice="$eventnotificationchoice"
fi

#echo "Vivalidkey value is\n"
#echo $vivaldikey

if [ "$vivaldikey" = "1" ]; then
        sed -i.bak "9 s/^V/#V/" "/usr/local/MegaRAID Storage Manager/vivaldikey.properties" > /dev/null 2>&1
        sed -i.bak "11 s/^#//" "/usr/local/MegaRAID Storage Manager/vivaldikey.properties" > /dev/null 2>&1
        sed -i.bak "9 s/^V/#V/" "/usr/local/MegaRAID Storage Manager/Framework/vivaldikey.properties" > /dev/null 2>&1
        sed -i.bak "11 s/^#//" "/usr/local/MegaRAID Storage Manager/Framework/vivaldikey.properties" > /dev/null 2>&1
        sed -i.bak "9 s/^V/#V/" "/usr/local/MegaRAID Storage Manager/MegaPopup/vivaldikey.properties" > /dev/null 2>&1
        sed -i.bak "11 s/^#//" "/usr/local/MegaRAID Storage Manager/MegaPopup/vivaldikey.properties" > /dev/null 2>&1
        rm -rf "/usr/local/MegaRAID Storage Manager/vivaldikey.properties.bak" > /dev/null 2>&1
        rm -rf "/usr/local/MegaRAID Storage Manager/Framework/vivaldikey.properties.bak" > /dev/null 2>&1
        rm -rf "/usr/local/MegaRAID Storage Manager/MegaPopup/vivaldikey.properties.bak" > /dev/null 2>&1
	 
else
        sed -i.bak "9 s/^#//" "/usr/local/MegaRAID Storage Manager/vivaldikey.properties" > /dev/null 2>&1
        sed -i.bak "11 s/^V/#V/" "/usr/local/MegaRAID Storage Manager/vivaldikey.properties" > /dev/null 2>&1
        sed -i.bak "9 s/^#//" "/usr/local/MegaRAID Storage Manager/Framework/vivaldikey.properties" > /dev/null 2>&1
        sed -i.bak "11 s/^V/#V/" "/usr/local/MegaRAID Storage Manager/Framework/vivaldikey.properties" > /dev/null 2>&1
        sed -i.bak "9 s/^#//" "/usr/local/MegaRAID Storage Manager/MegaPopup/vivaldikey.properties" > /dev/null 2>&1
        sed -i.bak "11 s/^V/#V/" "/usr/local/MegaRAID Storage Manager/MegaPopup/vivaldikey.properties" > /dev/null 2>&1
        rm -rf "/usr/local/MegaRAID Storage Manager/vivaldikey.properties.bak" > /dev/null 2>&1
        rm -rf "/usr/local/MegaRAID Storage Manager/Framework/vivaldikey.properties.bak" > /dev/null 2>&1
        rm -rf "/usr/local/MegaRAID Storage Manager/MegaPopup/vivaldikey.properties.bak" > /dev/null 2>&1
fi

if [ "$eventnotificationchoice" = "1" ]; then
	sed -i.bak "1 s/^#//" "/usr/local/MegaRAID Storage Manager/Framework/eventnotificationchoice.properties" > /dev/null 2>&1
	sed -i.bak "2 s/^E/#E/" "/usr/local/MegaRAID Storage Manager/Framework/eventnotificationchoice.properties" > /dev/null 2>&1
	sed -i.bak "3 s/^E/#E/"  "/usr/local/MegaRAID Storage Manager/Framework/eventnotificationchoice.properties" > /dev/null 2>&1
	rm -rf "/usr/local/MegaRAID Storage Manager/Framework/eventnotificationchoice.properties.bak" > /dev/null 2>&1
fi
if [ "$eventnotificationchoice" = "2" ]; then
	sed -i.bak "1 s/^E/#E/" "/usr/local/MegaRAID Storage Manager/Framework/eventnotificationchoice.properties" > /dev/null 2>&1
	sed -i.bak "2 s/^#//" "/usr/local/MegaRAID Storage Manager/Framework/eventnotificationchoice.properties" > /dev/null 2>&1
	sed -i.bak "3 s/^E/#E/"  "/usr/local/MegaRAID Storage Manager/Framework/eventnotificationchoice.properties" > /dev/null 2>&1
	rm -rf "/usr/local/MegaRAID Storage Manager/eventnotificationchoice.properties.bak" > /dev/null 2>&1
fi
if [ "$eventnotificationchoice" = "3" ]; then
	sed -i.bak "1 s/^E/#E/" "/usr/local/MegaRAID Storage Manager/Framework/eventnotificationchoice.properties" > /dev/null 2>&1
	sed -i.bak "2 s/^E/#E/" "/usr/local/MegaRAID Storage Manager/Framework/eventnotificationchoice.properties" > /dev/null 2>&1
	sed -i.bak "3 s/^#//" "/usr/local/MegaRAID Storage Manager/Framework/eventnotificationchoice.properties" > /dev/null 2>&1
	rm -rf "/usr/local/MegaRAID Storage Manager/eventnotificationchoice.properties.bak" > /dev/null 2>&1
fi

/etc/init.d/vivaldiframeworkd start > /dev/null 2>&1
cd  "/etc/X11/xinit/xinitrc.d" > /dev/null 2>&1
cd - > /dev/null 2>&1
. /etc/X11/xinit/xinitrc.d/popup.sh & > /dev/null 2>&1
echo " "

#Step 3: Install SAS SNMP
step3status=0
if [ "$setuptype" != "c" ]; then
  if [ $removesnmp = 0 ]; then
	rpm -i --test sas_snmp-17.05-0003.x86_64.rpm
	status=$?
	if [ $status = 0 ]; then
		echo "Installing sas_snmp-17.05-0003"
		rpm -Uvh sas_snmp-17.05-0003.x86_64.rpm
	else
		step3status=1
		echo "SAS SNMP installation failed"
	fi
  else
	step3status=1
  fi
else
  step3status=1
fi

##Step 4: Install SAS-IR SNMP
step4status=0
if [ "$setuptype" != "c" ]; then
  if [ $removesnmp = 0 ]; then
	rpm -i --test sas_ir_snmp-17.05-0003.x86_64.rpm
	status=$?
	if [ $status = 0 ]; then
		echo "Installing sas_ir_snmp-17.05-0003"
		rpm -ivh sas_ir_snmp-17.05-0003.x86_64.rpm
	else
		step4status=1
		echo "SAS-IR SNMP installation failed"
	fi
  else
	step4status=1
  fi
else
  step4status=1
fi


uninst="/usr/local/MegaRAID Storage Manager/.__uninst.sh"
if [ $step4status = 0 ]; then
	echo "echo \"Uninstalling sas_ir_snmp-17.05-0003\"" >> $uninst
	echo "rpm -e sas_ir_snmp-17.05-0003" >> $uninst
fi
if [ $step3status = 0 ]; then
	echo "echo \"Uninstalling sas_snmp-17.05-0003\"" >> $uninst
	echo "rpm -e sas_snmp-17.05-0003" >> $uninst
fi
echo "echo \"Uninstalling MegaRAID_Storage_Manager-17.05.06-00\" " >> $uninst
echo "rpm -e MegaRAID_Storage_Manager-17.05.06-00" >> $uninst
echo "status=\$?" >>$uninst
echo "if [ \$status -ne 0 ]; then" >> $uninst
echo "     exit 1" >> $uninst
echo "fi" >> $uninst
echo "echo \"Uninstalling Lib_Utils2-1.00-11\" " >> $uninst
echo "rpm -e Lib_Utils2-1.00-11" >> $uninst
echo "status=\$?" >>$uninst
echo "if [ \$status -ne 0 ]; then" >> $uninst
echo "     exit 1" >> $uninst
echo "fi" >> $uninst
echo "echo \"Done.\" " >>$uninst
chmod +x "$uninst"
