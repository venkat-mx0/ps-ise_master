@ECHO OFF 
:: Q-Login sequential batch file.

TITLE Qlogin Prompt - CommCell

:: Section 1
ECHO =========================
ECHO QLogin - CommCell Console
ECHO =========================

cd %CV_Instance001%

ECHO Logging into CommCell Console CMD session: Please wait...
qlogin -cs byjuscommserv01.thinkandlearn.local -u THINKANDLEARN\commvault

PAUSE