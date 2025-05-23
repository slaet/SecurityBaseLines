#detectionScriptContent

# Network\Lanman Server // Mandate the maximum version of SMB // nabled: SMB 3.1.1
#if(-NOT (Test-Path -LiteralPath "HKLM\Software\Policies\Microsoft\Windows\LanmanServer")){ exit 1 };
     #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'MaxSmb2Dialect' -ea SilentlyContinue) -eq 0x00000311) {  } else { exit 1 };
# Network\Lanman Server // Mandate the maximum version of SMB // nabled: SMB 3.0.0
    #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'MinSmb2Dialect' -ea SilentlyContinue) -eq 0x00000300) {  } else { exit 1 };
# Network\Lanman Server // Set authentication rate limiter delay (milliseconds)	Enabled: 2000
    #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'InvalidAuthenticationDelayTimeInMs' -ea SilentlyContinue) -eq 2000) {  } else { exit 1 };
# Network\Lanman Servern // Audit insecure guest logon	Enabled
    #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'AuditInsecureGuestLogon' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
# Network\Lanman Server // Audit server does not support encryption	Enabled	
    #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'AuditServerDoesNotSupportEncryption' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
# Network\Lanman Server // Audit server does not support signing	Enabled
    #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'AuditServerDoesNotSupportSigning' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };

# Network\Lanman Workstation // Mandate the maximum version of SMB // nabled: SMB 3.1.1
#if(-NOT (Test-Path -LiteralPath "HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation")){ exit 1 };
     #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'MaxSmb2Dialect' -ea SilentlyContinue) -eq 0x00000311) {  } else { exit 1 };
# Network\Lanman Workstation // Mandate the maximum version of SMB // nabled: SMB 3.0.0
    #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'MinSmb2Dialect' -ea SilentlyContinue) -eq 0x00000300) {  } else { exit 1 };
# Network\Lanman Workstation // Audit insecure guest logon	Enabled
    #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'AuditInsecureGuestLogon' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
# Network\Lanman Workstation // Audit server does not support encryption	Enabled	
    #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'AuditServerDoesNotSupportEncryption' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
# Network\Lanman Workstation // Audit server does not support signing	Enabled
    #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'AuditServerDoesNotSupportSigning' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
# Network\Lanman Workstation // Enable remote mailslots	Disabled	
    #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\NetworkProvider' -Name 'EnableMailslots' -ea SilentlyContinue) -eq 0) {  } else { exit 1 };
# Network\Lanman Workstation // Require Encryption	Disabled	
    #if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'RequireEncryption' -ea SilentlyContinue) -eq 0) {  } else { exit 1 };

#System	Configure the behavior of the sudo command // Enabled: Disabled	
# if(-NOT (Test-Path -LiteralPath "HKLM\Software\Policies\Microsoft\Windows")){ exit 1 };
#    if((Get-ItemPropertyValue -LiteralPath 'HKLM:\Software\Policies\Microsoft\Windows\Sudo' -Name 'Enabled' -ea SilentlyContinue) -eq 0) {  } else { exit 1 };

# Windows Components\BitLocker Drive Encryption // Disable new DMA devices when this computer is locked	Enabled
 if(-NOT (Test-Path -LiteralPath "HKLM\Software\Policies\Microsoft\FVE")){ exit 1 };
    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\FVE' -Name 'DisableExternalDMAUnderLock' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
# Windows Components\File Explorer // Do not apply the Mark of the Web tag to files copied from insecure sources	Disabled
if(-NOT (Test-Path -LiteralPath "HKLM\Software\Policies\Microsoft\Windows\Explorer")){ exit 1 };
    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\Explorer' -Name 'DisableMotWOnInsecurePathCopy' -ea SilentlyContinue) -eq 0) {  } else { exit 1 };
# Windows Components\Microsoft Defender Antivirus\Reporting // Configure whether to report Dynamic Signature dropped events	Enabled
if(-NOT (Test-Path -LiteralPath "HKLM\Software\Policies\Microsoft\Windows Defender\Reporting")){ exit 1 };
    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows Defender\Reporting' -Name 'EnableDynamicSignatureDroppedEventReporting' -ea SilentlyContinue) -eq 0) {  } else { exit 1 };

# System\KDC // Configure hash algorithms for certificate logon
#if(-NOT (Test-Path -LiteralPath "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters")){ exit 1 };
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITHashAlgorithmConfigurationEnabled' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITSHA1' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITSHA256' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITSHA384' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITSHA512' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };

# System\Kerberos // Configure hash algorithms for certificate logon
#if(-NOT (Test-Path -LiteralPath "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters")){ exit 1 };
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITHashAlgorithmConfigurationEnabled' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITSHA1' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITSHA256' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITSHA384' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITSHA512' -ea SilentlyContinue) -eq 1) {  } else { exit 1 };

exit 0




