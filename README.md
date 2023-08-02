## RevSSHTunnelPowershell
A simple powershell to create a SSH Reverse Tunnel, which can be used in conjunction with any local SOCKS5 listener on 127.0.0.1:1080 to achieve the best reverse tunnelling result

## Requirement
- A .Net Library called 'Renci.SshNet.dll' from SSH.NET
- Alternatively, you can download the same release from https://github.com/sshnet/SSH.NET/releases
- When executing the script, please also make sure the Renci SshNet DLL is saved in the same folder of the ps1 script.
- You might also need to manually right click on the DLL and unlock it

## Features
- The initial SSH outbound traffic (remote port forwarding) can be established via a corporate proxy 
- Support proxy authentication (username and password)
- Using local "[void][reflection.assembly]::LoadFrom" instead of "IEX (Invoke-Expression)"