@echo off
color b
:menu
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                             OTIMIZACAO AUTOMATICA V2.5.1  - PARADISE OPTIMIZER ( BY WHITEZINN )
echo.
echo                       #####  ######## ##  ##     ##  ##  ######     ##     #####    #####   #######   #####        
echo                      ##   ##    ##    ##  ###   ###  ##      ##    ###    ##   ##  ##   ##  ##       ##   #        
echo                      ##    #    ##    ##  #### ####  ##     ##     # ##   ##       ##   ##  ##       ###           
echo                      ##    #    ##    ##  ## # # ##  ##    ##     ##  ##  ##       ##   ##  ######     #####       
echo                      ##   ##    ##    ##  ## ### ##  ##   ##     #######  ##   ##  ##   ##  ##            ##       
echo                       #####     ##    ##  ##     ##  ##  ####### ##    ##  #####    #####   #######  ######        
echo.
echo.
echo                       ------------------------------------------------------------------------------
echo.
echo                             Renicie seu computador para que todas as otimizacoes serem aplicadas
echo.
echo.
echo.
echo                              [1] Liberar Uso de CPU              [2] Desabilitar Prefetch ( Desktop )
echo.
echo                              [3] Remover  Lixo                   [4] Desabilitar Transparencia        
echo.
echo                              [5] Limpar Cache                    [6] Otimizacoes Extras
echo.
echo                              [7] Entrar Discord 
echo.
echo.
echo.
echo.
echo.

set /p op= :
if %op% equ 1 goto 1
if %op% equ 2 goto 2
if %op% equ 3 goto 3
if %op% equ 4 goto 4
if %op% equ 5 goto 5
if %op% equ 6 goto 6
if %op% equ 7 goto 7

:1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintNotify" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
cls
goto menu

:2
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
cls
goto menu 

:3
rd /s /q C:\$Recycle.bin
rd /s /q D:\$Recycle.bin
rd /s /q E:\$Recycle.bin
rd /s /q F:\$Recycle.bin
rd /s /q J:\$Recycle.bin
cls
goto menu

:4
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "ColorPrevalence" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d "0" /f
Reg.exe add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d "0" /f
cls
goto menu

:5
REM Apaga arquivos de log
del c:\windows\logs\cbs\*.log
del C:\Windows\Logs\MoSetup\*.log
del C:\Windows\Panther\*.log /s /q
del C:\Windows\inf\*.log /s /q
del C:\Windows\logs\*.log /s /q
del C:\Windows\SoftwareDistribution\*.log /s /q
del C:\Windows\Microsoft.NET\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WebCache\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\SettingSync\*.log /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.tmp /s /q
del C:\Users\%USERNAME%\AppData\Local\Microsoft\"Terminal Server Client"\Cache\*.bin /s /q
del /s /f /q C:\Windows\inf\*.*LOG
del /s /f /q C:\Windows\Logs\CBS\*.*LOG
del /s /f /q C:\Windows\*.*LOG
del /s /f /q %appdata%\Local\Microsoft\Windows\Explorer\*.*db	
del /s /f /q %appdata%\Local\*.*Dat
del /s /f /q C:\Windows\ServiceProfiles\LocalService\AppData\Local\*.*dat
del /s /f /q "%appdata%\Local\Microsoft\Internet Explorer\Recovery\High\Last Active\*.*dat"
del /s /f /q "%appdata%\Local\Microsoft\Windows\History\History.IE5\MSHist012018090120180902\*.*dat"	
del /s /f /q "%appdata%\Local\Microsoft\Windows\Temporary Internet Files\AntiPhishing\*.*"
del /s /f /q "%appdata%\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\3EU7LA5I\*.*"
del /s /f /q "%appdata%\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\6VK4QU9R\*.*"
del /s /f /q "%appdata%\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\S1RDRE99\*.*"
del /s /f /q "%appdata%\Local\Google\Chrome\User Data\Default\Media Cache\*.*"
del /s /f /q "%appdata%\Local\Google\Chrome\User Data\ShaderCache\GPUCache\*.*"
del /s /f /q "%appdata%\Local\Google\Chrome\User Data\Default\*.*"
del /s /f /q "%appdata%\Local\Google\Chrome\User Data\*.*tmp"
DEL /s   C:\windows\system32\dllcache   /q
DEL /s   C:\MSOCache\*.*   /q
rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\INetCache\
cls
goto menu

:6
start https://www.youtube.com/@zwhitezinn/videos
cls
goto menu

:7
start https://discord.com/invite/5rfr3khEgk
cls
goto menu 





