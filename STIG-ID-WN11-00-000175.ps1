<#
.SYNOPSIS
    This PowerShell script disables the Secondary Logon service.

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
    PS C:\> .\STIG-ID-WN11-00-000175.ps1
#>

# Define the service name
$serviceName = "seclogon"

# Stop the service if it is currently running
Stop-Service -Name $serviceName -Force -ErrorAction SilentlyContinue

# Disable the service startup type
Set-Service -Name $serviceName -StartupType Disabled

# Output success message
Write-Host "Service '$serviceName' has been stopped and set to Disabled."
