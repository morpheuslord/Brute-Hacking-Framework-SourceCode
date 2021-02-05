@echo off 

title utile By - MORPHOUSLORD
:TOP
	
	echo.
    call colorbox.exe /0E 0 0 75 14
	echo.
    	echo @@@@@@@    @@@@@@    @@@@@@    @@@@@@   @@@  @@@  @@@  @@@@@@@@   @@@@@@   
	echo @@@@@@@@  @@@@@@@@  @@@@@@@   @@@@@@@   @@@  @@@@ @@@  @@@@@@@@  @@@@@@@@  
	echo @@!  @@@  @@!  @@@  !@@       !@@       @@!  @@!@!@@@  @@!       @@!  @@@  
	echo !@!  @!@  !@!  @!@  !@!       !@!       !@!  !@!!@!@!  !@!       !@!  @!@  
	echo @!@@!@!   @!@!@!@!  !!@@!!    !!@@!!    !!@  @!@ !!@!  @!!!:!    @!@  !@!  
	echo !!@!!!    !!!@!!!!   !!@!!!    !!@!!!   !!!  !@!  !!!  !!!!!:    !@!  !!!  
	echo !!:       !!:  !!!       !:!       !:!  !!:  !!:  !!!  !!:       !!:  !!!  
	echo :!:       :!:  !:!      !:!       !:!   :!:  :!:  !:!  :!:       :!:  !:!                                        
	echo  ::       ::   :::  :::: ::   :::: ::    ::   ::   ::   ::       ::::: ::                                                   
	echo  :         :   : :  :: : :    :: : :    :    ::    :    :         : :  :                                                
	ECHO.
	call colorchar.exe /0a "========================================================================="
	echo.
    call colorbox.exe /0E 0 12 75 50
	echo.
	call colorchar.exe /0a "   1) netstat                  "
	echo.
	call colorchar.exe /0a "   2) ipconfig/all             "
	echo.
	call colorchar.exe /0a "   3) ipconfig/displaydns      "
	echo.
	call colorchar.exe /0a "   4) wifi export              "
	echo.
	call colorchar.exe /0a "   5) system info              "
        ECHO.
	call colorchar.exe /0a "   6) system transfer          "
	echo.
	call colorchar.exe /0a "   7) individual wifi password "
	echo.
	call colorchar.exe /0a "   8) bruteforce               "
	echo.
	call colorchar.exe /0a "   9) passcode                 "
	echo.
	call colorchar.exe /0a "   10) generatehash            "
	echo.
	call colorchar.exe /0a "   11) recognisehash           "
	echo.
	call colorchar.exe /0a "   12) interface               "
	echo.			
	call colorchar.exe /0a "   100) systemmon              "
	echo.		
	call colorchar.exe /0a "   101) ncat                   "
	echo.			
	call colorchar.exe /0a "   102) nmap                   "
	echo.
	call colorchar.exe /0a "   103) thc-hydra              "
	echo.			
	call colorchar.exe /0a "   104) sslscan                "
	echo.
	call colorchar.exe /0a "   105) test-ssl               "
	echo.
	call colorchar.exe /0a "   106) sherlock               "
	echo.
	call colorchar.exe /0a "   107) subbrute               "
	echo.

   echo.
   set /p ans="  enter a opiton : "
   echo.
if %ans% == 103 goto thc-hydra

if %ans% == 104 goto sslscan

if %ans% == 105 goto test-ssl

if %ans% == 106 goto sherlock

if %ans% == 107 goto subbrute

if %ans% == 1 goto a

if %ans% == 2 goto c

if %ans% == 3 goto d

if %ans% == 4 goto e

if %ans% == 5 goto f

if %ans% == 6 goto sys

if %ans% == 7 goto new

If %ans% == 8 goto bruteforce

if %ans% == 9 goto passcode

if %ans% == 10 goto generatehash

if %ans% == 11 goto recognisehash

if %ans% == 12 goto interface

if %ans% == 13 goto shutdown

if %ans% == 100 goto sysmon

if %ans% == 101 goto ncat

if %ans% == 102 goto nmap	

	:sysmon
	cls
	echo.
		call colorchar.exe /0a "======================================================"
		resmon
		call colorchar.exe /0a "======================================================"
	echo.
	pause
	cls
	goto TOP
	
	:test-ssl
	cls
	cd BF_Files
	TestSSLServer.exe -h
	echo.
	call colorchar.exe /0A "enter only the command do not add testsslserver at the beginning it is default"
	echo.	
	set /p servername="enter servername :"
	set /p port="enter port :"
	TestSSLServer.exe %servername% %port%
	pause
	goto test-ssl

	:sslscan
	cls
	cd BF_Files
	cd sslscan
	sslscan.exe -h
	echo.
	call colorchar.exe /0A "enter only the command do not add sslscan at the beginning it is default"
	echo.
	set /p command="enter command :"
	sslscan.exe %command% 
	pause
	goto sslscan

	:subbrute
	cd BF_Files
	cd subbrute
	cd windows
	subbrute.exe -h
	echo.
	call colorchar.exe /0A "enter only the command do not add subbrute at the beginning it is default"
	echo.	
	set /p option="enter option :"
	set /p target="enter target :"
	subbrute.exe %option% %target%
	pause
	goto subbrute
	
	:sherlock
	cls
	cd BF_Files
	sherlock.exe -h
	set /p command="enter command :"
	set /p username="enter username :"
	sherlock.exe %command% %username%
	pause
	goto sherlock
	
	:thc-hydra
	cls
	cd BF_Files
	cd thc-hydra-windows
	hydra.exe -h
	echo.
	call colorchar.exe /0A "enter only the command do not add hydra at the beginning it is default"
	echo.
	set /p command="enter command :"
	hydra.exe %command%
	pause
	goto thc-hydra

	:a
	cls
	echo.
		call colorchar.exe /0a "======================================================"
		netstat
		netstat -n -e -o -f -x
		netstat>>netstat.txt
		netstat -n -e -o -f -x>>netstat.txt
		call colorchar.exe /0a "======================================================"
	echo.
	pause
	cls
	goto TOP

	:c
	cls
	call colorchar.exe /0a "======================================================"
	ipconfig
	ipconfig>>ipconfig.txt
	call colorchar.exe /0a "======================================================"
	call colorchar.exe /0a "======================================================"
	ipconfig/all
	ipconfig/all>>ipconfig2.txt
	call colorchar.exe /0a "======================================================"
	PAUSE
	CLS
	GOTO TOP

	:d
	cls
	call colorchar.exe /0a "======================================================"
	ipconfig/displaydns
	ipconfig/displaydns>>ipconfig3.txt
	call colorchar.exe /0a "======================================================"
	PAUSE
	CLS
	GOTO TOP

	:e
	cls
	call colorchar.exe /0a "======================================================"
	netsh wlan export profile folder=. key=clear
	call colorchar.exe /0a "======================================================"
	pause
	CLS
	GOTO TOP




	:f
	cls
	call colorchar.exe /0a "======================================================"
	systeminfo
	systeminfo>>systeminfo.txt
	call colorchar.exe /0a "======================================================"
	PAUSE
	CLS
	goto TOP

	:sys
	start auditer.exe
	CLS
	goto TOP


	:new
	START individual.exe
	CLS
	goto TOP


	:bruteforce
	start brute
	cls
	goto TOP

	:passcode
	start keycombinator.exe
	cls
	goto TOP 



	:generatehash
	cd hgen
	start hgen.exe
	cls
	goto TOP

	:recognisehash
	cd hash-id
	start hash-id.exe
	cls
	goto TOP

	:interface
	cls
	echo.
	call colorbox.exe /0E 0 0 57 18
	echo.
		call colorchar.exe /0a "======================================================"
		arp -a
		arp -a>>interface.txt
		call colorchar.exe /0a "======================================================"
	echo.
	pause
	cls
	goto TOP

	:shutdown
	cls
	echo.
		call colorchar.exe /0a "======================================================"
		ipconfig
		call colorchar.exe /0a "======================================================"
		call colorchar.exe /0a "======================================================"
		netstat 
		call colorchar.exe /0a "======================================================"
		call colorchar.exe /0a "======================================================"
		ping localhost -n 10 >nul
		shutdown -i
		call colorchar.exe /0a "======================================================"
	echo.
	pause
	cls
	goto TOP

	:nmap
	cls
	cd brute-v-7
	cd BF_Files
	cd nmap
	start nmap.exe -h
	echo.
	call colorchar.exe /A "[========================================nmap========================================]"
	echo.
	call colorchar.exe /A " Nmap 7.70 ( https://nmap.org )"
	echo.
	call colorchar.exe /A " Usage: nmap [Scan Type(s)] [Options] {target specification}"
 	echo.
	call colorchar.exe /A " TARGET SPECIFICATION:"
	echo.
	call colorchar.exe /A "   Can pass hostnames, IP addresses, networks, etc."
	echo.
	call colorchar.exe /A "   Ex: scanme.nmap.org, microsoft.com/24, 192.168.0.1; 10.0.0-255.1-254"
	echo.
	call colorchar.exe /A "   -iL <inputfilename>: Input from list of hosts/networks"
	echo.
	call colorchar.exe /A "   -iR <num hosts>: Choose random targets"
	echo.
	call colorchar.exe /A "   --exclude <host1[,host2][,host3],...>: Exclude hosts/networks"
	echo.
	call colorchar.exe /A "   --excludefile <exclude_file>: Exclude list from file"
	echo.
	call colorchar.exe /A " HOST DISCOVERY:"
	echo.
	call colorchar.exe /A "   -sL: List Scan - simply list targets to scan  "
	echo.
	call colorchar.exe /A "   -sn: Ping Scan - disable port scan  "
	echo.
	call colorchar.exe /A "   -Pn: Treat all hosts as online -- skip host discovery  "
	echo.
	call colorchar.exe /A "   -PS/PA/PU/PY[portlist]: TCP SYN/ACK, UDP or SCTP discovery to given ports  "
	echo.
	call colorchar.exe /A "   -PE/PP/PM: ICMP call colorchar.exe /A "-, timestamp, and netmask request discovery probes  "
	echo.
	call colorchar.exe /A "   -PO[protocol list]: IP Protocol Ping  "
	echo.
	call colorchar.exe /A "   -n/-R: Never do DNS resolution/Always resolve [default: sometimes]  "
	echo.
	call colorchar.exe /A "  --dns-servers <serv1[,serv2],...>: Specify custom DNS servers  "
	echo.
	call colorchar.exe /A "   --system-dns: Use OS's DNS resolver  "
	echo.
	call colorchar.exe /A "   --traceroute: Trace hop path to each host  "
	echo.
	call colorchar.exe /A " SCAN TECHNIQUES:  "
	echo.
	call colorchar.exe /A "   -sS/sT/sA/sW/sM: TCP SYN/Connect()/ACK/Window/Maimon scans  "
	echo.
	call colorchar.exe /A "   -sU: UDP Scan  "
	echo.
	call colorchar.exe /A "   -sN/sF/sX: TCP Null, FIN, and Xmas scans  "
	echo.
	call colorchar.exe /A "   --scanflags <flags>: Customize TCP scan flags  "
	echo.
	call colorchar.exe /A "   -sI <zombie host[:probeport]>: Idle scan  "
	echo.
	call colorchar.exe /A "   -sY/sZ: SCTP INIT/COOKIE-call colorchar.exe /A "- scans  "
	echo.
	call colorchar.exe /A "   -sO: IP protocol scan  "
	echo.
	call colorchar.exe /A "   -b <FTP relay host>: FTP bounce scan  "
	echo.
	call colorchar.exe /A " PORT SPECIFICATION AND SCAN ORDER:  "
	echo.
	call colorchar.exe /A "   -p <port ranges>: Only scan specified ports  "
	echo.
	call colorchar.exe /A "      Ex: -p22; -p1-65535; -p U:53,111,137,T:21-25,80,139,8080,S:9  "
	echo.
	call colorchar.exe /A "   --exclude-ports <port ranges>: Exclude the specified ports from scanning  "
	echo.
	call colorchar.exe /A "   -F: Fast mode - Scan fewer ports than the default scan  "
	echo.
	call colorchar.exe /A "   -r: Scan ports consecutively - don't randomize  "
	echo.
	call colorchar.exe /A "   --top-ports <number>: Scan <number> most common ports  "
	echo.
	call colorchar.exe /A "   --port-ratio <ratio>: Scan ports more common than <ratio>  "
	echo.
	call colorchar.exe /A " SERVICE/VERSION DETECTION:  "
	echo.
	call colorchar.exe /A "   -sV: Probe open ports to determine service/version info  "
	echo.
	call colorchar.exe /A "   --version-intensity <level>: Set from 0 (light) to 9 (try all probes)  "
	echo.
	call colorchar.exe /A "   --version-light: Limit to most likely probes (intensity 2)  "
	echo.
	call colorchar.exe /A "   --version-all: Try every single probe (intensity 9)  "
	echo.
	call colorchar.exe /A "   --version-trace: Show detailed version scan activity (for debugging)  "
	echo.
	call colorchar.exe /A " SCRIPT SCAN:  "
	echo.
	call colorchar.exe /A "   -sC: equivalent to --script=default  "
	echo.
	call colorchar.exe /A "   --script=<Lua scripts>: <Lua scripts> is a comma separated list of  "
	echo.
	call colorchar.exe /A "            directories, script-files or script-categories  "
	echo.
	call colorchar.exe /A "   --script-args=<n1=v1,[n2=v2,...]>: provide arguments to scripts  "
	echo.
	call colorchar.exe /A "   --script-args-file=filename: provide NSE script args in a file  "
	echo.
	call colorchar.exe /A "   --script-trace: Show all data sent and received  "
	echo.
	call colorchar.exe /A "   --script-updatedb: Update the script database.  "
	echo.
	call colorchar.exe /A "   --script-help=<Lua scripts>: Show help about scripts.  "
	echo.
	call colorchar.exe /A "            <Lua scripts> is a comma-separated list of script-files or  "
	echo.
	call colorchar.exe /A "            script-categories.  "
	echo.
	call colorchar.exe /A " OS DETECTION:  "
	echo.
	call colorchar.exe /A "   -O: Enable OS detection  "
	echo.
	call colorchar.exe /A "   --osscan-limit: Limit OS detection to promising targets  "
	echo.
	call colorchar.exe /A "   --osscan-guess: Guess OS more aggressively  "
	echo.
	call colorchar.exe /A " TIMING AND PERFORMANCE:  "
	echo.
	call colorchar.exe /A "   Options which take <time> are in seconds, or append 'ms' (milliseconds),  "
	echo.
	call colorchar.exe /A "   's' (seconds), 'm' (minutes), or 'h' (hours) to the value (e.g. 30m).  "
	echo.
	call colorchar.exe /A "   -T<0-5>: Set timing template (higher is faster)  "
	echo.
	call colorchar.exe /A "   --min-hostgroup/max-hostgroup <size>: Parallel host scan group sizes  "
	echo.
	call colorchar.exe /A "   --min-parallelism/max-parallelism <numprobes>: Probe parallelization  "
	echo.
	call colorchar.exe /A "   --min-rtt-timeout/max-rtt-timeout/initial-rtt-timeout <time>: Specifies  "
	echo.
	call colorchar.exe /A "       probe round trip time.  "
	echo.
	call colorchar.exe /A "   --max-retries <tries>: Caps number of port scan probe retransmissions.  "
	echo.
	call colorchar.exe /A "   --host-timeout <time>: Give up on target after this long  "
	echo.
	call colorchar.exe /A "   --scan-delay/--max-scan-delay <time>: Adjust delay between probes  "
	echo.
	call colorchar.exe /A "   --min-rate <number>: Send packets no slower than <number> per second  "
	echo.
	call colorchar.exe /A "   --max-rate <number>: Send packets no faster than <number> per second  "
	echo.
	call colorchar.exe /A " FIREWALL/IDS EVASION AND SPOOFING:  "
	echo.
	call colorchar.exe /A "   -f; --mtu <val>: fragment packets (optionally w/given MTU)  "
	echo.
	call colorchar.exe /A "   -D <decoy1,decoy2[,ME],...>: Cloak a scan with decoys  "
	echo.
	call colorchar.exe /A "   -S <IP_Address>: Spoof source address	 "
	echo.
	call colorchar.exe /A "   -e <iface>: Use specified interface  "
	echo.
	call colorchar.exe /A "   -g/--source-port <portnum>: Use given port number  "
	echo.
	call colorchar.exe /A "   --proxies <url1,[url2],...>: Relay connections through HTTP/SOCKS4 proxies  "
	echo.
	call colorchar.exe /A "   --data <hex string>: Append a custom payload to sent packets  "
	echo.
	call colorchar.exe /A "   --data-string <string>: Append a custom ASCII string to sent packets  "
	echo.
	call colorchar.exe /A "   --data-length <num>: Append random data to sent packets  "
	echo.
	call colorchar.exe /A "   --ip-options <options>: Send packets with specified ip options  "
	echo.
	call colorchar.exe /A "   --ttl <val>: Set IP time-to-live field  "
	echo.
	call colorchar.exe /A "   --spoof-mac <mac address/prefix/vendor name>: Spoof your MAC address  "
	echo.
	call colorchar.exe /A "   --badsum: Send packets with a bogus TCP/UDP/SCTP checksum  "
	echo.
	call colorchar.exe /A " OUTPUT:  "
	echo.
	call colorchar.exe /A "   -oN/-oX/-oS/-oG <file>: Output scan in normal, XML, s|<rIpt kIddi3,  "
	echo.
	call colorchar.exe /A "      and Grepable format, respectively, to the given filename.  "
	echo.
	call colorchar.exe /A "   -oA <basename>: Output in the three major formats at once  "
	echo.
	call colorchar.exe /A "   -v: Increase verbosity level (use -vv or more for greater effect) "
	echo.
	call colorchar.exe /A "   -d: Increase debugging level (use -dd or more for greater effect) "
	echo.
	call colorchar.exe /A "   --reason: Display the reason a port is in a particular state  "
	echo.
	call colorchar.exe /A "   --open: Only show open (or possibly open) ports  "
	echo.
	call colorchar.exe /A "   --packet-trace: Show all packets sent and received  "
	echo.
	call colorchar.exe /A "   --iflist: Print host interfaces and routes (for debugging)  "
	echo.
	call colorchar.exe /A "   --append-output: Append to rather than clobber specified output files  "
	echo.
	call colorchar.exe /A "   --resume <filename>: Resume an aborted scan  "
	echo.
	call colorchar.exe /A "   --stylesheet <path/URL>: XSL stylesheet to transform XML output to HTML  "
	echo.
	call colorchar.exe /A "   --webxml: Reference stylesheet from Nmap.Org for more portable XML  "
	echo.
	call colorchar.exe /A "   --no-stylesheet: Prevent associating of XSL stylesheet w/XML output  "
	echo.
	call colorchar.exe /A " MISC:  "
	echo.
	call colorchar.exe /A "   -6: Enable IPv6 scanning  "
	echo.
	call colorchar.exe /A "   -A: Enable OS detection, version detection, script scanning, and traceroute  "
	echo.
	call colorchar.exe /A "   --datadir <dirname>: Specify custom Nmap data file location  "
	echo.
	call colorchar.exe /A "   --send-eth/--send-ip: Send using raw ethernet frames or IP packets  "
	echo.
	call colorchar.exe /A "   --privileged: Assume that the user is fully privileged  "
	echo.
	call colorchar.exe /A "   --unprivileged: Assume the user lacks raw socket privileges  "
	echo.
	call colorchar.exe /A "   -V: Print version number  "
	echo.
	call colorchar.exe /A "   -h: Print this help summary page.  "
	echo.
	call colorchar.exe /A " EXAMPLES:  "
	echo.
	call colorchar.exe /A "   command: -v -A scanme.nmap.org  "
	echo.
	call colorchar.exe /A "   command: -v -sn 192.168.0.0/16 10.0.0.0/8  "
	echo.
	call colorchar.exe /A "   command: -v -iR 10000 -Pn -p 80  "
	echo.
	call colorchar.exe /A " SEE THE MAN PAGE (https://nmap.org/book/man.html) FOR MORE OPTIONS AND EXAMPLES  "
	echo.
	call colorchar.exe /0e "please do not mention nmap before writting ur command"
	echo.
	call colorchar.exe /A ".
	echo.
	call colorchar.exe /0a "nmap is default u can directly write ur code"
	echo.
	call colorchar.exe /A ".
	echo.
	call colorchar.exe /0d "use the tool if u know how to use it cause its fast"
	echo.
	set /p nmap="enter ur commands :"
	call colorchar.exe /A ".
	start nmap.exe %nmap%
	pause
	goto :nmap


	:ncat
	cls
	cd brute-v-7
	cd BF_Files
	cd nmap
	start ncat.exe -h
	echo.
	call colorchar.exe /A "[========================================nmap========================================]"
	echo.
	echo Ncat 7.70 ( https://nmap.org/ncat )
	echo Usage: ncat [options] [hostname] [port]
	echo
	echo Options taking a time assume seconds. Append 'ms' for milliseconds,
	echo 's' for seconds, 'm' for minutes, or 'h' for hours (e.g. 500ms).
	echo  -4                         Use IPv4 only
	echo  -6                         Use IPv6 only
	echo  -C, --crlf                 Use CRLF for EOL sequence
	echo  -c, --sh-exec <command>    Executes the given command via /bin/sh
	echo  -e, --exec <command>       Executes the given command
	echo      --lua-exec <filename>  Executes the given Lua script
	echo  -g hop1[,hop2,...]         Loose source routing hop points (8 max)
	echo  -G <n>                     Loose source routing hop pointer (4, 8, 12, ...)
	echo  -m, --max-conns <n>        Maximum <n> simultaneous connections
	echo  -h, --help                 Display this help screen
	echo  -d, --delay <time>         Wait between read/writes
	echo  -o, --output <filename>    Dump session data to a file
	echo  -x, --hex-dump <filename>  Dump session data as hex to a file
	echo  -i, --idle-timeout <time>  Idle read/write timeout
	echo  -p, --source-port port     Specify source port to use
	echo  -s, --source addr          Specify source address to use (doesn't affect -l)
	echo  -l, --listen               Bind and listen for incoming connections
	echo  -k, --keep-open            Accept multiple connections in listen mode
	echo  -n, --nodns                Do not resolve hostnames via DNS
	echo  -t, --telnet               Answer Telnet negotiations
	echo  -u, --udp                  Use UDP instead of default TCP
	echo      --sctp                 Use SCTP instead of default TCP
	echo  -v, --verbose              Set verbosity level (can be used several times)
	echo  -w, --wait <time>          Connect timeout
	echo  -z                         Zero-I/O mode, report connection status only
	echo      --append-output        Append rather than clobber specified output files
	echo      --send-only            Only send data, ignoring received; quit on EOF
	echo      --recv-only            Only receive data, never send anything
	echo      --allow                Allow only given hosts to connect to Ncat
	echo      --allowfile            A file of hosts allowed to connect to Ncat
	echo      --deny                 Deny given hosts from connecting to Ncat
	echo      --denyfile             A file of hosts denied from connecting to Ncat
	echo      --broker               Enable Ncat's connection brokering mode
	echo      --chat                 Start a simple Ncat chat server
	echo      --proxy <addr[:port]>  Specify address of host to proxy through
	echo      --proxy-type <type>    Specify proxy type ("http" or "socks4" or "socks5")
	echo      --proxy-auth <auth>    Authenticate with HTTP or SOCKS proxy server
	echo      --ssl                  Connect or listen with SSL
	echo      --ssl-cert             Specify SSL certificate file (PEM) for listening
	echo      --ssl-key              Specify SSL private key (PEM) for listening
	echo      --ssl-verify           Verify trust and domain name of certificates
	echo      --ssl-trustfile        PEM file containing trusted SSL certificates
	echo      --ssl-ciphers          Cipherlist containing SSL ciphers to use
	echo      --ssl-alpn             ALPN protocol list to use.
	echo      --version              Display Ncat's version information and exit
	echo.
	echo See the ncat(1) manpage for full options, descriptions and usage examples
	echo.
	call colorchar.exe /0e "please do not mention ncat before writting ur command"
	echo.
	call colorchar.exe /0a "ncat is default u can directly write ur code"
	echo.
	call colorchar.exe /0d "use the tool if u know how to use it cause its fast"
	echo.
	echo.
	set /p ncat="enter ur commands :"
	echo.
	start ncat.exe %ncat%
	pause
	goto :ncat

























