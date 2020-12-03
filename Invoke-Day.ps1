[CmdletBinding()]
param (
    [Parameter()]
    [int]
    $Day
)

$folder = "Day$Day"
if (-not (Test-Path $PSScriptRoot\$folder)) {
    Write-Warning "That day doesn't exist... Returning."
    return
}
Push-Location $PSScriptRoot\$folder
ruby .\runday.rb
Pop-Location
