## Install dependencies

### Mac

- Install [janus](https://github.com/carlhuda/janus): `curl -L https://bit.ly/janus-bootstrap | bash`
- `brew install ag tmux`

### Ubuntu(nitrous.io)

- Install [janus](https://github.com/carlhuda/janus): `curl -L https://bit.ly/janus-bootstrap | bash`
- `sudo apt-get install -y tmux xsel libmysqlclient-dev mysql-server-5.6`

## Download and symlink dotfiles

```
cd ~
git clone https://github.com/kinopyo/.dotfiles.git
.dotfiles/setup.sh
```

## Install vim plugins

When adding a new vim plugin,

```
cd ~/.dotfiles
git submodule add https://github.com/repo/plugin ~/.dotfiles/.janus/plugin
```

then in other machine,

``
cd ~/.dotfiles
git pull
git submodule init
git submodule update
```
