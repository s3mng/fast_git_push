param(
  [Parameter(Mandatory=$true)][string]$RemoteRepo,
  [string]$CommitMsg = (Get-Date -Format "yyyy-MM-dd HH:mm:ss")
)
if (-not (Test-Path ".git")) {
  git init || { exit 1 }
  git remote add origin $RemoteRepo || { exit 1 }
}
git add .
git commit -m $CommitMsg || { exit 1 }
git branch -M main
git push -u origin main || { exit 1 }
Write-Host "Push complete."