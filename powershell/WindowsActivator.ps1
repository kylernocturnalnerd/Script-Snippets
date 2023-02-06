###===========================================================================================
#
#   ██╗    ██╗██╗███╗   ██╗██████╗  ██████╗ ██╗    ██╗███████╗     █████╗  ██████╗████████╗██╗██╗   ██╗ █████╗ ████████╗ ██████╗ ██████╗ 
#   ██║    ██║██║████╗  ██║██╔══██╗██╔═══██╗██║    ██║██╔════╝    ██╔══██╗██╔════╝╚══██╔══╝██║██║   ██║██╔══██╗╚══██╔══╝██╔═══██╗██╔══██╗
#   ██║ █╗ ██║██║██╔██╗ ██║██║  ██║██║   ██║██║ █╗ ██║███████╗    ███████║██║        ██║   ██║██║   ██║███████║   ██║   ██║   ██║██████╔╝
#   ██║███╗██║██║██║╚██╗██║██║  ██║██║   ██║██║███╗██║╚════██║    ██╔══██║██║        ██║   ██║╚██╗ ██╔╝██╔══██║   ██║   ██║   ██║██╔══██╗
#   ╚███╔███╔╝██║██║ ╚████║██████╔╝╚██████╔╝╚███╔███╔╝███████║    ██║  ██║╚██████╗   ██║   ██║ ╚████╔╝ ██║  ██║   ██║   ╚██████╔╝██║  ██║
#    ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚══════╝    ╚═╝  ╚═╝ ╚═════╝   ╚═╝   ╚═╝  ╚═══╝  ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝
#
###===========================================================================================
#                               !!!!!!!!! Disclaimer !!!!!!!!!                                
#                           This is not a KMS for pirating windows                            
#                                    Do NOT pirate windows                                    
#                      Use this to easily configure KMS to a real server                      
###===========================================================================================
#=============================================================================================
#            https://docs.microsoft.com/en-us/windows-server/get-started/kmsclientkeys
#=============================================================================================
#              !!! Not all the switch statements have been confirmed to work !!!              
#        I just gathered a list from the link above and prepended "Microsoft" to them         
#=============================================================================================
# SCRIPT
#=============================================================================================

# Edit this variable to declare a hard coded KMS Server, if it changes then ignore, you'll be prompted to enter one.
# $kmsserv=
# Put some text here to demo script without trying activation
# $demo=

$version=(Get-WmiObject Win32_OperatingSystem).Caption

switch ( $version )
{ 
    "Microsoft Windows Server 2022 Standard"                         { $prodkey = "VDYBN-27WPP-V4HQT-9VMD4-VMK7H" }
    "Microsoft Windows Server 2022 Datacenter"                       { $prodkey = "WX4NM-KYWYW-QJJR4-XV3QB-6VM33" }
    "Microsoft Windows Server 2019 Standard"                         { $prodkey = "N69G4-B89J2-4G8F4-WWYCC-J464C" }
    "Microsoft Windows Server 2019 Datacenter"                       { $prodkey = "WMDGN-G9PQG-XVVXX-R3X43-63DFG" }
    "Microsoft Windows Server 2019 Essentials"                       { $prodkey = "WVDHN-86M7X-466P6-VHXV7-YY726" }
    "Microsoft Windows Server 2016 Datacenter"                       { $prodkey = "CB7KF-BWN84-R7R2Y-793K2-8XDDG" }
    "Microsoft Windows Server 2016 Standard"                         { $prodkey = "WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY" }
    "Microsoft Windows Server 2016 Essentials"                       { $prodkey = "JCKRF-N37P4-C2D82-9YXRT-4M63B" }
    "Microsoft Windows 11 Pro"                                       { $prodkey = "W269N-WFGWX-YVC9B-4J6C9-T83GX" }
    "Microsoft Windows 11 Pro N"                                     { $prodkey = "MH37W-N47XK-V7XM9-C7227-GCQG9" }
    "Microsoft Windows 11 Pro for Workstations"                      { $prodkey = "NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J" }
    "Microsoft Windows 11 Pro for Workstations N"                    { $prodkey = "9FNHH-K3HBT-3W4TD-6383H-6XYWF" }
    "Microsoft Windows 11 Pro Education"                             { $prodkey = "6TP4R-GNPTD-KYYHQ-7B7DP-J447Y" }
    "Microsoft Windows 11 Pro Education N"                           { $prodkey = "YVWGF-BXNMC-HTQYQ-CPQ99-66QFC" }
    "Microsoft Windows 11 Education"                                 { $prodkey = "NW6C2-QMPVW-D7KKK-3GKT6-VCFB2" }
    "Microsoft Windows 11 Education N"                               { $prodkey = "2WH4N-8QGBV-H22JP-CT43Q-MDWWJ" }
    "Microsoft Windows 11 Enterprise"                                { $prodkey = "NPPR9-FWDCX-D2C8J-H872K-2YT43" }
    "Microsoft Windows 11 Enterprise N"                              { $prodkey = "DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4" }
    "Microsoft Windows 11 Enterprise G"                              { $prodkey = "YYVX9-NTFWV-6MDM3-9PT4T-4M68B" }
    "Microsoft Windows 11 Enterprise G N"                            { $prodkey = "44RPN-FTY23-9VTTB-MP9BX-T84FV" }
    "Microsoft Windows 10 Pro"                                       { $prodkey = "W269N-WFGWX-YVC9B-4J6C9-T83GX" }
    "Microsoft Windows 10 Pro N"                                     { $prodkey = "MH37W-N47XK-V7XM9-C7227-GCQG9" }
    "Microsoft Windows 10 Pro for Workstations"                      { $prodkey = "NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J" }
    "Microsoft Windows 10 Pro for Workstations N"                    { $prodkey = "9FNHH-K3HBT-3W4TD-6383H-6XYWF" }
    "Microsoft Windows 10 Pro Education"                             { $prodkey = "6TP4R-GNPTD-KYYHQ-7B7DP-J447Y" }
    "Microsoft Windows 10 Pro Education N"                           { $prodkey = "YVWGF-BXNMC-HTQYQ-CPQ99-66QFC" }
    "Microsoft Windows 10 Education"                                 { $prodkey = "NW6C2-QMPVW-D7KKK-3GKT6-VCFB2" }
    "Microsoft Windows 10 Education N"                               { $prodkey = "2WH4N-8QGBV-H22JP-CT43Q-MDWWJ" }
    "Microsoft Windows 10 Enterprise"                                { $prodkey = "NPPR9-FWDCX-D2C8J-H872K-2YT43" }
    "Microsoft Windows 10 Enterprise N"                              { $prodkey = "DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4" }
    "Microsoft Windows 10 Enterprise G"                              { $prodkey = "YYVX9-NTFWV-6MDM3-9PT4T-4M68B" }
    "Microsoft Windows 10 Enterprise G N"                            { $prodkey = "44RPN-FTY23-9VTTB-MP9BX-T84FV" }
    "Microsoft Windows 10 Enterprise LTSC 2019"                      { $prodkey = "M7XTQ-FN8P6-TTKYV-9D4CC-J462D" }
    "Microsoft Windows 10 Enterprise N LTSC 2019"                    { $prodkey = "92NFX-8DJQP-P6BBQ-THF9C-7CG2H" }
    "Microsoft Windows 10 Enterprise LTSB 2016"                      { $prodkey = "DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ" }
    "Microsoft Windows 10 Enterprise N LTSB 2016"                    { $prodkey = "QFFDN-GRT3P-VKWWX-X7T3R-8B639" }
    "Microsoft Windows 10 Enterprise 2015 LTSB"                      { $prodkey = "WNMTR-4C88C-JK8YV-HQ7T2-76DF9" }
    "Microsoft Windows 10 Enterprise 2015 LTSB N"                    { $prodkey = "2F77B-TNFGY-69QQF-B8YKP-D69TJ" }
    "Microsoft Windows Server Datacenter version 1803"               { $prodkey = "2HXDN-KRXHB-GPYC7-YCKFJ-7FVDG" }
    "Microsoft Windows Server Standard version 1803"                 { $prodkey = "PTXN8-JFHJM-4WC78-MPCBR-9W4KR" }
    "Microsoft Windows Server Datacenter version 1709"               { $prodkey = "6Y6KB-N82V8-D8CQV-23MJW-BWTG6" }
    "Microsoft Windows Server Standard version 1709"                 { $prodkey = "DPCNP-XQFKJ-BJF7R-FRC8D-GF6G4" }
    "Microsoft Windows Server 2012 R2 Server Standard"               { $prodkey = "D2N9P-3P6X9-2R39C-7RTCD-MDVJX" }
    "Microsoft Windows Server 2012 R2 Datacenter"                    { $prodkey = "W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9" }
    "Microsoft Windows Server 2012 R2 Essentials"                    { $prodkey = "KNC87-3J2TX-XB4WP-VCPJV-M4FWM" }
    "Microsoft Windows Server 2012"                                  { $prodkey = "BN3D2-R7TKB-3YPBD-8DRP2-27GG4" }
    "Microsoft Windows Server 2012 N"                                { $prodkey = "8N2M2-HWPGY-7PGT9-HGDD8-GVGGY" }
    "Microsoft Windows Server 2012 Single Language"                  { $prodkey = "2WN2H-YGCQR-KFX6K-CD6TF-84YXQ" }
    "Microsoft Windows Server 2012 Country Specific"                 { $prodkey = "4K36P-JN4VD-GDC6V-KDT89-DYFKP" }
    "Microsoft Windows Server 2012 Server Standard"                  { $prodkey = "XC9B7-NBPP2-83J2H-RHMBY-92BT4" }
    "Microsoft Windows Server 2012 MultiPoint Standard"              { $prodkey = "HM7DN-YVMH3-46JC3-XYTG7-CYQJJ" }
    "Microsoft Windows Server 2012 MultiPoint Premium"               { $prodkey = "XNH6W-2V9GX-RGJ4K-Y8X6F-QGJ2G" }
    "Microsoft Windows Server 2012 Datacenter"                       { $prodkey = "48HP8-DN98B-MYWDG-T2DCC-8W83P" }
    "Microsoft Windows Server 2008 R2 Web"                           { $prodkey = "6TPJF-RBVHG-WBW2R-86QPH-6RTM4" }
    "Microsoft Windows Server 2008 R2 HPC edition"                   { $prodkey = "TT8MH-CG224-D3D7Q-498W2-9QCTX" }
    "Microsoft Windows Server 2008 R2 Standard"                      { $prodkey = "YC6KT-GKW9T-YTKYR-T4X34-R7VHC" }
    "Microsoft Windows Server 2008 R2 Enterprise"                    { $prodkey = "489J6-VHDMP-X63PK-3K798-CPX3Y" }
    "Microsoft Windows Server 2008 R2 Datacenter"                    { $prodkey = "74YFP-3QFB3-KQT8W-PMXWJ-7M648" }
    "Microsoft Windows Server 2008 R2 for Itanium-based Systems"     { $prodkey = "GT63C-RJFQ3-4GMB6-BRFB9-CB83V" }
    "Microsoft Windows Web Server 2008"                              { $prodkey = "WYR28-R7TFJ-3X2YQ-YCY4H-M249D" }
    "Microsoft Windows Server 2008 Standard"                         { $prodkey = "TM24T-X9RMF-VWXK6-X8JC9-BFGM2" }
    "Microsoft Windows Server 2008 Standard no hv"                   { $prodkey = "W7VD6-7JFBR-RX26B-YKQ3Y-6FFFJ" }
    "Microsoft Windows Server 2008 Enterprise"                       { $prodkey = "YQGMW-MPWTJ-34KDK-48M3W-X4Q6V" }
    "Microsoft Windows Server 2008 Enterprise no hv"                 { $prodkey = "39BXF-X8Q23-P2WWT-38T2F-G3FPG" }
    "Microsoft Windows Server 2008 HPC"                              { $prodkey = "RCTX3-KWVHP-BR6TB-RB6DM-6X7HP" }
    "Microsoft Windows Server 2008 Datacenter"                       { $prodkey = "7M67G-PC374-GR742-YH8V4-TCBY3" }
    "Microsoft Windows Server 2008 Datacenter no hv"                 { $prodkey = "22XQ2-VRXRG-P8D42-K34TD-G3QQC" }
    "Microsoft Windows Server 2008 for Itanium-Based Systems"        { $prodkey = "4DWFP-JF3DJ-B7DTH-78FJB-PDRHK" }
    "Microsoft Windows 8.1 Pro"                                      { $prodkey = "GCRJD-8NW9H-F2CDX-CCM8D-9D6T9" }
    "Microsoft Windows 8.1 Pro N"                                    { $prodkey = "HMCNV-VVBFX-7HMBH-CTY9B-B4FXY" }
    "Microsoft Windows 8.1 Enterprise"                               { $prodkey = "MHF9N-XY6XB-WVXMC-BTDCT-MKKG7" }
    "Microsoft Windows 8.1 Enterprise N"                             { $prodkey = "TT4HM-HN7YT-62K67-RGRQJ-JFFXW" }
    "Microsoft Windows 8 Pro"                                        { $prodkey = "NG4HW-VH26C-733KW-K6F98-J8CK4" }
    "Microsoft Windows 8 Pro N"                                      { $prodkey = "XCVCF-2NXM9-723PB-MHCB7-2RYQQ" }
    "Microsoft Windows 8 Enterprise"                                 { $prodkey = "32JNW-9KQ84-P47T8-D8GGY-CWCK7" }
    "Microsoft Windows 8 Enterprise N"                               { $prodkey = "JMNMF-RHW7P-DMY6X-RF3DR-X2BQT" }
    "Microsoft Windows 7 Professional"                               { $prodkey = "FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4" }
    "Microsoft Windows 7 Professional N"                             { $prodkey = "MRPKT-YTG23-K7D7T-X2JMM-QY7MG" }
    "Microsoft Windows 7 Professional E"                             { $prodkey = "W82YF-2Q76Y-63HXB-FGJG9-GF7QX" }
    "Microsoft Windows 7 Enterprise"                                 { $prodkey = "33PXH-7Y6KF-2VJC9-XBBR8-HVTHH" }
    "Microsoft Windows 7 Enterprise N"                               { $prodkey = "YDRBP-3D83W-TY26F-D46B2-XCKRJ" }
    "Microsoft Windows 7 Enterprise E"                               { $prodkey = "C29WB-22CC8-VJ326-GHFJW-H9DH4" }
}

if ($kmsserv -eq $null){
    $kmsserv=Read-Host -prompt "Enter KMS server here (1.1.1.1:1688)"
}

if ($demo -eq $null){
C:\windows\system32\cscript.exe C:\windows\system32\slmgr.vbs /ipk $prodkey
C:\windows\system32\cscript.exe C:\windows\system32\slmgr.vbs -skms $kmsserv
C:\windows\system32\cscript.exe C:\windows\system32\slmgr.vbs -ato
}
else{
write-host "KMS: " $kmsserv
write-host "Version: " $version
write-host "Productkey: " $prodkey
}

#=============================================================================================
# INFO
#=============================================================================================
# change windows edition:
## DISM examples
### dism /online /get-TargetEditions
### dism /online /Set-Edition:EDITION-NEEDED /ProductKey:KMSCLIENTKEY /AcceptEula
### dism /online /Set-Edition: /ProductKey: /AcceptEula

# Activation scripts
##c:\windows\system32\cscript.exe slmgr.vbs /ipk PRODKEY-HERE
##c:\windows\system32\cscript.exe slmgr.vbs -skms KMSSERVER-HERE
##c:\windows\system32\cscript.exe slmgr.vbs -ato

# Office generic keys
##########################
##########################
# Office Professional Plus 2019                                 NMMKJ-6RK4F-KMJVX-8D9MJ-6MWKP
# Office Standard 2019                                          6NWWJ-YQWMR-QKGCB-6TMB3-9D9HK
# Project Professional 2019                                     B4NPR-3FKK7-T2MBV-FRQ4W-PKD2B
# Project Standard 2019                                         C4F7P-NCP8C-6CQPT-MQHV9-JXD2M
# Visio Professional 2019                                       9BGNQ-K37YR-RQHF2-38RQ3-7VCBB
# Visio Standard 2019                                           7TQNQ-K3YQQ-3PFH7-CCPPM-X4VQ2
# Access 2019                                                   9N9PT-27V4Y-VJ2PD-YXFMF-YTFQT
# Excel 2019                                                    TMJWT-YYNMB-3BKTF-644FC-RVXBD
# Outlook 2019                                                  7HD7K-N4PVK-BHBCQ-YWQRW-XW4VK
# PowerPoint 2019                                               RRNCX-C64HY-W2MM7-MCH9G-TJHMQ
# Publisher 2019                                                G2KWX-3NW6P-PY93R-JXK2T-C9Y9V
# Skype for Business 2019                                       NCJ33-JHBBY-HTK98-MYCV8-HMKHJ
# Word 2019                                                     PBX3G-NWMT6-Q7XBW-PYJGG-WXD33
# MS Office Standard edition                                    JNRGM-WHDWX-FJJG3-K47QV-DRTFM
# MS Office Professional Plus 2016                              XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99
# Project Professional 2016                                     YG9NW-3K39V-2T3HJ-93F3Q-G83KT
# Project Standard 2016                                         GNFHQ-F6YQM-KQDGJ-327XX-KQBVC
# Visio Professional 2016                                       PD3PC-RHNGV-FXJ29-8JK7D-RJRJK
# Visio Standard 2016                                           7WHWN-4T7MP-G96JF-G33KR-W8GF4
# Access 2016                                                   GNH9Y-D2J4T-FJHGG-QRVH7-QPFDW
# MS Excel 2016                                                 9C2PK-NWTVB-JMPW8-BFT28-7FTBF
# MS OneNote 2016                                               DR92N-9HTF2-97XKM-XW2WJ-XW3J6
# Microsoft Outlook 2016                                        R69KK-NTPKF-7M3Q4-QYBHW-6MT9B
# Microsoft PowerPoint 2016                                     J7MQP-HNJ4Y-WJ7YM-PFYGF-BY6C6
# Microsoft Publisher 2016                                      F47MM-N3XJP-TQXJ9-BP99D-8K837
# Skype for Business 2016                                       869NQ-FJ69K-466HW-QYCP2-DDBV6
# MS Word 2016                                                  WXY84-JN2Q9-RBCCQ-3Q3J3-3PFJ6
