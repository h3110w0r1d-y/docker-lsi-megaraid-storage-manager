#!/bin/sh 

echo "Checking for any Old Version"
searchcont=1
if [ $searchcont = 1 ]; then
 linecount=`rpm -qa | grep MegaRAID_Storage_Manager | wc -l`
 if [ $linecount = 0 ]; then
  status=1
 else
  if [ $linecount = 1 ]; then
     status=0
  else
    echo "More than one copy of MegaRAID Storage Manager has been installed. Exiting installation."
    exit 1
  fi
 fi
#echo "setuptype is $setuptype";
#echo "upgradesetuptype is $upgradesetuptype";
if [ $linecount = 0 ]; then
        if [ $upgradesetuptype = 'u' ]; then
                echo "MSM is not installed on this system, MSM upgrade cannot proceed"
                echo "Exiting MSM installation"
                exit 1
        fi
fi
                                                                                
 if [ $status = 0 ]; then
  newdate=1642093428
  olddate=`rpm -q --queryformat "%{BUILDTIME}" MegaRAID_Storage_Manager`
  if [ $newdate -gt $olddate ]; then
	echo " MegaRAID Storage Manager is already installed $linecount"
	echo " Select Y or N "
	echo " Y, previous version of MSM will be uninstalled and latest MSM will be installed"
	echo " N, No changes made to the system"
	read ELU
#	echo "$ELU"
	if [ "$ELU" != "y" -a "$ELU" != "Y" ]; then
	echo "Exiting Installation " 
	exit 1
	fi
	echo "Uninstalling Old version"
  	. /etc/init.d/msm_profile
  	"$MSM_HOME/.__uninst.sh"
	status=$?
	if [ $status = 0 ]; then
		if [ -f "$MSM_HOME/.__uninst.sh" ]; then	
			echo "Uninstall Failed. Exiting installation."
			exit 1
		fi
		echo "Uninstall Completed Successfully"
	else
		echo "Uninstall Failed. Exiting installation."
		exit 1
	fi
  else
        if [ $newdate = $olddate ]; then
         echo "The version is already installed."
        else
	 echo "The installed version is newer."
        fi
        echo "Exiting installation."
        exit 1
  fi
 else
  echo "No Old Version Found"
 fi
fi
echo "Continuing with installation"
exit 0
