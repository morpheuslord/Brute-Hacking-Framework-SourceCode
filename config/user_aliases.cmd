;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat -n "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

brute-framework="%CMDER_ROOT%\bin\brute-framework\bruteforcer.cmd" $*
portabletools="%CMDER_ROOT%\bin\brute-framework\start.exe" $*
photon="%CMDER_ROOT%\bin\python\python.exe" "%CMDER_ROOT%\bin\python\photon\photon.py" $*
virtualbox="%CMDER_ROOT%\bin\virtualbox\VirtualBox.exe" $*
cygwin="%CMDER_ROOT%\bin\cygwin\Cygwin.bat" $*
terminus="%CMDER_ROOT%\bin\brute-framework\terminus\start.exe" $*
curl ="%CMDER_ROOT%\bin\curl\bin\curl.exe" $*
nikto="%CMDER_ROOT%\bin\strawberry-perl\portableshell.bat" "%CMDER_ROOT%\bin\strawberry-perl\nikto\program\nikto.pl" $*
joomscan="%CMDER_ROOT%\bin\strawberry-perl\portableshell.bat" "%CMDER_ROOT%\bin\strawberry-perl\joomscan\joomscan.pl" $*
dotdotpwn="%CMDER_ROOT%\bin\strawberry-perl\portableshell.bat" "%CMDER_ROOT%\bin\strawberry-perl\dotdotpwn\dotdotpwn.pl" $*
padbuster="%CMDER_ROOT%\bin\strawberry-perl\portableshell.bat" "%CMDER_ROOT%\bin\strawberry-perl\padbuster\padbuster.pl" $*
recon-ng="%CMDER_ROOT%\bin\python\python.exe" "%CMDER_ROOT%\bin\python\recon-ng" $*
recon-web="%CMDER_ROOT%\bin\python\python.exe" "%CMDER_ROOT%\bin\python\recon-web" $*
instaosint="%CMDER_ROOT%\bin\python\python.exe" "%CMDER_ROOT%\bin\python\main.py" $*
ngrep="%CMDER_ROOT%\bin\ngrep\ngrep.exe" $*
fast-brute="%CMDER_ROOT%\bin\python\python.exe" "%CMDER_ROOT%\bin\python\WifiBF-master\WifiBF.py" $*
evil-winrm="%CMDER_ROOT%\bin\brute-framework\BF_Files\ruby\bin\ruby.exe" "%CMDER_ROOT%\bin\brute-framework\BF_Files\ruby\bin\evil-winrm\evil-winrm.rb" $*
ettercap="%CMDER_ROOT%\bin\ettercap\ettercap.exe" $*
ruby="%CMDER_ROOT%\bin\rubyinstaller-3.0.0-1-x64\bin\ruby.exe" $*
python27="%CMDER_ROOT%\bin\brute-framework\BF_Files\Python27\python.exe" $*
python3="%CMDER_ROOT%\bin\python\python.exe" $*
perl="%CMDER_ROOT%\bin\strawberry-perl\portableshell.bat" $*
gem="%CMDER_ROOT%\bin\rubyinstaller-3.0.0-1-x64\bin\gem" $* 
pip3="%CMDER_ROOT%\bin\python\Scripts\pip.exe" $*
choco="%CMDER_ROOT%\bin\chocolatey\choco.exe" $*
duf="%CMDER_ROOT%\bin\duf.exe" $*
pip2="%CMDER_ROOT%\bin\brute-framework\BF_Files\Python27\Scripts\pip.exe" $*
urh="%CMDER_ROOT%\bin\urh\urh.exe" $*
atom="%CMDER_ROOT%\bin\brute-v-7\BF_Files\Atom\atom.exe" $*
creepy="%CMDER_ROOT%\bin\CreepyMain.exe" $*
list="%CMDER_ROOT%\config\list.cmd" $*
androbugs="%CMDER_ROOT%\bin\brute-v-7\BF_Files\AndroBugs_Framework\androbugs.exe" $*
androBugs_massive="%CMDER_ROOT%\bin\brute-v-7\BF_Files\AndroBugs_Framework\AndroBugs_MassiveAnalysis.exe" $*
androBugs_report="%CMDER_ROOT%\bin\brute-v-7\BF_Files\AndroBugs_Framework\AndroBugs_ReportByVectorKey.exe" $*
androBugs_reportsummary="%CMDER_ROOT%\bin\brute-v-7\BF_Files\AndroBugs_Framework\AndroBugs_ReportSummary.exe" $*
