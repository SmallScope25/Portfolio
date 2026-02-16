# Portfolio Image Copy Script - Simplified
# Based on IMAGE_CURATION_ROUNDUP.md

Write-Host "Portfolio Image Copy Script" -ForegroundColor Cyan
Write-Host ""

# Source folders
$phoneLink = "C:\Users\shamw\Downloads\Phone Link"
$screenshots = "C:\Users\shamw\OneDrive\Pictures\Screenshots 1"

# Destination
$dest = "C:\Users\shamw\source\portfolio\images"

# Create folders
New-Item -ItemType Directory -Force -Path "$dest\work" | Out-Null
New-Item -ItemType Directory -Force -Path "$dest\projects" | Out-Null
New-Item -ItemType Directory -Force -Path "$dest\art" | Out-Null

Write-Host "Folders created" -ForegroundColor Green
Write-Host ""

$count = 0

# Function to try both jpg and webp
function CopyImage($name, $dest, $label) {
    $jpg = "$phoneLink\$name.jpg"
    $webp = "$phoneLink\$name.webp"

    if (Test-Path $jpg) {
        Copy-Item $jpg $dest -Force
        Write-Host "OK: $label" -ForegroundColor Green
        $script:count++
    } elseif (Test-Path $webp) {
        Copy-Item $webp $dest -Force
        Write-Host "OK: $label" -ForegroundColor Green
        $script:count++
    } else {
        Write-Host "MISSING: $label" -ForegroundColor Red
    }
}

# LANDING PAGE (6)
Write-Host "LANDING PAGE (6)" -ForegroundColor Yellow
CopyImage "SirKit (3)" "$dest\work\featured-01.jpg" "SirKit (3)"
CopyImage "Snuzzly (4)" "$dest\work\featured-02.jpg" "Snuzzly (4)"
CopyImage "SirKit (59)" "$dest\work\featured-03.jpg" "SirKit (59)"
CopyImage "Eject (14)" "$dest\work\featured-04.jpg" "Eject (14)"
CopyImage "WumpWear (13)" "$dest\work\featured-05.jpg" "WumpWear (13)"
CopyImage "Wirez (5)" "$dest\work\featured-06.jpg" "Wirez (5)"
Write-Host ""

# PROJECT CARDS (3)
Write-Host "PROJECT CARDS (3)" -ForegroundColor Yellow
if (Test-Path "$screenshots\Screenshot 2026-02-16 005741.png") {
    Copy-Item "$screenshots\Screenshot 2026-02-16 005741.png" "$dest\projects\wayfarer-hero.png" -Force
    Write-Host "OK: Wayfarer" -ForegroundColor Green
    $count++
}
if (Test-Path "$screenshots\Screenshot_20251113-152130.png") {
    Copy-Item "$screenshots\Screenshot_20251113-152130.png" "$dest\projects\rx-manager-home.png" -Force
    Write-Host "OK: RX Manager" -ForegroundColor Green
    $count++
}
if (Test-Path "$screenshots\Screenshot 2025-09-23 175117.png") {
    Copy-Item "$screenshots\Screenshot 2025-09-23 175117.png" "$dest\projects\bct-unity-editor.png" -Force
    Write-Host "OK: BCT Unity" -ForegroundColor Green
    $count++
}
Write-Host ""

# BRAND SECTIONS (10)
Write-Host "BRAND SECTIONS (10)" -ForegroundColor Yellow
CopyImage "Snuzzly (4)" "$dest\art\snuzzly-01.jpg" "Snuzzly (4)"
CopyImage "Snuzzly (20)" "$dest\art\snuzzly-02.jpg" "Snuzzly (20)"
CopyImage "WumpWear (2)" "$dest\art\snuzzly-03.jpg" "WumpWear (2)"
CopyImage "Eject (18)" "$dest\art\eject-01.jpg" "Eject (18)"
CopyImage "Eject (23)" "$dest\art\eject-02.jpg" "Eject (23)"
CopyImage "Eject (11)" "$dest\art\eject-03.jpg" "Eject (11)"
CopyImage "Wirez (5)" "$dest\art\wirez-01.jpg" "Wirez (5)"
CopyImage "Wirez (4)" "$dest\art\wirez-02.jpg" "Wirez (4)"
CopyImage "Wirez (16)" "$dest\art\wirez-03.jpg" "Wirez (16)"
CopyImage "SirKit (3)" "$dest\art\sirkit-reference.jpg" "SirKit (3)"
Write-Host ""

# ART GALLERY (8)
Write-Host "ART GALLERY (8)" -ForegroundColor Yellow
CopyImage "SirKit (17)" "$dest\art\gallery-01.jpg" "SirKit (17)"
CopyImage "Snuzzly (25)" "$dest\art\gallery-02.jpg" "Snuzzly (25)"
CopyImage "SirKit (23)" "$dest\art\gallery-03.jpg" "SirKit (23)"
CopyImage "Eject (23)" "$dest\art\gallery-04.jpg" "Eject (23)"
CopyImage "WumpWear (10)" "$dest\art\gallery-05.jpg" "WumpWear (10)"
CopyImage "Wirez (21)" "$dest\art\gallery-06.jpg" "Wirez (21)"
CopyImage "ShamPhoto (2)" "$dest\art\gallery-07.jpg" "ShamPhoto (2)"
CopyImage "SirKit (52)" "$dest\art\gallery-08.jpg" "SirKit (52)"
Write-Host ""

Write-Host "DONE! Copied $count files" -ForegroundColor Green
Write-Host ""
Write-Host "Images ready in portfolio/images/" -ForegroundColor Cyan
