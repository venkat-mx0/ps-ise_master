@ECHO OFF 
:: Q-Operations sequential batch file.

TITLE QOperations XML - CommCell

ECHO Parsing Host List input for XML File:
:: Section 1
ECHO ===========================
ECHO QOperations - Modify Owners
ECHO ===========================

copy c:\temp\bundle\sc0\modify_owners_list.xml %CV_Instance001%\
cd %CV_Instance001%
qoperation execute -af modify_owners_list.xml