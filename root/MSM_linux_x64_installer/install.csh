#!/bin/csh
echo " "
set requireSetupType="1"
if ($#argv > 0) then
	switch ($1)
		case "-notrap": 
			set requireSetupType="1"
			breaksw
		case "-ru": 
			set requireSetupType="1"
			breaksw
		default:
			set requireSetupType="0"
			breaksw
	endsw
endif
if ("$requireSetupType" == "1") then
echo "STOP!  BEFORE YOU INSTALL OR USE THIS SOFTWARE"
echo " "
echo "Carefully read this Software License Agreement. Installing or using this Software indicates that you agree to abide by this Software License Agreement.  If you do not agree with it, promptly return the Software and we will refund the purchase price."
echo " "
echo " "
echo "          Software License Agreement"
echo " "
echo "PLEASE READ CAREFULLY BEFORE STARTING INSTALLATION OF THE SOFTWARE"
echo " "
echo "THE SOFTWARE AND DOCUMENTATION PROVIDED HEREIN IS PROPRIETARY TO AVAGO TECHNOLOGIES AND ITS LICENSORS. AVAGO TECHNOLOGIES IS WILLING TO LICENSE THE SOFTWARE AND DOCUMENTATION TO YOU ONLY UPON THE CONDITION THAT YOU ACCEPT ALL OF THE TERMS CONTAINED IN THIS SOFTWARE LICENSE AGREEMENT. BY USING THIS SOFTWARE, YOU, THE END-USER, AGREE TO THE LICENSE TERMS BELOW. IF YOU DO NOT AGREE TO THESE TERMS, YOU MAY NOT USE THE SOFTWARE."
echo " "
echo "1. Grant of License"
echo " "
echo "Conditioned upon compliance with the terms and conditions of this Software License Agreement ("Agreement"), Avago Technologies ("AVAGO") grants you, the original licensee, a nonexclusive and nontransferable limited license to use (including installation on multiple computers) for your internal business purposes the "Software and the Documentation, "Permitted Use"""
echo " "
echo "2. License Conditions; Confidentiality"
echo " "
echo "The Software and Documentation are confidential information of AVAGO and its licensors. Except as expressly permitted herein, you may not disclose or give copies of the Software or Documentation to others and you may not let others gain access to the same. You may not post the Software or Documentation, or otherwise make available, in any form, on the Internet or in other public places or media. You may not modify, adapt, translate, rent, lease, loan, distribute or resell for profit, or create derivative works based upon, the Software or Documentation or any part of thereof, but you may transfer the original media containing the Software and Documentation on a one-time basis provided you retain no copies of the Software and Documentation and the recipient assumes all of the terms of this Agreement. You may not reverse engineer, decompile, disassemble or otherwise attempt to derive source code from the Software except to the extent allowed by law."
echo " "
echo "3. No Warranty"
echo " "
echo "YOU ACKNOWLEDGE THAT THE SOFTWARE AND DOCUMENTATION ARE LICENSED "AS IS," AND AVAGO MAKES NO REPRESENTATIONS OR WARRANTIES EXPRESS, IMPLIED, STATUTORY OR OTHERWISE REGARDING THE SOFTWARE AND DOCUMENTATION.  ANY IMPLIED WARRANTY OR CONDITION OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE, NON-INFRINGEMENT, SATISFACTORY QUALITY, NON-INTERFERENCE, ACCURACY OF INFORMATIONAL CONTENT, OR ARISING FROM A COURSE OF DEALING, LAW, USAGE, OR TRADE PRACTICE, ARE HEREBY EXCLUDED TO THE EXTENT ALLOWED BY APPLICABLE LAW AND ARE EXPRESSLY DISCLAIMED BY AVAGO , ITS SUPPLIERS AND LICENSORS.  TO THE EXTENT AN IMPLIED WARRANTY CANNOT BE EXCLUDED, SUCH WARRANTY IS LIMITED IN DURATION TO A PERIOD OF THIRTY (30) DAYS FROM THE DATE OF RECEIPT BY THE ORIGINAL LICENSEE.  BECAUSE SOME STATES OR JURISDICTIONS DO NOT ALLOW LIMITATIONS ON HOW LONG AN IMPLIED WARRANTY LASTS, THE ABOVE LIMITATION MAY NOT APPLY. THIS WARRANTY GIVES YOU SPECIFIC LEGAL RIGHTS, AND YOU MAY ALSO HAVE OTHER RIGHTS WHICH VARY FROM JURISDICTION TO JURISDICTION."
echo " "
echo "4. LIMITATION OF LIABILITY AND REMEDIES"
echo " "
echo "IN NO EVENT SHALL AVAGO OR ITS LICENSORS BE LIABLE TO YOU FOR ANY INDIRECT, CONSEQUENTIAL, EXEMPLARY, INCIDENTAL OR SPECIAL DAMAGES ARISING FROM THIS AGREEMENT OR THE USE OF THE SOFTWARE OR DOCUMENTATION (INCLUDING, WITHOUT LIMITATION, DAMAGE FOR LOSS OF BUSINESS PROFITS, BUSINESS INTERRUPTION, LOSS OF BUSINESS INFORMATION, LOSS OF GOODWILL, OR OTHER PECUNIARY LOSS), WHETHER RESULTING FROM AVAGO NEGLIGENCE OR OTHERWISE, EVEN IF AVAGO WAS ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. AVAGO MAXIMUM LIABILITY FOR ANY DAMAGES ARISING UNDER THIS AGREEMENT AND THE USE OF THE SOFTWARE AND DOCUMENTATION WILL NOT EXCEED AN AMOUNT EQUAL TO THE LICENSE FEES YOU PAID TO AVAGO FOR THE SOFTWARE AND DOCUMENTATION. THE LAWS OF SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY, AND THE ABOVE EXCLUSION MAY NOT APPLY TO YOU."
echo " "
echo "5. U.S. Government End User Purchasers"
echo " "
echo "The Software and Documentation qualify as "commercial items," as that term is defined at Federal Acquisition Regulation (.FAR.) (48 C.F.R.) 2.101, consisting of "commercial computer software" and "commercial computer software documentation" as such terms are used in FAR 12.212. Consistent with FAR 12.212 and DoD FAR Supp. 227.7202-1 through 227.7202-4, and notwithstanding any other FAR or other contractual clause to the contrary, you may provide to Government end user or, if this Agreement is direct, Government end user will acquire, the Software and Documentation with only those rights set forth in this Agreement. Use of either the Software or Documentation or both constitutes agreement by the Government that the Software and Documentation are "commercial computer software" and "commercial computer software documentation," and constitutes acceptance of the rights and restrictions herein."
echo " "
echo "6. Term And Termination"
echo " "
echo "You may terminate this Agreement at any time, and it will automatically terminate if you fail to comply with it. If terminated, you must immediately destroy the Documentation and the Software and all copies you have made."
echo " "
echo "7. Audit Rights"
echo " "
echo "AVAGO shall have the right on reasonable notice, at its own cost and no more than once per year, directly or through its independent auditors, to inspect, examine, take extracts, and make copies from, your records to the extent reasonably necessary to verify your compliance with the terms and conditions of this Agreement. This right shall apply during the term of this Agreement and for one (1) year thereafter."
echo " "
echo "8. Export"
echo " "
echo "You may not export this Software or Documentation, unless you have complied with applicable United States and foreign government laws."
echo " "
echo "9. General"
echo " "
echo "You assume full responsibility for the legal and responsible use of the Software and Documentation. You agree that this Agreement is the complete agreement between you and AVAGO (and that any verbal or written statements that are not reflected in this Agreement and any prior agreements, are superseded by this Agreement). To be effective, any amendment of this Agreement must be in writing and signed by both you and AVAGO . Should any provisions of this Agreement be held to be unenforceable, then such provision shall be separable from this Agreement and shall not affect the remainder of the Agreement. This Agreement shall be governed by California law, not including its choice of law provisions. The United Nations Convention on the International Sale of Goods shall not be applied to this Agreement. All rights in the Software and Documentation not specifically granted in this Agreement are reserved by AVAGO or its licensors. The English language version of this Agreement shall be the official version. The terms and conditions of this Software License Agreement shall be binding upon you and your respective heirs, successors and assigns."
echo " "
echo "10. Survival"
echo " "
echo "The provisions of Sections 2, 3, 4, 7, 8 and 9 shall survive any termination of this Agreement."
echo " "
echo " "
echo " "

echo -n Press Y to accept the License Agreement : 
set EULA = $<
if ( "$EULA" != "y" && "$EULA" != "Y" ) then
  echo "EULA declined by User. Exiting installation..."
  exit(1);
endif
endif
set vivaldikeyvalue="2"
set eventnotificationchoice="3"
set firstArgDone="0"
set removepopup="0"
set removesnmp="0"
set var="0"
if ("$requireSetupType" == "1") then
#while(1)
clear
echo "Press 0 to exit from installation"
echo "Choose[1-11]:"
echo "            (1) - Complete"
echo "                  This option will install all program features."
echo "            (2) - Client"
echo "                  This option will only install components required to remotely view and"
echo "                  configure servers."
echo "            (3) - StandAlone"
echo "                  This option will only install components required for local server management"
echo "            (4) - Local"
echo "                  This option will only install components required for local configuration"
echo "            (5) - Server"
echo "                  This option will only install components required for remote server management"
echo "            (6) - Complete upgrade"
echo "                  This option will only upgrade Complete msm"
echo "            (7) - Client upgrade"
echo "                  This option will only upgrade Client msm"
echo "            (8) - Standalone upgrade"
echo "                  This option will only upgrade Standalone msm"
echo "            (9) - Local upgrade"
echo "                  This option will only upgrade Local msm"
echo "            (10)- Server upgrade"
echo "                  This option will only upgrade Server msm"
echo "            (11) - upgrade only"
echo "                  This option will only upgrade msm"
echo "Note : Installer can also be run in a command line mode"
echo "Usage : install.sh [-option]"
echo "The options are :"
echo "              a"
echo "                The Complete Installation of MegaRAID Storage Manager (MSM) "
echo "              c"
echo "                The Client components only program of MSM"
echo "              s"
echo "               The StandAlone component of MSM"
echo "              l"
echo "               The Local component of MSM"
echo "              d"
echo "               The Sever component of MSM"
echo "              au"
echo "               The upgrade only option for Complete MSM"
echo "              cu"
echo "               The upgrade only option for Client only MSM"
echo "              su"
echo "               The upgrade only option for Standalone MSM"
echo "              lu"
echo "               The upgrade only option for Local MSM"
echo "              du"
echo "               The upgrade only option for Server MSM"
echo "              u"
echo "               The upgrade only option for MSM"
echo -n Setup Type : 
set setuptype = $<
#if (0 <= $setuptype && $setuptype < 4) then
#	break;
#endif
#end

echo "Enter The SelfSigned Key Details :"
echo "          Enter 1 for 1024 key size"
echo "          Enter 2 for 2048 key size"
echo "          Both the MSM client and server need to have the same RSA key size enabled to be able to communicate with each other."
echo "          	- 2048 bit keys should be selected for more secure network communication"
echo "          	- 1024 bit keys should be used with MSM clients still using 1024 bit keys"
echo "          For more details please see the MSM software Users Guide."
echo "Enter the key size:(1 or 2) "
        set vivaldikeyvalue = $<
        if ( "$vivaldikeyvalue" != "1" && "$vivaldikeyvalue" != "2" ) then
                  echo "Invalid key size Selection..Exiting installation..."
                  exit 1;
        endif
echo "Configure Range of Events to Generate Alert Notifications."
echo "     Please make a selection to configure MSM range of events used to generate alert notifications:(Default 3)"
echo "          Enter 1 Since Last Reboot"
echo "          	MSM will generate alerts using events since last reboot." 
echo "               	Note: If user selects option Last reboot then in property file "EVENT_NOTIFICATION_CHOICE=reboot" will"
echo "               	be selected. Based on this MSM retrieves events from session boot seqNo to Newest seqNo."
echo "          Enter 2 Since Log Clear"
echo "          	MSM will generate alerts from events since last log clear." 
echo "			Note: If user selects option Last reboot then in property file "EVENT_NOTIFICATION_CHOICE=clear" will"
echo "			be selected. Based on this MSM retrieves events from last log clear seqNo to Newest seqNo."
echo "          Enter 3 Since Last Shutdown"
echo "          	MSM will generate alerts from events since last clean shutdown." 
echo "			Note: If user selects option Last reboot then in property file "EVENT_NOTIFICATION_CHOICE=shutdown" will"
echo "			be selected. Based on this MSM retrieves events from last clean shutdown seqNo to Newest seqNo."echo "Enter the choice:(1 or 2 or 3) "
	set eventnotificationchoice = $<
	if ("$eventnotificationchoice" == "")  then
	set eventnotificationchoice = "3"
	endif	
	if ( "$eventnotificationchoice" != "1" && "$eventnotificationchoice" != "2" && "$eventnotificationchoice" != "3" ) then
                  echo "Invalid Alert Notification Selection..Exiting installation..."
                  exit 1;
        endif		
		
switch($setuptype)
	case "1":
		echo -n "Starting complete installation of MegaRAID Storage Manager 17.05.06-00"
		set setuptype="a"
		set upgradesetuptype="n"
		breaksw
	case "2":
		echo -n "Starting client installation of MegaRAID Storage Manager 17.05.06-00"
		set setuptype="c"
		set upgradesetuptype="n"
		breaksw
	case "3":
		echo -n "Starting stand alone installation of MegaRAID Storage Manager 17.05.06-00"
		set setuptype="s"
		set upgradesetuptype="n"
		breaksw
	case "4":
		echo -n "Starting Local installation of MegaRAID Storage Manager 17.05.06-00"
		set setuptype="l"
		set upgradesetuptype="n"
		breaksw
	case "5":
		echo -n "Starting Server installation of MegaRAID Storage Manager 17.05.06-00"
		set setuptype="d"
		set upgradesetuptype="n"
		breaksw
        case "6":
                echo -n "Starting Complete upgrade only installation of MegaRAID Storage Manager 17.05.06-00"
                set setuptype="a"
                set upgradesetuptype="u"
                breaksw
        case "7":
                echo -n "Starting Client upgrade only installation of MegaRAID Storage Manager 17.05.06-00"
                set setuptype="c"
                set upgradesetuptype="u"
                breaksw
        case "8":
                echo -n "Starting Standalone upgrade only installation of MegaRAID Storage Manager 17.05.06-00"
                set setuptype="s"
                set upgradesetuptype="u"
                breaksw
        case "9":
                echo -n "Starting Local upgrade only installation of MegaRAID Storage Manager 17.05.06-00"
                set setuptype="l"
                set upgradesetuptype="u"
                breaksw
        case "10":
                echo -n "Starting Server upgrade only installation of MegaRAID Storage Manager 17.05.06-00"
                set setuptype="d"
                set upgradesetuptype="u"
                breaksw
        case "11":
                echo -n "Starting upgradeonly installation of MegaRAID Storage Manager 17.05.06-00"
                set upgradesetuptype="u"
                breaksw
	case "0":
		echo -n "Exiting Installation"
		echo
		exit
		breaksw
	default:
                echo "Incorrect option selected. Please retry....."
		echo "Choose[1-11]:"
		echo "            (1) - Complete"
		echo "                  This option will install all program features."
		echo "            (2) - Client"
		echo "                  This option will only install components required to remotely view and"
		echo "                  configure servers."
		echo "            (3) - StandAlone"
		echo "                  This option will only install components required for local server management"
		echo "            (4) - Local"
		echo "                  This option will only install components required for local configuration"
		echo "            (5) - Server"
		echo "                  This option will only install components required for remote server management"
                echo "            (6) - Complete upgrade only"
                echo "                  This option will upgrade Complete msm"
                echo "            (7) - Client upgrade only"
                echo "                  This option will upgrade Client msm"
                echo "            (8) - Standalone upgrade only"
                echo "                  This option will upgrade Standalone msm"
                echo "            (9) - Local upgrade only"
                echo "                  This option will upgrade Local msm"
                echo "            (10) -Server  upgrade only"
                echo "                  This option will upgrade Server msm"
                echo "            (11) -upgrade only"
                echo "                  This option will upgrade msm"
                exit
		breaksw
endsw

#if ( $setuptype == "0" ) then
#	exit
#endif
else
switch($1)
	case "-a":
		set setuptype="1"
		set firstArgDone="1"
		set setuptype="a"
		set upgradesetuptype="n"
		breaksw
	case "-c":
		set setuptype="2"
		set firstArgDone="1"
		set setuptype="c"
		set upgradesetuptype="n"
		breaksw
	case "-s":
		set setuptype="3"
		set firstArgDone="1"
		set setuptype="s"
		set upgradesetuptype="n"
		breaksw
	case "-l":
		set setuptype="4"
		set firstArgDone="1"
		set setuptype="l"
		set upgradesetuptype="n"
		breaksw
	case "-d":
		set setuptype="5"
		set firstArgDone="1"
		set setuptype="d"
		set upgradesetuptype="n"
		breaksw
        case "-au":
                set setuptype="6"
                set firstArgDone="1"
                set setuptype="a"
                set upgradesetuptype="u"
                breaksw
        case "-cu":
                set setuptype="7"
                set firstArgDone="1"
                set setuptype="c"
                set upgradesetuptype="u"
                breaksw
        case "-su":
                set setuptype="8"
                set firstArgDone="1"
                set setuptype="s"
                set upgradesetuptype="u"
                breaksw
        case "-lu":
                set setuptype="9"
                set firstArgDone="1"
                set setuptype="l"
                set upgradesetuptype="u"
                breaksw
        case "-du":
                set setuptype="10"
                set firstArgDone="1"
                set setuptype="d"
                set upgradesetuptype="u"
                breaksw
        case "-u":
                set setuptype="11"
                set firstArgDone="1"
                set upgradesetuptype="u"
	case "-notrap":
		breaksw
	default:
#		if ( $1 = "-notrap" ) then
#			breaksw
#		endif
		echo "Incorrect option selected. Please retry....."
		echo "Usage : install.sh [-option]"
		echo "The options are :"
		echo "              a"
		echo "                The Complete Installation of MegaRAID Storage Manager (MSM) "
		echo "              c"
		echo "                The Client components only program of MSM"
		echo "              s"
		echo "               The StandAlone component of MSM"
		echo "              l"
		echo "               The Local component of MSM"
		echo "              d"
		echo "               The Server component of MSM"
                echo "              au"
                echo "               The upgrade only option for Complete MSM"
                echo "              cu"
                echo "               The upgrade only option for Client only MSM"
                echo "              su"
                echo "               The upgrade only option for Standalone MSM"
                echo "              lu"
                echo "               The upgrade only option for Local MSM"
                echo "              du"
                echo "               The upgrade only option for Server MSM"
                echo "              u"
                echo "               The upgrade only option for MSM"
		exit
endsw
endif
set firstArg="n"
set secondArg="n"
if ($firstArgDone == "1") then
	set firstArg=$2
	set secondArg=$3
else
	set firstArg=$1
	set secondArg=$2
endif
  switch($firstArg)
	case "-ru":
		switch ($secondArg)
			case "popup":
				set removepopup="1"
				echo -n " without popup"
				breaksw
			case "snmp":
				set removesnmp="1"
				echo -n " without snmp"
				breaksw
			case "popup,snmp":
				set removepopup="1"
				set removesnmp="1"
				echo -n " without popup,snmp"
				breaksw
			case "snmp,popup":
				set removepopup="1"
				set removesnmp="1"
				echo -n " without popup,snmp"
				breaksw
		endsw
		breaksw
   endsw
endif

echo "...."

set TRAPIND="Y"
 
if ( "$1" == "-notrap" ) then
        set TRAPIND="N"
endif
if ( "$2" == "-notrap" ) then
        set TRAPIND="N"
endif
if ( "$3" == "-notrap" ) then
        set TRAPIND="N"
endif
if ( "$4" == "-notrap" ) then
        set TRAPIND="N"
endif

if ( "$upgradesetuptype" == "u" ) then
        if ( -e "/usr/local/MegaRAID Storage Manager/installtype" ) then
                #echo "File present"
                set var = `cat "/usr/local/MegaRAID Storage Manager/installtype"`
                if ( "$var" == "complete" ) then
                        set setuptype="a"
                        echo "Complete upgrade"
                endif
                if ( "$var" == "client" ) then
                        set setuptype="c"
                        echo "Client only upgrade"
                endif
                if ( "$var" == "standalone" ) then
                        set setuptype="s"
                        echo "Standalone upgrade"
                endif
                if ( "$var" == "server" ) then
                        set setuptype="d"
                        echo "Server only upgrade"
                endif
                if ( "$var" == "local" ) then
                        set setuptype="l"
                        echo "Local upgrade"
                endif
        else
                echo "Complete install"
                        set setuptype="a"
        endif
endif
#echo $setuptype
#echo $vivaldikeyvalue

setenv setuptype $setuptype
setenv upgradesetuptype $upgradesetuptype
setenv removepopup $removepopup
setenv removesnmp $removesnmp
setenv TRAPIND $TRAPIND
setenv vivaldikeyvalue $vivaldikeyvalue
setenv eventnotificationchoice $eventnotificationchoice
./RunRPM.sh
