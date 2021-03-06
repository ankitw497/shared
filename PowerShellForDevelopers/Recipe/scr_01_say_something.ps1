# Author:  Bryan Cafferky   2013-12-15
#
<#
    Comment Block - multiline comment.
    Purpose:  Use a function that calls SAPI to convert text to speech.
#>

$CodePath = "D:\DocumentsD\Presentations\PowerShellForDevelopers\"

#  Use the dot notation to get the function loaded into memory...
. D:\DocumentsD\Presentations\PowerShellForDevelopers\Invoke-udfSpeech.ps1
. ($CodePath + "Get-udfWinFileName.ps1")

# Say what I tell you...
[string] $speak = Read-Host "Enter what you want me to say" 
Invoke-udfSpeech $speak

# I'm too lazy to read so...
Set-Location $CodePath

$speak = dir
Invoke-udfSpeech $speak.substring(1, 100)  

"Four score and seven years ago our forefathers brought forth on this continent, 
a new nation, conceived in Liberty..."  > .\getty.txt

$speak = Get-Content .\getty.txt 
Invoke-udfSpeech $speak 

# Select a file to be read.. 
 $infile = Get-udfWinFileName -initialDirectory "C:\Users\BryanCafferky\Documents\BI_UG\PowerShell\Examples\Data\Text"
 $say_stuff = Get-Content $infile
 Invoke-udfSpeech $say_stuff
 






