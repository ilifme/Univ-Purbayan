$files_to_fix = @(
    @{file="C:\laragon\www\laravel-smk\resources\views\fasilitas.blade.php"; find="asset ('storage/'."; replace="cloudinary_url("},
    @{file="C:\laragon\www\laravel-smk\resources\views\sambutan.blade.php"; find="asset ('storage/'."; replace="cloudinary_url("},
    @{file="C:\laragon\www\laravel-smk\resources\views\sdm.blade.php"; find="asset ('storage/'."; replace="cloudinary_url("},
    @{file="C:\laragon\www\laravel-smk\resources\views\pengumuman\show.blade.php"; find="asset('storage/"; replace="cloudinary_url("}
)

foreach ($item in $files_to_fix) {
    $content = Get-Content $item.file -Raw
    $oldContent = $content
    if ($content -match [regex]::Escape($item.find)) {
        $content = $content -replace [regex]::Escape($item.find), $item.replace
        Set-Content $item.file -Value $content
        Write-Host "Updated: $($item.file)"
    } else {
        Write-Host "No match: $($item.file)"
    }
}
