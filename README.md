## RevSSHTunnelPowershell
A simple powershell script to create a reverse SSH tunnel through an HTTP-like port (80/443/8443)

## Requirement
1. A .Net library called 'Renci.SshNet.dll' from SSH.NET. Alternatively, you can download the same release from [SSH.NET](https://github.com/sshnet/SSH.NET/)
2. When executing the script, please also make sure the Renci SshNet DLL is saved in the same folder of the ps1 script. You might also need to manually right click on the DLL and unlock it
3. To route all inbound traffic through 127.0.0.1:1080, you also need to run a client side SOCK5 listener on 127.0.0.1:1080. Otherwise, you can manually add multiple internal 'address:port' to achieve the same goal

## Features
- The initial SSH outbound traffic (remote port forwarding) can be established via a web proxy 
- It also supports web proxy authentication using username and password
- This script uses local "[void][reflection.assembly]::LoadFrom" instead of "IEX (Invoke-Expression)", which is heavily signatured by EDR already
