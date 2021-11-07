## Elias Habibeh
## LoanDepot - PowerShell Assessment
## 11/5/2021

## Cmdlet that returns the first repeated letter in a given string

Param (
	[switch]$gui
)

$text = [string]$args[0]
$help = @("help","/?","")

If ($help -match $text -and $gui.IsPresent)
{
    Add-Type -AssemblyName Microsoft.VisualBasic
	[void][Microsoft.VisualBasic.Interaction]::MsgBox("Get-DuplicateChar [-GUI] <'text'>

-GUI
	[switch] Request results in GUI MsgBox.

<'text'>
	[string] String to be searched for duplicate characters. This must be in quotes. 

EXAMPLES
	Get-DuplicateChar ""Hello World""
	Get-DuplicateChar -gui ""Hello World""", "OkOnly", "Help")
	exit
}
elseif ($help -match $text) {
	Write-Host "Get-DuplicateChar [-GUI] <'text'>

-GUI
	[switch] Request results in GUI MsgBox.

<'text'>
	[string] String to be searched for duplicate characters. This must be in quotes. 

EXAMPLES
	Get-DuplicateChar ""Hello World""
	Get-DuplicateChar -gui ""Hello World"""
	exit
}

function Get-DuplicateChars() {
    $chars = @()
    foreach ($char in $text.ToLower().toCharArray()) {       
        if ($chars -contains $char) {
            [string]$global:result = $char
            return
        }
        $chars += $char
    }
    if ($gui.IsPresent) {
        [void][Microsoft.VisualBasic.Interaction]::MsgBox("No duplicate characters found.", "OkOnly", "Information")
        exit
    }
    else {
        "No duplicate characters found."
        exit
    }
}

Get-DuplicateChars

If ($gui.IsPresent) {
    Add-Type -AssemblyName Microsoft.VisualBasic
    $result.ToUpper()
    [void][Microsoft.VisualBasic.Interaction]::MsgBox("$result".ToUpper(), "OkOnly", "The repeated character is...")
    Clear-Variable result
}
else {
    $result.ToUpper()
    Clear-Variable result
}