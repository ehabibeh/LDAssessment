## Elias Habibeh
## LoanDepot - PowerShell Assessment
## 11/5/2021

## Function that returns the first repeated letter in a given string

Add-Type -AssemblyName Microsoft.VisualBasic

function foo() {
    $chars = @()
    foreach ($char in $bar.ToLower().toCharArray()) {       
        if ($chars -contains $char) {
            [Microsoft.VisualBasic.Interaction]::MsgBox("$char".ToUpper(), "OkOnly", "The repeated character is...")
            return
        }
        $chars += $char
    }
    [Microsoft.VisualBasic.Interaction]::MsgBox("No duplicate characters found.", "OkOnly", "Information")
}

$bar = [Microsoft.VisualBasic.Interaction]::InputBox("String:", "Input")
foo
