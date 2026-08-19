# dotfiles

Add the following to your ~/.bashrc to include the managed dotfiles bashrc:
```sh
# >>> dotfiles bashrc >>>
managed_dotfiles_bashrc=/d/Projects/dotfiles/.bashrc
if [ -f "$managed_dotfiles_bashrc" ]; then
  . "$managed_dotfiles_bashrc"
fi
unset managed_dotfiles_bashrc
# <<< dotfiles bashrc <<<
```