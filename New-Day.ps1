[CmdletBinding()]
param (
    [Parameter()]
    [int]
    $Day
)

$folder = "Day$Day"
if(Test-Path $PSScriptRoot\$folder){
    Write-Warning "This was already done. Returning."
    return
}

robocopy /mir $PSScriptRoot\dayx $PSScriptRoot\$folder
