$Root = Split-Path $PSScriptRoot -Parent
$Fonts = Join-Path $Root "assets/fonts"
$Output = Join-Path $Root "output"

New-Item -ItemType Directory -Force -Path $Output | Out-Null

typst compile `
    "$Root/main-en.typ" `
    "$Output/resume-en.pdf" `
    --font-path $Fonts

typst compile `
    "$Root/main-fa.typ" `
    "$Output/resume-fa.pdf" `
    --font-path $Fonts

Write-Host ""
Write-Host "Build completed!"