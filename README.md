## RevSSHTunnelPowershell
A simple powershell to create a SSH Reverse Tunnel, which can be used in conjunction with any local SOCKS5 listener on 127.0.0.1:1080 to achieve the best reverse tunnelling results

## Requirement
- A third Party .Net Library 'Renci.SshNet.dll'
- Alternatively, you can go to https://github.com/sshnet/SSH.NET/releases and download the same release yourself
- Please make sure the third party Renci SshNet DLL is saved in the same folder of the ps1 script. You might also need to manually right click on the DLL and unlock it first

## Features
- The initial SSH outbound traffic (remote port forwarding) can be established via a corporate proxy 
- Support proxy authentication
- Using local "[void][reflection.assembly]::LoadFrom" instead of "IEX (Invoke-Expression)"