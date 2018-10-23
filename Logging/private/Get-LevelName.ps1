function Get-LevelName {
    [CmdletBinding()]
    param(
        [int] $Level
    )

    $l = $LevelNames[$Level]
    if ($l) {return $l}
    else {return ('Level {0}' -f $Level)}
}
