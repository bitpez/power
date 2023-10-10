# 1. Get-Command
The Get-Command cmdlet retrieves a list of all the PowerShell commands whose modules have been loaded. Windows contains many thousands of cmdlets, however, so employing the Get-Command cmdlet by itself is of limited usefulness.

A better use case for the Get-Command cmdlet is figuring out which cmdlet to use in each situation. If you need to start a process but aren't sure which cmdlet to use, you can type Get-Command Start-*. This produces a list of all the PowerShell cmdlets beginning with the word "Start." Similarly, entering Get-Command *-Process returns a list of all the PowerShell cmdlets containing the word "Process."

# 2. Get-Help
You can use the Get-Help cmdlet to display the syntax of any PowerShell cmdlet. To do so, just type Get-Help followed by the cmdlet whose syntax you want to view.

# 3. Get-Process
When used by itself, the Get-Process cmdlet displays a list of all processes running on the system. You can also use the Get-Process cmdlet to view a specific cmdlet by appending the process name to the Get-Process cmdlet. If you want to see the PowerShell process, you can type Get-Process PowerShell. Incidentally, you can use the Start-Process and Stop-Process cmdlets to start or stop the various processes on the list.

# 4. Get-Service
The Get-Service cmdlet works almost identically to the Get-Process cmdlet. Instead of entering the name of a process, however, you would enter the name of a system service that you want to view. Similarly, entering the Get-Service cmdlet by itself will cause Windows to display a full list of system services. Individual services can be stopped or started by using the Stop-Service and Start-Service cmdlets.

# 5. ConvertTo-Html
The ConvertTo-Html cmdlet is used to create an HTML file from PowerShell output. To use this command, you need to pipe data to the ConvertTo-Html cmdlet and append the Out-File cmdlet along with the name of the file you want to create. If, for example, you want to create an HTML file named C:\Temp\Services.htm that contains a list of system services, you would enter the following.

Get-Service | ConvertTo-Html | Put-File C:\Services.htm.

# 6. Get-ChildItem
The Get-ChildItem cmdlet is generally used to retrieve a list of the current file system folder's contents. By appending a path, you can retrieve the contents of a specific folder. If you want to see the contents of the C:\Temp folder, for example, you can enter Get-ChildItem -Path C:\Temp. The Get-ChildItem cmdlet can also be used to display the contents of the Windows registry. To do so, you'll need to enter a registry path instead of a file system path. If you want to see the contents of HKEY_LOCAL_MACHINE\HARDWARE, you would enter the following.

Get-ChildItem -Path HKLM:\HARDWARE

# 7. Copy-Item
The Copy-Item cmdlet copies one or more files to a specific location. To use this command, you need to provide the source path, file name and destination path. If you want to copy file Data.txt from C:\Folder1 to C:\Folder2, you would use the following command.

Copy-Item "C:\Folder1\Data.txt" -Destination "C:\Folder2"

# 8. Set-ExecutionPolicy
free PowerShell cmdlets cheat sheetClick on the above image
to download our free
PowerShell cmdlets cheat
sheet.
PowerShell uses an execution policy to prevent unauthorized PowerShell scripts from running on a local computer. To see the execution policy currently in effect, you would type Get-ExecutionPolicy. You can then use the Set-ExecutionPolicy cmdlet to change the execution policy by appending the execution policy name to the Set-ExecutionPolicy cmdlet. The names of the execution policies are AllSigned, Bypass, Default, RemoteSigned, Restricted, Undefined and Unrestricted. If you wanted to set the execution policy to Unrestricted, you would type Set-ExecutionPolicy Unrestricted.

# 9. Get-History
The Get-History cmdlet retrieves a list of the commands that have been entered in the current session. Although this command can be used by itself, you can append the Count parameter to specify the number of commands to be displayed. If you want to see the five most recently entered commands, you would type Get-History -Count 5.

# 10. Get-Content
The Get-Content cmdlet displays a file's contents without having to open it in an application. For example, if you want to read file C:\Temp\ReadMe.txt, you can type Get-Content -Path C:\Temp\ReadMe.txt. This will display the file's contents within PowerShell instead of having to view the file with Notepad or another text editor.

The Get-Content cmdlet is also sometimes used as a tool to extract data from a file. There are numerous parameters that let you read specific portions of a file. The -Tail parameter reads the last line of the file, while the -TotalCount parameter reads a specific number of lines or a specific line number.

# 11. Out-File
The Out-File cmdlet is used to write PowerShell output to a file. At a minimum, you need to specify the path and file name for the file you want to create. If you want to create a file called C:\Temp\Services.txt that contains a list of system services, you would type the following.

Get-Service | Out-File -FilePath C:\Temp\Services.txt.

# 12. Invoke-Item
The Invoke-Item cmdlet is commonly used to open a file. Unlike the Get-Content cmdlet, which opens a file in PowerShell, the Invoke-Item cmdlet opens a file using the application associated with the file's extension. Using the Invoke-Item cmdlet with an HTM file usually causes the file to open in a web browser. Similarly, using Invoke-Item to open a DOCX file causes the file to open in Microsoft Word.

To use Invoke-Item, append the name of the file you want to open. If you want to open C:\Temp\Services.htm, you would type the following.

Invoke-Item C:\Temp\Services.htm