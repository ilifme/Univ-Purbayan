$files = @(
    "C:\laragon\www\laravel-smk\resources\views\sejarah.blade.php",
    "C:\laragon\www\laravel-smk\resources\views\fasilitas.blade.php",
    "C:\laragon\www\laravel-smk\resources\views\sambutan.blade.php",
    "C:\laragon\www\laravel-smk\resources\views\sdm.blade.php",
    "C:\laragon\www\laravel-smk\resources\views\visimisi.blade.php",
    "C:\laragon\www\laravel-smk\resources\views\berita\show.blade.php",
    "C:\laragon\www\laravel-smk\resources\views\pengumuman\show.blade.php"
)

$find = "asset('storage/"
$replace = "cloudinary_url("

foreach ($file in $files) {
    $content = Get-Content $file -Raw
    $oldContent = $content
    
    if ($content -match [regex]::Escape($find)) {
        $content = $content -replace [regex]::Escape($find), $replace
        Set-Content $file -Value $content
        Write-Host "Updated: $file"
    } else {
        Write-Host "No match: $file"
    }
}
