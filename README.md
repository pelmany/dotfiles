# Arch niri dotfiles
### My dotfiles are managed using chezmoi!
#### Installation:
Install chezmoi:
```bash
# For Arch Linux btw
sudo pacman -S chezmoi

# For any other distribution
sh -c "$(curl -fsLS get.chezmoi.io)"
```

Download and apply my dotfiles:
```bash
chezmoi init https://github.com/cp1us/dotfiles.git

#check changes
chezmoi diff

#apply changes
chezmoi apply -v
```

If you are using Arch Linux, chezmoi will automatically install and configure the necessary packages.
If you are using a different distribution, check the package list in *.chezmoidata/packages.yaml* , a list of running daemons in *.chezmoidata/daemons.yaml* and the list of groups to include your user in *.chezmoidata/groups.yaml*.
