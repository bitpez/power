Write-Output "Task2"

# Variables
#$a = 12                         # System.Int32
#$a = "Word"                     # System.String
#$a = 12, "Word"                 # array of System.Int32, System.String
#$a = Get-ChildItem C:\Windows   # FileInfo and DirectoryInfo types
$Variable = Get-Date
# $location = Get-Location
#$list = "one","two","two","three","four","five"
#Write-Output $list[0]

Write-Output $Variable

# IO 1
# $concatString = "{0}.{1}.{2}." -f $str1,$str2,$str3
New-Item ("C:\Users\Desktop\Desktop\Test File" + ($Variable).DayOfYear + ".txt")
Set-Content ("C:\Users\Desktop\Desktop\Test File" + ($Variable).DayOfYear + ".txt") 'Hello'

# Advanced
Write-Output 1
Start-Sleep -m 5000
Write-Output 2

Write-Output "End"