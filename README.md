# Windows 11 STIG Remediation Scripts

This repository contains PowerShell remediation scripts for selected Windows 11 DISA STIG findings.

## Scripts Included

| STIG ID | Description | Script |
| WN11-AU-000500 | Application event log size must be 32768 KB or greater | STIG-ID-WN11-AU-000500.ps1 |
| WN11-AU-000510 | System event log size must be 32768 KB or greater | STIG-ID-WN11-AU-000510.ps1 |
| WN11-00-000175 | Secondary Logon service must be disabled | STIG-ID-WN11-00-000175.ps1 |
| WN11-CC-000010 | Lock screen slide shows must be disabled | STIG-ID-WN11-CC-000010.ps1 |
| WN11-CC-000038 | WDigest Authentication must be disabled | STIG-ID-WN11-CC-000038.ps1 |
| WN11-CC-000197 | Microsoft consumer experiences must be turned off | STIG-ID-WN11-CC-000197.ps1 |
| WN11-CC-000252 | Game Recording and Broadcasting must be disabled | STIG-ID-WN11-CC-000252.ps1 |
| WN11-CC-000326 | PowerShell script block logging must be enabled | STIG-ID-WN11-CC-000326.ps1 |
| WN11-CC-000327 | PowerShell transcription must be enabled | STIG-ID-WN11-CC-000327.ps1 |
| WN11-CC-000110 | Printing over HTTP must be prevented | STIG-ID-WN11-CC-000110.ps1 |

## Usage

Run PowerShell as Administrator.

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
cd .\Win11_STIG_Remediation_Scripts
.\STIG-ID-WN11-AU-000500.ps1
```

## Testing Workflow

1. Baseline Tenable scan showed the selected STIGs failed.
2. Manual remediation was applied.
3. VM was rescanned to confirm passing state.
4. Manual remediation was reverted.
5. PowerShell remediation script was executed.
6. VM was restarted.
7. Tenable rescan confirmed the STIG passed.

## Notes

These scripts are intended for lab and portfolio use. Review and test before applying in production.
Update the author, LinkedIn, GitHub, testing date, and system details before publishing.
