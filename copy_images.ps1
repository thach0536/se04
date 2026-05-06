$BaseDir = "c:\web4"
$AssetsDir = "$BaseDir\assets"
New-Item -ItemType Directory -Force -Path $AssetsDir | Out-Null

$BrainDir = "C:\Users\User\.gemini\antigravity\brain\6fc03b55-0220-4fc9-8128-c2c80125f610"

$ImageMap = @{
    "logo_1778046621661.png" = "logo.png"
    "casual_tshirt_1778046637071.png" = "casual_tshirt.png"
    "casual_jeans_1778046651063.png" = "casual_jeans.png"
    "casual_hoodie_1778046665778.png" = "casual_hoodie.png"
    "casual_sneakers_1778046679718.png" = "casual_sneakers.png"
    "formal_suit_1778046701611.png" = "formal_suit.png"
    "formal_shirt_1778046715225.png" = "formal_shirt.png"
    "formal_tie_1778046729174.png" = "formal_tie.png"
    "formal_shoes_1778046742757.png" = "formal_shoes.png"
    "jewelry_watch_1778046759151.png" = "jewelry_watch.png"
    "jewelry_bracelet_1778046780198.png" = "jewelry_bracelet.png"
    "jewelry_ring_1778046796855.png" = "jewelry_ring.png"
    "jewelry_cufflinks_1778046809958.png" = "jewelry_cufflinks.png"
    "accessories_belt_1778046825862.png" = "accessories_belt.png"
    "accessories_sunglasses_1778046838916.png" = "accessories_sunglasses.png"
    "others_wallet_1778046878568.png" = "others_wallet.png"
    "others_backpack_1778046894844.png" = "others_backpack.png"
}

foreach ($Src in $ImageMap.Keys) {
    $Dst = $ImageMap[$Src]
    $SrcPath = "$BrainDir\$Src"
    $DstPath = "$AssetsDir\$Dst"
    if (Test-Path $SrcPath) {
        Copy-Item -Path $SrcPath -Destination $DstPath -Force
    }
}
