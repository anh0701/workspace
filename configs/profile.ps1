$wsl_suse = "wsl -d openSUSE-Tumbleweed"

$oh_my_posh_theme = "jandedobbeleer"

oh-my-posh init pwsh --config '$(scoop prefix oh-my-posh)/themes/${oh_my_posh_theme}.omp.json' | Invoke-Expression
