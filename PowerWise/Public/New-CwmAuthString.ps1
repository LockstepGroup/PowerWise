function New-CwmAuthString {
    [CmdletBinding()]

    Param (
        [Parameter(Mandatory=$True,Position=0)]
        [string]$Company,

        [Parameter(Mandatory=$True,Position=1)]
        [string]$PublicKey,

        [Parameter(Mandatory=$True,Position=2)]
        [string]$PrivateKey
    )

    $VerbosePrefix = "New-CwmAuthString:"
    
    $AuthString        = $Company + '+' + $PublicKey + ':' + $PrivateKey
    $EncodedAuthString = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(($Authstring)));

    return $EncodedAuthString
}