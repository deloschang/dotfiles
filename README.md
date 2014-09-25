[Tmux](http://tmux.sourceforge.net/) is a terminal multiplexer. Tested with tmux 1.5 and 1.6.

This config has support for [tmux-mem-cpu](http://github.com/thewtex/tmux-mem-cpu-load).

Prefix mapped to Ctrl-A for `screen` users.

Installation
------------
  Curl SPF13

  Download:

```bash
git clone https://github.com/deloschang/dotfiles.git ~/dotfiles
```

  Copy config to home:

```bash
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.vimrc.local ~/.vimrc.local
ln -s ~/dotfiles/.fishrc ~/.config/fish/config.fish
```

  Go to config dir:

```bash
cd ~/dotfiles
```

### basic-cpu-and-memory.tmux

(Cross platform, tested with python 2.7+)

Update March 19, 2014. Works with psutil 2.0 now.

  install ``psutil``

```bash
sudo pip install psutil
```

  copy ``~/.tmux/vendor/basic-cpu-and-memory.tmux`` to bin

```bash
sudo cp ~/.tmux/vendor/basic-cpu-and-memory.tmux /usr/local/bin/tmux-mem-cpu-load
```

  make executable

```bash
sudo chmod +x /usr/local/bin/tmux-mem-cpu-load
```

Start tmux
----------

  To start a session via “tmux”:

  `tm`

  To reattach a previous session:

  `ta #`

  To reload config file

  `<Control + a>r`

Commands
--------

  Our prefix/leader key is `Control + a` now (just like the `screen` multiplexer). This sequence must be typed before any tmux shortcut.

  * `Control + a` before any command
  * `Control + a` then `?` to bring up list of keyboard shortcuts
  * `Control + a` then `"` to split window
  * `Control + a` then `<Space>` to change pane arrangement
  * `Control + a` then `o` to rotate panes
  * `Control + a` then `h`, `j`, `k`, `l` to move left, down, up, right. Respectively. (vim hjkl)
  * `Control + a` then `;` to go to last panel

  Beyond your first window:

  * `Control + a` then `c` to create a new window
  * `Control + a` then `n` to next window
  * `Control + a` then `p` to previous window
  * `Control + a` then `[0-9]` move to window number
  * `Control + a` then `&` to kill window

  Splitting windows:

  * `Control + a` then `v` vertical split like vim
  * `Control + a` then `s` horizontal split
