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
        
        Start-Process `
        -FilePath "$env:comspec" `
        -ArgumentList "/c",
        "dir","`"%systemdrive%\program files`"" `
        -Wait

        #cmd /c C:\ps-ise_master\fork0\q_log0.bat
        #BACK_PID=$!
        #wait $BACK_PID
}
