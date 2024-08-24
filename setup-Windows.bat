@echo off
title auto-set-id47
echo Installing dependencies for building...
haxelib install flixel 5.5.0
haxelib set flixel 5.5.0
haxelib install flixel-addons 3.2.1
haxelib set flixel-addons 3.2.1
haxelib git flxanimate https://github.com/ShadowMario/flxanimate dev
haxelib git hxCodec https://github.com/polybiusproxy/hxCodec.git
haxelib git hxdiscord_rpc https://github.com/MAJigsaw77/hxdiscord_rpc.git
echo Do you want Lime 8.0.1?
set /p input
if /i %input%==sure goto Sure
if /i %input%==nah goto Nah
if /i not %input%== Sure,nah goto 1

:sure
echo Installing lime
haxelib install lime 8.0.1
haxelib set lime 8.0.1

:nah
echo Okay, we continue with the shit
haxelib git linc_luajit https://github.com/superpowers04/linc_luajit.git
haxelib install openfl 9.3.2
haxelib set openfl 9.3.2
haxelib git SScript https://github.com/SScript-Guy/SScript-new
haxelib install tjson 1.4.0
haxelib set tjson 1.4.0
echo Done!
pause
exit