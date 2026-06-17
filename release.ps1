$packageName = "tabletopandroid-airport-kosh-oshkosh"
$manifest = Get-Content "Packages\$packageName\manifest.json" | ConvertFrom-Json

$version = $manifest.package_version
$tag = "v$version"
$zipName = "tabletopandroid-kosh-airventure-$tag.zip"
$notes = $manifest.release_notes.neutral.LastUpdate -replace '\\n', "`n"

gh release view $tag 2>$null
if ($LASTEXITCODE -eq 0) {
    Write-Error "Release $tag already exists. Bump package_version in manifest.json first."
    exit 1
}

if (Test-Path $zipName) { Remove-Item $zipName }
Compress-Archive -Path "Packages\$packageName" -DestinationPath $zipName
Write-Host "Created $zipName"

gh release create $tag $zipName --title "EAA AirVenture Oshkosh $tag" --notes $notes
Write-Host "Published release $tag"
