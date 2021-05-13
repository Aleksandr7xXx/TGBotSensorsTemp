@echo off
"C:\Program Files (x86)\AIDA64\aida64.exe" /R C:\Sensors\1.txt /SILENT /IDLE /TEXT /CUSTOM C:\Sensors\aida64.rpf

setlocal enabledelayedexpansion
set nd=32& set kd=53& set nd2=1& set kd2=20
for /l %%a in (%nd%,1,%kd%) do set "ns=!ns! /c:"^\[%%a\]""
for /l %%a in (%nd2%,1,%kd2%) do set "ns=!ns! /c:"^\[%%a\]""
<"C:\Sensors\1.txt">"C:\Sensors\2.txt" (for /f "tokens=2 delims=[]" %%a in ('find /n /v ""^|findstr/rv%ns%') do echo %%a)

::setlocal enabledelayedexpansion
::set nd=1& set kd=15
::for /l %%a in (%nd%,1,%kd%) do set "ns=!ns! /c:"^\[%%a\]""
::<"C:\Sensors\2.txt">"C:\Sensors\3.txt" (for /f "tokens=2 delims=[]" %%a in ('find /n /v ""^|findstr/rv%ns%') do echo %%a)

FINDSTR "[8-9][0-9]" C:\Sensors\2.txt > C:\Sensors\4.txt
::@<"C:\Sensors\2.txt">"C:\Sensors\4.txt" (for %%i in ("75" "76" "77" "78" "79" "80" "81" "82" "83" "84" "85" "86" "87" "88" "89" "90" "91" "92" "93" "94" "95" "96" "97" "98" "99" "100" "101" "102") do @find %%i)
::@<"C:\Sensors\2.txt">"C:\Sensors\4.txt" (for %%i in ("85" "86" "87" "88" "89" "90" "91" "92" "93" "94" "95" "96" "97" "98" "99" "100" "101" "102") do @find %%i)


SET TOKEN=Token_вашего_бота
SET CHAT_ID=-ID_вашего_чата
SET URL="https://api.telegram.org/bot%TOKEN%/sendMessage"

SetLocal EnableExtensions EnableDelayedExpansion
set count=0
For /F "delims=" %%a in (C:\Sensors\4.txt) do (
  set /A count+=1
  if !count!==1 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==2 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==3 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==4 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==5 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==6 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==7 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==8 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==9 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==10 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==11 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==12 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==13 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==14 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==15 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==16 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==17 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==18 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==19 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
  if !count!==20 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
)
::TIMEOUT 30
::SetLocal EnableExtensions EnableDelayedExpansion
::set count=0
::For /F "delims=" %%a in (C:\Sensors\1.txt) do (
::  set /A count+=1
::  if !count!==21 curl -s -X POST %URL% -d chat_id=%CHAT_ID% -d text="%%a"
::)
