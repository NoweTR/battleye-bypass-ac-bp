@echo off



netsh advfirewall reset

netsh advfirewall set allprofiles state on

netsh advfirewall firewall add rule name=Discord protocol=TCP dir=out remoteport=27004,80,8081,443 action=block enable=yes
netsh advfirewall firewall add rule name=Discord protocol=TCP dir=in remoteport=27004,80,8081,443 action=block enable=yes
netsh advfirewall firewall add rule name=Discord protocol=UDP dir=out remoteport=27004,80,8081,443 action=block enable=yes
netsh advfirewall firewall add rule name=Discord protocol=UDP dir=in remoteport=27004,80,8081,443 action=block enable=yes

netsh advfirewall firewall add rule name=BattlEye protocol=TCP dir=out program="C:\Program Files (x86)\Common Files\BattlEye\BEService.exe" action=block
netsh advfirewall firewall add rule name=BattlEye protocol=TCP dir=in program="C:\Program Files (x86)\Common Files\BattlEye\BEService.exe" action=block
netsh advfirewall firewall add rule name=BattlEye protocol=UDP dir=out program="C:\Program Files (x86)\Common Files\BattlEye\BEService.exe" action=block
netsh advfirewall firewall add rule name=BattlEye protocol=UDP dir=in program="C:\Program Files (x86)\Common Files\BattlEye\BEService.exe" action=block

netsh advfirewall firewall add rule name=BattlEye protocol=TCP dir=out program="C:\Zula\Game\zula_BE.exe" action=block
netsh advfirewall firewall add rule name=BattlEye protocol=TCP dir=in program="C:\Zula\Game\zula_BE.exe" action=block
netsh advfirewall firewall add rule name=BattlEye protocol=UDP dir=out program="C:\Zula\Game\zula_BE.exe" action=block
netsh advfirewall firewall add rule name=BattlEye protocol=UDP dir=in program="C:\Zula\Game\zula_BE.exe" action=block


cls

ipconfig/flushdns

cd C:\Windows\System32\drivers\etc
echo 0.0.0.0 https://www.battleye.com/>hosts
echo 0.0.0.0 https://www.zulaoyun.com/>>hosts
echo 0.0.0.0:27004>>hosts

cd C:\Windows\System32\drivers\etc
echo 0.0.0.0 https://www.battleye.com/>hosts.ics
echo 0.0.0.0 https://www.zulaoyun.com/>>hosts.ics
echo 0.0.0.0:27004>>hosts.ics


ipconfig/flushdns

cls

echo off
cd C:\Zula
del log
del logs
DEL /F /Q /A C:\Zula\acklog.txt
DEL /F /Q /A acklog.txt
del acklog.txt
attrib -a -h -s -r -i -v -x acklog.txt
DEL /F /Q /A C:\Zula\acklog.txt
DEL /F /Q /A acklog.txt
del acklog.txt
attrib -a -h -s -r -i -v -x acklog.txt
DEL /F /Q /A C:\Zula\acklog.txt
DEL /F /Q /A acklog.txt
del acklog.txt

cls
exit