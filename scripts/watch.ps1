$Root = Split-Path $PSScriptRoot -Parent
$Fonts = Join-Path $Root "assets/fonts"

typst watch `
    "$Root/main-en.typ" `
    --font-path $Fonts