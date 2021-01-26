@ECHO OFF
:BEGIN
CLS
IF EXIST  "%localappdata%\Nirvana\Saved\SaveGames\" (goto savedirfound) ELSE (goto savedirnotfound)

:savedirfound
echo Save Directory Found
goto start

:savedirnotfound
echo Creating Save Directory.
mkdir %localappdata%\Nirvana\Saved\SaveGames\
goto start

:start
echo ----------------------------
echo MonkePatch Setup Utility
echo ----------------------------
echo Please select a Windowed mode.
echo 1: Windowed
echo 2: Fullscreen
echo 3: Borderless
echo ----------------------------
CHOICE /N /C:123 /M "Pick a windowed mode:"

IF ERRORLEVEL ==3 GOTO Borderless
IF ERRORLEVEL ==2 GOTO Fullscreen
IF ERRORLEVEL ==1 GOTO Windowed

:Borderless
echo ----------------------------
echo Please select an aspect ratio.
echo 1: Widescreen (Standard 16:9)
echo 2: Ultrawide (21:9)
echo 3: Double 16:9 (32:9)
echo 4: Triple 16:9 (48:9)
echo ----------------------------
CHOICE /N C:1234 /M "Pick an aspect ratio:"

IF ERRORLEVEL ==4 GOTO 48by9borderless
IF ERRORLEVEL ==3 GOTO 32by9borderless
IF ERRORLEVEL ==2 GOTO 21by9borderless
IF ERRORLEVEL ==1 GOTO 16by9borderless

:48by9borderless
echo ----------------------------
echo Please select a resolution.
echo 1: 5760x1080
echo 2: 8320x1440
echo 3: 11520x2160 (Experimental)
echo ----------------------------
CHOICE /N C:123 /M "Pick a resolution:"

IF ERRORLEVEL ==1 GOTO 5760x1080b
IF ERRORLEVEL ==2 GOTO 8320x1440b
IF ERRORLEVEL ==3 GOTO 11520x2160b

:32by9borderless
echo ----------------------------
echo Please select a resolution.
echo 1: 3840x1080
echo 2: 5120x1440
echo 3: 7680x2160
echo ----------------------------
CHOICE /N C:123 /M "Pick a resolution:"

IF ERRORLEVEL ==1 GOTO 3840x1080b
IF ERRORLEVEL ==2 GOTO 5120x1440b
IF ERRORLEVEL ==3 GOTO 7680x2160b

:21by9borderless
echo ----------------------------
echo Please select a resolution.
echo 1: 2560x1080
echo 2: 3440x1440
echo 3: 5120x2160
echo ----------------------------
CHOICE /N C:123 /M "Pick a resolution:"

IF ERRORLEVEL ==1 GOTO 2560x1080b
IF ERRORLEVEL ==2 GOTO 3440x1440b
IF ERRORLEVEL ==3 GOTO 5120x2160b

:16by9borderless
echo ----------------------------
echo Please select a resolution.
echo 1: 1920x1080
echo 2: 2560x1440
echo 3: 3840x2160
echo 3: 7680x4320
echo ----------------------------
CHOICE /N C:1234 /M "Pick a resolution:"

IF ERRORLEVEL ==1 GOTO 1920x1080b
IF ERRORLEVEL ==2 GOTO 2560x1440b
IF ERRORLEVEL ==3 GOTO 3840x2160b
IF ERRORLEVEL ==4 GOTO 7680x4320b

:Fullscreen
echo ----------------------------
echo Please select an aspect ratio.
echo 1: Widescreen (Standard 16:9)
echo 2: Ultrawide (21:9)
echo 3: Double 16:9 (32:9)
echo 4: Triple 16:9 (48:9)
echo ----------------------------
CHOICE /N C:1234 /M "Pick an aspect ratio:"

IF ERRORLEVEL ==4 GOTO 48by9fullscreen
IF ERRORLEVEL ==3 GOTO 32by9fullscreen
IF ERRORLEVEL ==2 GOTO 21by9fullscreen
IF ERRORLEVEL ==1 GOTO 16by9fullscreen

:48by9fullscreen
echo ----------------------------
echo Please select a resolution.
echo 1: 5760x1080
echo 2: 8320x1440
echo 3: 11520x2160 (Experimental)
echo ----------------------------
CHOICE /N C:123 /M "Pick a resolution:"

IF ERRORLEVEL ==1 GOTO 5760x1080f
IF ERRORLEVEL ==2 GOTO 8320x1440f
IF ERRORLEVEL ==3 GOTO 11520x2160f

:32by9fullscreen
echo ----------------------------
echo Please select a resolution.
echo 1: 3840x1080
echo 2: 5120x1440
echo 3: 7680x2160
echo ----------------------------
CHOICE /N C:123 /M "Pick a resolution:"

IF ERRORLEVEL ==1 GOTO 3840x1080f
IF ERRORLEVEL ==2 GOTO 5120x1440f
IF ERRORLEVEL ==3 GOTO 7680x2160f

:21by9fullscreen
echo ----------------------------
echo Please select a resolution.
echo 1: 2560x1080
echo 2: 3440x1440
echo 3: 5120x2160
echo ----------------------------
CHOICE /N C:123 /M "Pick a resolution:"

IF ERRORLEVEL ==1 GOTO 2560x1080f
IF ERRORLEVEL ==2 GOTO 3440x1440f
IF ERRORLEVEL ==3 GOTO 5120x2160f

:16by9fullscreen
echo ----------------------------
echo Please select a resolution.
echo 1: 1920x1080
echo 2: 2560x1440
echo 3: 3840x2160
echo 3: 7680x4320
echo ----------------------------
CHOICE /N C:1234 /M "Pick a resolution:"

IF ERRORLEVEL ==1 GOTO 1920x1080f
IF ERRORLEVEL ==2 GOTO 2560x1440f
IF ERRORLEVEL ==3 GOTO 3840x2160f
IF ERRORLEVEL ==4 GOTO 7680x4320f

:Windowed
echo ----------------------------
echo Please select an aspect ratio.
echo 1: Widescreen (Standard 16:9)
echo 2: Ultrawide (21:9)
echo 3: Double 16:9 (32:9)
echo 4: Triple 16:9 (48:9)
echo ----------------------------
CHOICE /N C:1234 /M "Pick an aspect ratio:"

IF ERRORLEVEL ==4 GOTO 48by9windowed
IF ERRORLEVEL ==3 GOTO 32by9windowed
IF ERRORLEVEL ==2 GOTO 21by9windowed
IF ERRORLEVEL ==1 GOTO 16by9windowed

:48by9windowed
echo ----------------------------
echo Please select a resolution.
echo 1: 5760x1080
echo 2: 8320x1440
echo 3: 11520x2160 (Experimental)
echo ----------------------------
CHOICE /N C:123 /M "Pick a resolution:"

IF ERRORLEVEL ==1 GOTO 5760x1080w
IF ERRORLEVEL ==2 GOTO 8320x1440w
IF ERRORLEVEL ==3 GOTO 11520x2160w

:32by9windowed
echo ----------------------------
echo Please select a resolution.
echo 1: 3840x1080
echo 2: 5120x1440
echo 3: 7680x2160
echo ----------------------------
CHOICE /N C:123 /M "Pick a resolution:"

IF ERRORLEVEL ==1 GOTO 3840x1080w
IF ERRORLEVEL ==2 GOTO 5120x1440w
IF ERRORLEVEL ==3 GOTO 7680x2160w

:21by9windowed
echo ----------------------------
echo Please select a resolution.
echo 1: 2560x1080
echo 2: 3440x1440
echo 3: 5120x2160
echo ----------------------------
CHOICE /N C:123 /M "Pick a resolution:"

IF ERRORLEVEL ==1 GOTO 2560x1080w
IF ERRORLEVEL ==2 GOTO 3440x1440w
IF ERRORLEVEL ==3 GOTO 5120x2160w

:16by9windowed
echo ----------------------------
echo Please select a resolution.
echo 1: 1920x1080
echo 2: 2560x1440
echo 3: 3840x2160
echo 3: 7680x4320
echo ----------------------------
CHOICE /N C:1234 /M "Pick a resolution:"

IF ERRORLEVEL ==1 GOTO 1920x1080w
IF ERRORLEVEL ==2 GOTO 2560x1440w
IF ERRORLEVEL ==3 GOTO 3840x2160w
IF ERRORLEVEL ==4 GOTO 7680x4320w

: Resolution Logic

:1920x1080w
cd Saves\Windowed\Widescreen
rename "NirvanaConfig_1920x1080.sav" "NirvanaConfig.sav"
copy NirvanaConfig.sav %localappdata%\Nirvana\Saved\SaveGames
rename "NirvanaConfig.sav" "NirvanaConfig_1920x1080.sav" 
echo ----------------------------
echo Save Transfer Complete!
goto end

:end
pause