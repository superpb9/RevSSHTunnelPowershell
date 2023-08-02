# You need to download Renci.SshNet.dll from https://github.com/sshnet/SSH.NET first
# Then, save this Renci.SshNet.dll to the same folder of this script
# You might also need to manually right click on the DLL and unlock it before you can use it
[void][reflection.assembly]::LoadFrom((Resolve-Path ".\Renci.SshNet.dll"))

$targethost = "Remote SSH Server IP"
$targetport = 443
$username = "CHANGEME" # Your remote SSH server username
$password = "CHANGEME" # Your remote SSH Server password

$connInfo = New-Object Renci.SshNet.PasswordConnectionInfo($targethost, $targetport, $username, $password)

$sshClient = New-Object Renci.SshNet.SshClient -ArgumentList $connInfo
$sshClient.Connect()

$remoteForwardedPort = New-Object Renci.SshNet.ForwardedPortRemote(
    "127.0.0.1",   
    1080,           # Remote (server) forwarded port 
    "127.0.0.1",    # Local (client) SOCKS5 Listening Address
    1080            # Local (client) SOCKS5 Listening Port
)

$sshClient.AddForwardedPort($remoteForwardedPort)
$remoteForwardedPort.Start()
