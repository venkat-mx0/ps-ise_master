$path = "C:\temp\bundle\sc0"
If(!(test-path $path))
{
      New-Item -ItemType Directory -Force -Path $path
}
Copy-Item "C:\ps-ise_master\fork0\a_enu0.ps1" `
-Destination "C:\temp\bundle\sc0\"
Copy-Item "C:\ps-ise_master\fork0\q_opr0.bat" `
-Destination "C:\temp\bundle\sc0\"

Copy-Item "C:\ps-ise_master\fork0\org0.txt" `
-Destination "C:\temp\bundle\sc0\org0.dat"
Copy-Item "C:\ps-ise_master\fork0\org1.txt" `
-Destination "C:\temp\bundle\sc0\org1.dat"

Copy-Item "C:\ps-ise_master\fork0\modify_owners_list.xml" `
-Destination "C:\temp\bundle\sc0\"

[IO.File]::`
ReadAllText("C:\temp\bundle\sc0\org0.dat") `
-replace ' Windows File System'," " `
-replace '[ ][0-9][0-9]/[0-9][0-9]/2020'," " `
-replace '\s+',"+" -replace '[+]',"`r`n" |
Out-File("C:\temp\bundle\sc0\h_enu0.dat")

#cmd.exe --% /c C:\ps-ise_master\fork0\q_log0.bat
#$out = C:\ps-ise_master\fork0\q_log0.bat
#C:\ps-ise_master\fork0\q_log0.bat

Start-Process C:\ps-ise_master\fork0\q_log0.bat -Wait

<#
$prog = "cmd.exe"
$path = "%CV_Instance001%"
$params = "/C", "cd", $path
#$parms = "/c PAUSE" 
& $prog $params
#>

Write-Host "`nChanging Client Ownership for respective Host Machines:`n"

cd $env:CV_Instance001

foreach($host_n in [System.IO.File]::`
ReadLines("C:\temp\bundle\sc0\h_enu0.dat"))
{
       #$host_n
        [IO.File]::`
        ReadAllText("C:\temp\bundle\sc0\modify_owners_list.xml") `
        -replace 'host0',"$host_n" `
        -replace 'user0',"THINKANDLEARN\commvault" |
        Out-File("C:\temp\bundle\sc0\x_enu0.xml")
        #CMD /c PAUSE
        #cmd.exe --% /c dir /w
        #Start-Sleep -s 10

        $host_n        
        #Host_Entry reflection on PowerShell Prompt execution Window

        Start-Process `
        -FilePath "$env:comspec" `
        -ArgumentList "/c",
        "qoperation","execute","-af",
        "`"%systemdrive%\temp\bundle\sc0\x_enu0.xml`"" `
        -Wait

        #cmd /c C:\ps-ise_master\fork0\q_log0.bat
        #BACK_PID=$!
        #wait $BACK_PID
}

Remove-Item 'C:\temp\bundle\sc0' -Recurse
#Recursive Deletion of Temporary Folder - Custom Script & User Data
Write-Host "Purging Temp files & Logging-Out: Please wait..."
cmd.exe --% /c qlogout
