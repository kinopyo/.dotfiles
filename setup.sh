cd
git clone git@github.com:kinopyo/.dotfiles.git

ln -sf .dotfiles/.agignore .agignore
ln -sf .dotfiles/.gitconfig .gitconfig
ln -sf .dotfiles/.gitignore_global .gitignore_global
ln -sf .dotfiles/.pryrc .pryrc
ln -sf .dotfiles/.tmux.conf .tmux.conf
ln -sf .dotfiles/.vimrc.after .vimrc.after
ln -sf .dotfiles/.vimrc.before .vimrc.before
ln -sf .dotfiles/.z .z
ln -sf .dotfiles/.zshrc .zshrc

ln -sf .dotfiles/bin bin
mkdir -p .zsh/percol-utilities
ln -sf .dotfiles/.zsh/percol-utilities/git-recent-branches.zsh .zsh/percol-utilities/git-recent-branches.zsh
ln -sf .dotfiles/.zsh/percol-utilities/select-history.zsh .zsh/percol-utilities/select-history.zsh

ln -sf .dotfiles/.janus .janus

git submodule init
git submodule update
