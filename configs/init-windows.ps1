Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

# install git
scoop install git

# install 7zip
scoop bucket add main
scoop install main/7zip

# install vscode
scoop bucket add extras
scoop install extras/vscode

# install java, spring boot
scoop bucket add java
scoop install java/openjdk21 extras/springboot main/maven main/gradle

# install nodejs, angular
scoop bucket add main
scoop install main/nodejs

# reload PATH
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", "User") + ";" +
             [System.Environment]::GetEnvironmentVariable("Path", "Machine")

npm install -g @angular/cli

