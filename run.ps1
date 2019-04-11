$Prompt = "Choose an option:`n1. Run Dev`n2. Deploy Staging`n3. Deploy Production";

Write-Host $Prompt

$Input = Read-Host
if ($input -eq 1) {
    Write-Host "Running Development..."
    Copy-Item "./config/development.ts" -Destination "./constants/setup.ts"
    Invoke-Expression -Command "npm run dev"
}
if ($input -eq 2) {
    Write-Host "Deploying to Staging"
    Write-Host "Staging - Uploading in 5 seconds. Press control+c to abort.";
    Start-Sleep -Seconds 5;
    Copy-Item "./config/staging.ts" -Destination "./constants/setup.ts"
    Invoke-Expression -Command "now"
    $NowServer = Get-Clipboard
    $AliasExpression = [string]::Format("now alias {0} test-portal.parkner.pe", $NowServer);
    Invoke-Expression -Command $AliasExpression
    Exit-PSHostProcess
}
if ($input -eq 3) {
    Write-Host "Deploying to Production"
    Write-Host "Production - Uploading in 5 seconds. Press control+c to abort.";
    Start-Sleep -Seconds 5;
    Copy-Item "./config/production.ts" -Destination "./constants/setup.ts"
    Invoke-Expression -Command "now"
    $NowServer = Get-Clipboard
    $AliasExpression = [string]::Format("now alias {0} portal.parkner.pe", $NowServer);
    Invoke-Expression -Command $AliasExpression
    Exit-PSHostProcess
}