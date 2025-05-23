#remediationScriptContent

# Network\Lanman Server // Mandate the maximum version of SMB // nabled: SMB 3.1.1
#if((Test-Path -LiteralPath "HKLM\Software\Policies\Microsoft\Windows\LanmanServer") -ne $true) { 
   #     New-Item "HKLM\Software\Policies\Microsoft\Windows\LanmanServer" -force -ea SilentlyContinue};
   # if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'MaxSmb2Dialect' -ea SilentlyContinue) -eq 0x00000311) {  } else {
   #     New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'MaxSmb2Dialect' -Value 0x00000311 -PropertyType DWord -Force -ea SilentlyContinue};
# Network\Lanman Server // Mandate the maximum version of SMB // nabled: SMB 3.0.0
   # if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'MaxSmb2Dialect' -ea SilentlyContinue) -eq 0x00000300) {  } else { 
   #     New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'MinSmb2Dialect' -Value 0x00000300 -PropertyType DWord -Force -ea SilentlyContinue};
# Network\Lanman Server // Set authentication rate limiter delay (milliseconds)	Enabled: 2000
   # if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'InvalidAuthenticationDelayTimeInMs' -ea SilentlyContinue) -eq 2000) {  } else {
   #     New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'InvalidAuthenticationDelayTimeInMs' -Value 2000 -PropertyType DWord -Force -ea SilentlyContinue};
# Network\Lanman Server // Audit insecure guest logon	Enabled
   # if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'AuditInsecureGuestLogon' -ea SilentlyContinue) -eq 1) {  } else {
   #     New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'AuditInsecureGuestLogon' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
# Network\Lanman Server // Audit server does not support encryption	Enabled	
   # if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'AuditServerDoesNotSupportEncryption' -ea SilentlyContinue) -eq 1) {  } else {
   #     New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'AuditServerDoesNotSupportEncryption' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
# Network\Lanman Server // Audit server does not support signing	Enabled
   # if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'AuditServerDoesNotSupportSigning' -ea SilentlyContinue) -eq 1) {  } else {
   #     New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanServer' -Name 'AuditServerDoesNotSupportSigning' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};

# Network\Lanman Workstation // Mandate the maximum version of SMB // nabled: SMB 3.1.1
#if((Test-Path -LiteralPath "HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation") -ne $true) { 
#        New-Item "HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation" -force -ea SilentlyContinue};
#    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'MaxSmb2Dialect' -ea SilentlyContinue) -eq 0x00000311) {  } else {
#        New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'MaxSmb2Dialect' -Value 0x00000311 -PropertyType DWord -Force -ea SilentlyContinue};
# Network\Lanman Workstation // Mandate the maximum version of SMB // nabled: SMB 3.0.0
#    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'MaxSmb2Dialect' -ea SilentlyContinue) -eq 0x00000300) {  } else {
#        New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'MinSmb2Dialect' -Value 0x00000300 -PropertyType DWord -Force -ea SilentlyContinue};
# Network\Lanman Workstation // Audit insecure guest logon	Enabled
#    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'AuditInsecureGuestLogon' -ea SilentlyContinue) -eq 1) {  } else {
#        New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'AuditInsecureGuestLogon' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
# Network\Lanman Workstation // Audit server does not support encryption	Enabled	
#    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'AuditServerDoesNotSupportEncryption' -ea SilentlyContinue) -eq 1) {  } else {
#        New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'AuditServerDoesNotSupportEncryption' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
# Network\Lanman Workstation // Audit server does not support signing	Enabled
#    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'AuditServerDoesNotSupportSigning' -ea SilentlyContinue) -eq 1) {  } else {
#        New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'AuditServerDoesNotSupportSigning' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
# Network\Lanman Workstation // Enable remote mailslots	Disabled	
#    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\NetworkProvider' -Name 'EnableMailslots' -ea SilentlyContinue) -eq 0) {  } else {
#        New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'EnableMailslotsg' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue};
# Network\Lanman Workstation // Require Encryption	Disabled	
#    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'RequireEncryption' -ea SilentlyContinue) -eq 0) {  } else {
#        New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\LanmanWorkstation' -Name 'RequireEncryption' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue};

# System	Configure the behavior of the sudo command // Enabled: Disabled	
#if((Test-Path -LiteralPath "HKLM\Software\Policies\Microsoft\Windows") -ne $true) { 
#    New-Item "HKLM\Software\Policies\Microsoft\Windows" -force -ea SilentlyContinue};
#    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows' -Name 'Sudo' -ea SilentlyContinue) -eq 1) {  } else {
#    New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\sudo' -Name 'Enabled' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue};

# Windows Components\BitLocker Drive Encryption // Disable new DMA devices when this computer is locked	Enabled
if((Test-Path -LiteralPath "HKLM\Software\Policies\Microsoft\FVE") -ne $true) { 
    New-Item "HKLM\Software\Policies\Microsoft\FVE" -force -ea SilentlyContinue};
    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\FVE' -Name 'DisableExternalDMAUnderLock' -ea SilentlyContinue) -eq 1) {  } else {
        New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\FVE' -Name 'DisableExternalDMAUnderLock' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
# Windows Components\File Explorer // Do not apply the Mark of the Web tag to files copied from insecure sources	Disabled
if((Test-Path -LiteralPath "HKLM\Software\Policies\Microsoft\Windows\Explorer") -ne $true) { 
    New-Item "HKLM\Software\Policies\Microsoft\Windows\Explorer" -force -ea SilentlyContinue};
    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\Explorer' -Name 'DisableMotWOnInsecurePathCopy' -ea SilentlyContinue) -eq 0) {  } else {
        New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows\Explorer' -Name 'DisableMotWOnInsecurePathCopy' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue};
# Windows Components\Microsoft Defender Antivirus\Reporting // Configure whether to report Dynamic Signature dropped events	Enabled
if((Test-Path -LiteralPath "HKLM\Software\Policies\Microsoft\Windows Defender\Reporting") -ne $true) { 
    New-Item "HKLM\Software\Policies\Microsoft\Windows Defender\Reporting" -force -ea SilentlyContinue};
    if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows Defender\Reporting' -Name 'EnableDynamicSignatureDroppedEventReporting' -ea SilentlyContinue) -eq 0) {  } else {
        New-ItemProperty -LiteralPath 'HKLM\Software\Policies\Microsoft\Windows Defender\Reporting' -Name 'nableDynamicSignatureDroppedEventReporting' -Value 0 -PropertyType DWord -Force -ea SilentlyContinue};

# System\KDC // Configure hash algorithms for certificate logon
#if((Test-Path -LiteralPath "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters") -ne $true) { 
 #       New-Item "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters" -force -ea SilentlyContinue};
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITHashAlgorithmConfigurationEnabled' -ea SilentlyContinue) -eq 1) {  } else {
 #       New-ItemProperty -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITHashAlgorithmConfigurationEnabled' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITSHA1' -ea SilentlyContinue) -eq 1) {  } else { 
 #       New-ItemProperty -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITSHA1' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITSHA256' -ea SilentlyContinue) -eq 1) {  } else {
 #       New-ItemProperty -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITSHA256' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITSHA384' -ea SilentlyContinue) -eq 1) {  } else {
 #       New-ItemProperty -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITSHA384' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITSHA512' -ea SilentlyContinue) -eq 1) {  } else {
 #       New-ItemProperty -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\KDC\Parameters' -Name 'PKINITSHA512' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};

# System\Kerberos // Configure hash algorithms for certificate logon
#if(-NOT (Test-Path -LiteralPath "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters")){
 #   New-Item "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters" -force -ea SilentlyContinue};
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITHashAlgorithmConfigurationEnabled' -ea SilentlyContinue) -eq 1) {  } else {
 #       New-ItemProperty -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITHashAlgorithmConfigurationEnabled' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITSHA1' -ea SilentlyContinue) -eq 1) {  } else {
 #       New-ItemProperty -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITSHA1' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITSHA256' -ea SilentlyContinue) -eq 1) {  } else {
 #       New-ItemProperty -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITSHA256' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITSHA384' -ea SilentlyContinue) -eq 1) {  } else {
 #       New-ItemProperty -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITSHA384' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};
 #   if((Get-ItemPropertyValue -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITSHA512' -ea SilentlyContinue) -eq 1) {  } else {
 #        New-ItemProperty -LiteralPath 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\Kerberos\Parameters' -Name 'PKINITSHA512' -Value 1 -PropertyType DWord -Force -ea SilentlyContinue};

exit 0
