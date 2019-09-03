@echo off
echo Write-Host "******************** Archiving user directory ***********************">fjaf3892ajofw3298a8.ps1
echo $USERNAME = Read-Host -Prompt "Enter user logon name (i.e. name on home folder): ">>fjaf3892ajofw3298a8.ps1
echo $FLAG = "0">>fjaf3892ajofw3298a8.ps1
echo if($FLAG -eq "0") {>>fjaf3892ajofw3298a8.ps1
echo    $PATH_TO_HOME = "C:\TEST">>fjaf3892ajofw3298a8.ps1
echo    Write-Output "">>fjaf3892ajofw3298a8.ps1
echo    Write-Output "Please check if the following are correct:">>fjaf3892ajofw3298a8.ps1
echo    Write-Output "">>fjaf3892ajofw3298a8.ps1
echo    Write-Output "USER LOGONID	:			 $USERNAME">>fjaf3892ajofw3298a8.ps1
echo    Write-Output "PATH TO HOME	:			 $PATH_TO_HOME\$USERNAME">>fjaf3892ajofw3298a8.ps1
echo    Write-Output "">>fjaf3892ajofw3298a8.ps1
echo    $FLAG = Read-Host -Prompt "Do you want to continue (Y/N)?" >>fjaf3892ajofw3298a8.ps1
echo    if($FlAG -eq "Y"){>>fjaf3892ajofw3298a8.ps1
echo    			Add-Type -assembly "system.io.compression.filesystem">>fjaf3892ajofw3298a8.ps1
echo 			$source = "$PATH_TO_HOME\$USERNAME"    >>fjaf3892ajofw3298a8.ps1
echo 			$destination = "$PATH_TO_HOME\$USERNAME.zip">>fjaf3892ajofw3298a8.ps1
echo 			if(Test-Path -Path $destination)>>fjaf3892ajofw3298a8.ps1
echo 			{>>fjaf3892ajofw3298a8.ps1
echo 				Write-Output "[*] Files exists. ">>fjaf3892ajofw3298a8.ps1
echo 				Write-Output "{*} Deleting old archive">>fjaf3892ajofw3298a8.ps1
echo 				Remove-item $destination>>fjaf3892ajofw3298a8.ps1
echo 				Write-Output "[*] Creating archive">>fjaf3892ajofw3298a8.ps1
echo 				[io.compression.zipfile]::CreateFromDirectory($Source, $destination)>>fjaf3892ajofw3298a8.ps1
echo 				Remove-item $Source>>fjaf3892ajofw3298a8.ps1
echo 			}>>fjaf3892ajofw3298a8.ps1
echo 			else>>fjaf3892ajofw3298a8.ps1
echo 			{>>fjaf3892ajofw3298a8.ps1
echo 				Write-Output "[*]Files does not exists. Creating archive">>fjaf3892ajofw3298a8.ps1
echo 				[io.compression.zipfile]::CreateFromDirectory($Source, $destination)>>fjaf3892ajofw3298a8.ps1
echo 			}>>fjaf3892ajofw3298a8.ps1
echo 	}else{>>fjaf3892ajofw3298a8.ps1
echo     	Write-Host "Quitting ...">>fjaf3892ajofw3298a8.ps1
echo     	break>>fjaf3892ajofw3298a8.ps1
echo 	}>>fjaf3892ajofw3298a8.ps1
echo }>>fjaf3892ajofw3298a8.ps1
powershell.exe -ExecutionPolicy Bypass -File "fjaf3892ajofw3298a8.ps1"
del fjaf3892ajofw3298a8.ps1
