# My (Arch) linux dotfiles
## Dotfiles are managed using chezmoi!
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
  
If you are using Arch Linux and set *Auto setup* to true during dotfiles applying, chezmoi will automatically install the necessary packages.   
If you are using a different distribution or set *Auto setup* to false, don't forget to check the package list in *.chezmoidata/packages.yaml*.   
