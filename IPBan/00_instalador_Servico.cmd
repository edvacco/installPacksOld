set local=%cd%

auditpol.exe /set /category:"{69979849-797A-11D9-BED3-505054503030}" /success:enable /failure:enable
auditpol.exe /set /category:"{69979850-797A-11D9-BED3-505054503030}" /success:enable /failure:enable

sc.exe create IPBan type= own start= delayed-auto binPath= %local%\DigitalRuby.IPBanProDatacenter.exe DisplayName= IPBan
sc.exe description IPBan "Cria automaticamente regras de firewall para tentativas abusivas de login: https://github.com/DigitalRuby/IPBan"
sc.exe failure IPBan reset= 9999 actions= "restart/60000/restart/60000/restart/60000"
sc.exe start IPBan

pause