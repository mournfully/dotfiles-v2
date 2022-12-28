# github.com/mournfully/dotfiles

These are my dotfiles managed with [`chezmoi`](https://github.com/twpayne/chezmoi).
```shell
$ tree ~/.local/share/chezmoi
├── HOME
│   ├── dot_vscode-oss
│   │   └── argv.json
│   ├── dot_xinitrc
│   ├── dot_zshenv.tmpl
│   ├── private_dot_config
│   │   ├── alacritty
│   │   │   └── alacritty.yml.tmpl
│   │   ├── dwm # submodule
│   │   ├── mimeapps.list
│   │   ├── nvim
│   │   │   ├── init.vim.tmpl
│   │   │   └── lua
│   │   │       └── plugins.lua.tmpl
│   │   ├── private_Code
│   │   │   └── User
│   │   │       ├── symlink_keybindings.json.tmpl
│   │   │       └── symlink_settings.json.tmpl
│   │   ├── private_Code - OSS
│   │   │   └── User
│   │   │       ├── symlink_keybindings.json.tmpl
│   │   │       └── symlink_settings.json.tmpl
│   │   ├── sxhkd
│   │   │   └── sxhkdrc
│   │   ├── tmux
│   │   │   └── tmux.conf
│   │   ├── wget
│   │   │   └── wgetrc
│   │   ├── X11
│   │   │   └── dot_Xresources
│   │   └── zsh
│   │       ├── dot_keybindings
│   │       ├── dot_p10k.zsh
│   │       ├── dot_zshrc.tmpl
│   │       └── executable_dot_aliases.tmpl
│   └── private_dot_local
│       └── bin 
│           └── wm # submodule
└── README.md

24 directories, 94 files
```

And here's a bunch of interesting stuff I'm considering doing with my dotfiles.
- What actually is `lf`/`ueberzug` (cli programs)
- Hmm, it'd be kinda cool to install proxmox on my laptop and use terraform to manage a workstation vm on it.
- I should really get around to writing a proper ansible playbook to manage my system :/
- I'm not too sure how to deal with my wallpaper collection :/
- I wonder if it's possible to containerize LaTeX with docker...
- Speaking of containerization, I should really get into the habit of containerizing my dev environments.

### Credits
https://github.com/ericmurphyxyz/dotfiles/
https://github.com/twpayne/chezmoi
