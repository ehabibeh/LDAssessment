## Elias Habibeh
## LoanDepot - PowerShell Assessment
## 11/5/2021

## Function that returns the first repeated letter in "Hello World"

function foo($bar) {
    $chars = @()
    foreach ($char in $bar.toCharArray()) {       
        if ($chars -contains $char) {
            "$char".ToUpper()
            return
        }
        $chars += $char
    }
    "No duplicate characters found."
}

foo "Hello World"
pause
