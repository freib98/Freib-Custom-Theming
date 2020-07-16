function __ReplaceHomePath {
    $path = $executionContext.SessionState.Path.CurrentLocation.Path
    $p = $path

    while ($p -ne "") {
        if ($p -eq $HOME) { $path = $path.Replace($HOME, "~"); break }
        $p = Split-Path $p
    }

    return $path
} 

function Prompt {
    $errorCode = $?
    
    $returnArrow = "→"

    if ($errorCode) {
        $returnArrow = "$([char]27)[32m→$([char]27)[0m"
    }
    else {
        $returnArrow = "$([char]27)[31m→$([char]27)[0m"
    }

    $path = __ReplaceHomePath
    $userWithDomain = "$([char]27)[36m$([Environment]::UserName)@$([Environment]::UserDomainName)$([char]27)[0m"

    "$($returnArrow) $($userWithDomain) $path » "
}

Set-PSReadlineKeyHandler -Key Tab -Function Complete
