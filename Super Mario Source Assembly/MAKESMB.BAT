echo off
cls
ca65 smbdis.asm
ld65 -C ldconfig.txt smbdis.o
pause
del smb.nes
copy /b smb.hdr+smb.prg+smb.chr smb.nes
