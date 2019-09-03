Write-Host "******************** Archiving user directory ***********************"

$USERNAME = Read-Host -Prompt "Enter user logon name (name on home folder): "
$FLAG = 0

if($FLAG -eq 0) {
   $PATH_TO_HOME = "C:\TEST"
   Write-Output ""
   Write-Output "Please check the following are correct:"
   Write-Output "USER LOGONID	:			 $USERNAME"
   Write-Output "PATH TO HOME	:			 $PATH_TO_HOME\$USERNAME"
   Write-Output ""
   $FLAG = Read-Host -Prompt "Do you want to continue (Y/N)?" 
   if($FlAG -eq "Y"){
   			Add-Type -assembly "system.io.compression.filesystem"
			$source = "$PATH_TO_HOME\$USERNAME"    
			$destination = "$PATH_TO_HOME\$USERNAME.zip"
			if(Test-Path -Path $destination)
			{
				Write-Output "[*] Files exists. "
				Write-Output "{*} Deleting old archive"
				Remove-item $destination
				Write-Output "[*] Creating archive"
				[io.compression.zipfile]::CreateFromDirectory($Source, $destination)

			}
			else
			{
				Write-Output "[*]Files does not exists. Creating archive"
				[io.compression.zipfile]::CreateFromDirectory($Source, $destination)

			}
	}else{
    	Write-Host "Quitting ..."
    	break
	}
}



