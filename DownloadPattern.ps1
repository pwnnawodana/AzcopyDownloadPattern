$env:AZCOPY_CONCURRENCY_VALUE = 256

$azCopy_Exe = "path_to\azcopy.exe"
$sp_list_TextFile = ".\directory_list.txt"
$share = 'https://example.file.core.windows.net/xxx/'
$SAS = 'SAS (Read, List)'

# Read record data file
$file_records = Get-Content $sp_list_TextFile

# Downloading
Write-Output "Downloading..."
$i = 0
foreach ($record in $file_records) {
    $i++
    Write-Progress "Processing "  -status "RUN :  $($record): $i of $($file_records.Count)" -PercentComplete (($i / $file_records.Count) * 100)

    # uncomment -NoNewWindow -Wait (recommend)
    Start-Process powershell "$azCopy_Exe copy '$($share)$($record.Trim())?$($sas)' '.\Directories\' --recursive --include-pattern='result_.xml;delivered;'" # -NoNewWindow -Wait
}