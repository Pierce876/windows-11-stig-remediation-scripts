<#
.SYNOPSIS
    This PowerShell script enables PowerShell transcription.
.NOTES
    Author          : Pierce Pounall
    LinkedIn        : https://www.linkedin.com/in/pierce-pounall-0478aa22b/?isSelfProfile=false
    GitHub          : https://github.com/Pierce876
    Date Created    : 2026-05-04
    Last Modified   : 2026-05-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000327

.TESTED ON
    Date(s) Tested  : 5/4/2026
    Tested By       : Pierce Pounall
    Systems Tested  : Windows 11 Pro
    PowerShell Ver. : 

.USAGE
    Run PowerShell as Administrator.
    Example syntax:
    PS C:\> .\STIG-ID-WN11-CC-000327.ps1
#>

# Define the registry path and values
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription"
$enableValueName = "EnableTranscripting"
$enableValueData = 1
$outputValueName = "OutputDirectory"
$outputValueData = "C:\PowerShellTranscripts"

# Check if the registry path exists, if not create it
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

# Check if the transcript directory exists, if not create it
if (-not (Test-Path $outputValueData)) {
    New-Item -Path $outputValueData -ItemType Directory -Force | Out-Null
}

# Enable transcription and configure an output directory
New-ItemProperty -Path $registryPath -Name $enableValueName -Value $enableValueData -PropertyType DWord -Force | Out-Null
New-ItemProperty -Path $registryPath -Name $outputValueName -Value $outputValueData -PropertyType String -Force | Out-Null

# Output success message
Write-Host "Registry value '$enableValueName' set to '$enableValueData' at '$registryPath'."
Write-Host "Registry value '$outputValueName' set to '$outputValueData' at '$registryPath'."
