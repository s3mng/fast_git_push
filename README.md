git init/ add/ commit/ push 등을 한줄로 처리해주는 코드?입니다.
gpt로 만들었습니다.

## 설치
맥/리눅스

```bash
curl -sL https://raw.githubusercontent.com/s3mng/fast_git_push/main/install.sh | bash
```



윈도우
```powershell
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/s3mng/fast_git_push/main/install.ps1'))

### 사용법
```bash
fgp <remote_repo_url> [commit message]
```
commit message를 특별히 적지 않으면 날짜와 시간이 적힙니다.


```powershell
.\fgp.ps1 <remote_repo_url> [commit message]
```

