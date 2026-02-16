# Portfolio Image Copy Script
# Based on IMAGE_CURATION_ROUNDUP.md curation decisions

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Portfolio Image Copy Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Source folders
$phoneLink = "C:\Users\shamw\Downloads\Phone Link"
$screenshots = "C:\Users\shamw\OneDrive\Pictures\Screenshots 1"

# Destination folders
$portfolioRoot = "C:\Users\shamw\source\portfolio"
$workFolder = "$portfolioRoot\images\work"
$projectsFolder = "$portfolioRoot\images\projects"
$artFolder = "$portfolioRoot\images\art"

# Create folder structure if it doesn't exist
Write-Host "Creating folder structure..." -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path $workFolder | Out-Null
New-Item -ItemType Directory -Force -Path $projectsFolder | Out-Null
New-Item -ItemType Directory -Force -Path $artFolder | Out-Null
Write-Host "✓ Folders created" -ForegroundColor Green
Write-Host ""

# Counter for copied files
$copiedCount = 0
$errors = @()

# Function to copy file with error handling
function Copy-ImageFile {
    param($Source, $Destination, $Description)

    if (Test-Path $Source) {
        try {
            Copy-Item -Path $Source -Destination $Destination -Force
            Write-Host "✓ Copied: $Description" -ForegroundColor Green
            $script:copiedCount++
        } catch {
            $errorMsg = "✗ Failed: $Description - $_"
            Write-Host $errorMsg -ForegroundColor Red
            $script:errors += $errorMsg
        }
    } else {
        $errorMsg = "✗ Not found: $Description ($Source)"
        Write-Host $errorMsg -ForegroundColor Red
        $script:errors += $errorMsg
    }
}

# ===== LANDING PAGE GRID (6 images) =====
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "LANDING PAGE - Selected Work Grid (6)" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

# Try both .jpg and .webp extensions for Phone Link images
function Get-ImagePath {
    param($Folder, $Name)
    $jpgPath = "$Folder\$Name.jpg"
    $webpPath = "$Folder\$Name.webp"

    if (Test-Path $jpgPath) { return $jpgPath }
    if (Test-Path $webpPath) { return $webpPath }
    return $jpgPath  # Return jpg path for error message
}

Copy-ImageFile (Get-ImagePath $phoneLink "SirKit (3)") "$workFolder\featured-01.jpg" "Slot 1: SirKit (3) - Mech silhouette"
Copy-ImageFile (Get-ImagePath $phoneLink "Snuzzly (4)") "$workFolder\featured-02.jpg" "Slot 2: Snuzzly (4) - Cast photo"
Copy-ImageFile (Get-ImagePath $phoneLink "SirKit (59)") "$workFolder\featured-03.jpg" "Slot 3: SirKit (59) - Orange/teal headpiece"
Copy-ImageFile (Get-ImagePath $phoneLink "Eject (14)") "$workFolder\featured-04.jpg" "Slot 4: Eject (14) - VCR-face corridor"
Copy-ImageFile (Get-ImagePath $phoneLink "WumpWear (13)") "$workFolder\featured-05.jpg" "Slot 5: WumpWear (13) - High-top sneaker"
Copy-ImageFile (Get-ImagePath $phoneLink "Wirez (5)") "$workFolder\featured-06.jpg" "Slot 6: Wirez (5) - Mechanical-face creature"

Write-Host ""

# ===== PROJECT CARDS (3 images) =====
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "PROJECT CARDS (3)" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

Copy-ImageFile "$screenshots\Screenshot 2026-02-16 005741.png" "$projectsFolder\wayfarer-hero.png" "Wayfarer - Mobile mockup"
Copy-ImageFile "$screenshots\Screenshot_20251113-152130.png" "$projectsFolder\rx-manager-home.png" "RX Manager - Home with metrics"
Copy-ImageFile "$screenshots\Screenshot 2025-09-23 175117.png" "$projectsFolder\bct-unity-editor.png" "BCT Unity - Editor with Otto AI"

Write-Host ""

# ===== BRAND SECTIONS =====
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "BRAND SECTIONS - Creative Page (10)" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

# Snuzzly + WumpWear (3)
Copy-ImageFile (Get-ImagePath $phoneLink "Snuzzly (4)") "$artFolder\snuzzly-01.jpg" "Snuzzly (4) - Cast photo"
Copy-ImageFile (Get-ImagePath $phoneLink "Snuzzly (20)") "$artFolder\snuzzly-02.jpg" "Snuzzly (20) - Teal bat samurai"
Copy-ImageFile (Get-ImagePath $phoneLink "WumpWear (2)") "$artFolder\snuzzly-03.jpg" "WumpWear (2) - Orange wall outfit"

# Eject (3)
Copy-ImageFile (Get-ImagePath $phoneLink "Eject (18)") "$artFolder\eject-01.jpg" "Eject (18) - Alternate horror shot"
Copy-ImageFile (Get-ImagePath $phoneLink "Eject (23)") "$artFolder\eject-02.jpg" "Eject (23) - Orange visor cyberpunk"
Copy-ImageFile (Get-ImagePath $phoneLink "Eject (11)") "$artFolder\eject-03.jpg" "Eject (11) - Teal mummy creature"

# Wirez (3)
Copy-ImageFile (Get-ImagePath $phoneLink "Wirez (5)") "$artFolder\wirez-01.jpg" "Wirez (5) - Mechanical face gray bg"
Copy-ImageFile (Get-ImagePath $phoneLink "Wirez (4)") "$artFolder\wirez-02.jpg" "Wirez (4) - Polka-dot wall figure"
Copy-ImageFile (Get-ImagePath $phoneLink "Wirez (16)") "$artFolder\wirez-03.jpg" "Wirez (16) - Teal-faced creature"

# SirKit (1 - for reference, though primarily in landing)
Copy-ImageFile (Get-ImagePath $phoneLink "SirKit (3)") "$artFolder\sirkit-reference.jpg" "SirKit (3) - Reference copy"

Write-Host ""

# ===== SELECTED ART GALLERY (8 images) =====
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "SELECTED ART GALLERY (8)" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan

Copy-ImageFile (Get-ImagePath $phoneLink "SirKit (17)") "$artFolder\gallery-01.jpg" "Gallery 1: SirKit (17) - Retro-futurist sunset"
Copy-ImageFile (Get-ImagePath $phoneLink "Snuzzly (25)") "$artFolder\gallery-02.jpg" "Gallery 2: Snuzzly (25) - Cyclops + panda"
Copy-ImageFile (Get-ImagePath $phoneLink "SirKit (23)") "$artFolder\gallery-03.jpg" "Gallery 3: SirKit (23) - Barragan orange architecture"
Copy-ImageFile (Get-ImagePath $phoneLink "Eject (23)") "$artFolder\gallery-04.jpg" "Gallery 4: Eject (23) - Orange visor cyberpunk"
Copy-ImageFile (Get-ImagePath $phoneLink "WumpWear (10)") "$artFolder\gallery-05.jpg" "Gallery 5: WumpWear (10) - Monster slip-on shoe"
Copy-ImageFile (Get-ImagePath $phoneLink "Wirez (21)") "$artFolder\gallery-06.jpg" "Gallery 6: Wirez (21) - Zebra-wing sunglasses"
Copy-ImageFile (Get-ImagePath $phoneLink "ShamPhoto (2)") "$artFolder\gallery-07.jpg" "Gallery 7: ShamPhoto (2) - Twisted building"
Copy-ImageFile (Get-ImagePath $phoneLink "SirKit (52)") "$artFolder\gallery-08.jpg" "Gallery 8: SirKit (52) - Robot in rain"

Write-Host ""

# ===== SUMMARY =====
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "SUMMARY" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "✓ Successfully copied: $copiedCount files" -ForegroundColor Green

if ($errors.Count -gt 0) {
    Write-Host ""
    Write-Host "⚠ Errors encountered: $($errors.Count)" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Error details:" -ForegroundColor Yellow
    foreach ($error in $errors) {
        Write-Host "  $error" -ForegroundColor Red
    }
    Write-Host ""
    Write-Host "Note: Some images may have .webp extension instead of .jpg" -ForegroundColor Yellow
    Write-Host "Check the Phone Link folder for correct filenames." -ForegroundColor Yellow
} else {
    Write-Host "🎉 All images copied successfully!" -ForegroundColor Green
}

Write-Host ""
Write-Host "Images are ready in:" -ForegroundColor Cyan
Write-Host "  - $workFolder - 6 landing images" -ForegroundColor White
Write-Host "  - $projectsFolder - 3 project cards" -ForegroundColor White
Write-Host "  - $artFolder - 19 brand/gallery images" -ForegroundColor White
Write-Host ""
Write-Host "Next step: Build HTML structure" -ForegroundColor Yellow
Write-Host ""
