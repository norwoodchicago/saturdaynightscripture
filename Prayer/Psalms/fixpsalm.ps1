
Read-Host "Enter the psalm number" | set r

$pfilename = ".\psalm$r.html"

Write-Host "Reading file $pfilename"


$ptext = Get-Content -Path "$pfilename" -Raw

$ptext = $ptext.Replace("`r`nI`r`n"," ")
$ptext = $ptext.Replace("`r`nII`r`n"," ")
$ptext = $ptext.Replace("`r`nIII`r`n"," ")
$ptext = $ptext.Replace("`r`nIV`r`n"," ")
$ptext = $ptext.Replace("`r`nV`r`n"," ")
$ptext = $ptext.Replace("`r`nVI`r`n"," ")
$ptext = $ptext.Replace("`r`nVII`r`n"," ")

$ptext = $ptext.Replace("``","`'")
$ptext = $ptext.Replace("`’","`'")
$ptext = $ptext -replace '^[\u2014]+', ''
$ptext = $ptext.Replace("`“","`"")
$ptext = $ptext.Replace("`”","`"")

$ptext = $ptext -replace '[0-9]', ''
$ptext = $ptext -replace '\.[a-z]', '.'
$ptext = $ptext -replace '\,[a-z]', '.'
$ptext = $ptext -replace '\:[a-z]', '.'
$ptext = $ptext -replace '\;[a-z]', '.'
$ptext = $ptext -replace '\?[a-z]', '.'
$ptext = $ptext -replace '\"[a-z]', '.'

$ptext = $ptext.Replace("`r`n"," ")
$ptext = $ptext.Replace("  "," ")
$ptext = $ptext.Replace("  "," ")

$ptext = $ptext -replace '\; a', '. A'
$ptext = $ptext -replace '\; b', '. B'
$ptext = $ptext -replace '\; c', '. C'
$ptext = $ptext -replace '\; d', '. D'
$ptext = $ptext -replace '\; e', '. E'
$ptext = $ptext -replace '\; f', '. F'
$ptext = $ptext -replace '\; g', '. G'
$ptext = $ptext -replace '\; h', '. H'
$ptext = $ptext -replace '\; i', '. I'
$ptext = $ptext -replace '\; j', '. J'
$ptext = $ptext -replace '\; k', '. K'
$ptext = $ptext -replace '\; l', '. L'
$ptext = $ptext -replace '\; m', '. M'
$ptext = $ptext -replace '\; n', '. N'
$ptext = $ptext -replace '\; o', '. O'
$ptext = $ptext -replace '\; p', '. P'
$ptext = $ptext -replace '\; q', '. Q'
$ptext = $ptext -replace '\; r', '. R'
$ptext = $ptext -replace '\; s', '. S'
$ptext = $ptext -replace '\; t', '. T'
$ptext = $ptext -replace '\; u', '. U'
$ptext = $ptext -replace '\; v', '. V'
$ptext = $ptext -replace '\; w', '. W'
$ptext = $ptext -replace '\; x', '. X'
$ptext = $ptext -replace '\; y', '. Y'
$ptext = $ptext -replace '\; z', '. Z'

$ptext = $ptext.Replace("`*","")




$ptext = $ptext.Replace("`r`n"," ")
$ptext = $ptext.Replace("  "," ")
$ptext = $ptext.Replace("  "," ")
$ptext = $ptext.Replace("  "," ")
#>

Write-Host $ptext