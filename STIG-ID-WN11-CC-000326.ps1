<#
.SYNOPSIS
    This PowerShell script enables PowerShell script block logging.

.NOTES
    Author          : Pierce Pounall
    LinkedIn        : https://www.linkedin.com/in/pierce-pounall-0478aa22b/?isSelfProfile=false
    GitHub          : https://github.com/Pierce876
    Date Created    : 2026-05-04
    Last Modified   : 2026-05-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-00-000175

.TESTED ON
    Date(s) Tested  : 5/4/2026
    Tested By       : Pierce Pounall
    Systems Tested  : Windows 11 Pro
    PowerShell Ver. : 

.USAGE
    Run PowerShell as Administrator.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-CC-000326.ps1
#>

# Define the registry path and value
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
$valueName = "EnableScriptBlockLogging"
$valueData = 1

# Check if the registry path exists, if not create it
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

# Set the EnableScriptBlockLogging value
New-ItemProperty -Path $registryPath -Name $valueName -Value $valueData -PropertyType DWord -Force | Out-Null

# Output success message
Write-Host "Registry value '$valueName' set to '$valueData' at '$registryPath'."
