# Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
Write-Output "Hello"
Write-Host "Demo of write host cmdlet" -ForegroundColor Green
$test= Get-Process
Write-Host "Printing a variable" -ForegroundColor Green
Write-Output $test
Write-Host "Passing output to another cmdlet through pipeline" -ForegroundColor Green
Write-Output "sample output" | Get-Member
Write-Host "Example of enumerate and no enumerate" -ForegroundColor Green
Write-Output 10,20,30 | Measure-Object
Write-Output 10,20,30 -NoEnumerate | Measure-Object