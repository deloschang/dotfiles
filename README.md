[Tmux](http://tmux.sourceforge.net/) is a terminal multiplexer. Tested with tmux 1.5 and 1.6.

This config has support for [tmux-mem-cpu](http://github.com/thewtex/tmux-mem-cpu-load).

Prefix mapped to Ctrl-A for `screen` users.

Installation
------------
  Curl SPF13

  Install oh-my-fish:
```bash
curl -L https://github.com/bpinto/oh-my-fish/raw/master/tools/install.fish | fish
```

  Download:

```bash
git clone https://github.com/deloschang/dotfiles.git ~/dotfiles
```

  Copy config to home:

```bash
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.vimrc.local ~/.vimrc.local
ln -s ~/dotfiles/.vimrc.bundles.local ~/.vimrc.bundles.local
cp ~/dotfiles/config.fish ~/.config/fish/config.fish
cp ~/dotfiles/snippets/javascript.snippets ~/.vim/bundle/vim-snippets/snippets/javascript/
```

  Installing bundles in vim:
```
:BundleInstall
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

  To kill a session:
  `tk #`

  To reload config file

  `<Control + a>r`

Tmux Commands
--------

  Our prefix/leader key is `Control + a` now (just like the `screen` multiplexer). This sequence must be typed before any tmux shortcut.

  * `Control + a` before any command
  * `Control + a` then `?` to bring up list of keyboard shortcuts
  * `Control + a` then `<Space>` to change pane arrangement
  * `Control + a` then `o` to rotate panes
  * `Control + h` or `j`, `k`, `l` to move left, down, up, right. Respectively. (vim hjkl using vim-tmux navigator)
  * `Control + a` then `;` to go to last panel

  Beyond your first window:

  * `Control + a` then `c` to create a new window
  * `Control + a` then `C` to create a new named window
  * `Control + a` then `n` to next window
  * `Control + a` then `p` to previous window
  * `Control + a` then `[0-9]` move to window number
  * `Control + a` then `&` to kill window
  * `Control + a` then `x` to kill pane

  Splitting windows:

  * `Control + a` then `v` vertical split like vim
  * `Control + a` then `s` horizontal split

File Searching
--------
  * `Control + p` for ctrl+p style fuzzy-finding
  * `Control + b` for ctrl+p in buffers

iTerm
--------
  * Load preset .iterm.colors
  * Run `python colors.py` to ensure your ANSI colors are working
