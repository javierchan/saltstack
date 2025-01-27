dotfiles:
  /Users/{{ salt['pillar.get']('user', 'default_user') }}/.bashrc: salt://dotfiles/bashrc
  /Users/{{ salt['pillar.get']('user', 'default_user') }}/.vimrc: salt://dotfiles/vimrc
  /Users/{{ salt['pillar.get']('user', 'default_user') }}/.gitconfig: salt://dotfiles/gitconfig
  /Users/{{ salt['pillar.get']('user', 'default_user') }}/.zshrc: salt://dotfiles/zshrc

user: my_user
group: my_group
