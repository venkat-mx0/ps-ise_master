# qop-automate

Power Shell Script &amp; batch program to automate 'qoperation' &amp; 'qlogin' respectively for Removing Owners from all Clients Using the Command Line Interface

(Auto assigns common administrative user to all host machines enumerated)

[
Copy/ clone the repsitory branch 'fork0' & extract the contents under %systemdrive%\ps-ise_master\fork0\

Enable Power Shell script execution from local path using the command -

 Set-ExecutionPolicy RemoteSigned 
 or 
 Set-ExecutionPolicy Unrestricted

execute .\a_enu0.ps1
]

(Note:
Pre-Configured User Profiles as Client Owners for Laptop Backup under ClientGroupForLaptop global parameter
with the value EnumUserProfile on client group level, has to be disabled prior to script execution.)

Author - Venkat
--------------
