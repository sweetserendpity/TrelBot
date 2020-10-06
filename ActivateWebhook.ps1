$description = "Media & Publicity"
$callbackURL = "https://discord.com/channels/758999222682517534/759000754798723148"
$idmodel = "5f7cbe39d44525521be6512e"
$MemberToken = "A0f7b18ce5207c2d025e9835648664668dbac7391d47a30cac94ab20b18f3a0d"
$APIkey = "388b7cf9181fe08fb20ae61bd1a21b41"

$postParams = @{description=$description;callbackURL=$callbackURL;idModel=$idmodel}
$uri = "https://api.trello.com/1/tokens/" + $MemberToken + "/webhooks/?key=" + $APIkey
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Method POST  -Uri $uri -Body $postParams
