# 🛠️ Dotfiles

My personal configuration files managed using [Chezmoi](https://www.chezmoi.io/).  
This setup includes:

- 📝 [Neovim](https://neovim.io) – editor setup  
- 🐚 [Nushell](https://www.nushell.sh) – modern shell  
- 📟 [Neofetch](https://github.com/dylanaraps/neofetch) – system info on terminal launch  

Each config is modular, clean, and can be applied selectively.

## 🚀 Getting Started

### 1. Install Chezmoi

```bash
sh -c "$(curl -fsLS get.chezmoi.io)"
brew install chezmoi      # macOS
sudo pacman -S chezmoi    # Arch
```

### 2. Clone & apply this repo

```bash
chezmoi init --apply aquibbaig  # replace with your GitHub username
```

### 3. Install only specific configs

```bash
chezmoi apply --include nvim
chezmoi apply --include nushell
chezmoi apply --include neofetch
```

## 🔄 Updating Configs

Make changes directly in your local config (e.g. `~/.config/nvim/init.lua`), then:

```bash
chezmoi add ~/.config/nvim
chezmoi add ~/.config/nushell
chezmoi add ~/.config/neofetch
```

Push the changes:

```bash
cd ~/.local/share/chezmoi
git add .
git commit -m "update: config changes"
git push origin main
```

## ⏳ Dependencies
- Install nushell
 ```bash
brew install nushell
```

- Install oh-my-posh
 ```bash
brew install jandedobbeleer/oh-my-posh/oh-my-posh
```

## ⚙️ Manual configuration
For `nushell` to work, copy configuration from chezmoi to your nushell config root. I did not find a reliable way
to update the config $PATH for nushell.

## 📁 Repo Structure

```
~/.local/share/chezmoi/
├── dot_config/
│   ├── nvim/        # Neovim config
│   ├── nushell/     # Nushell config
│   └── neofetch/    # Neofetch config
├── .chezmoiignore   # Ignore cache/history/temp files
└── install_scripts/ # Optional install hooks (e.g. nvim.sh.tmpl)
```

## 🧠 Tip: Ignore Temp Files

Example `.chezmoiignore`:

```
dot_config/nushell/history.txt
dot_config/nushell/plugin.msgpackz
dot_config/nushell/vendor/
```

## 📜 License

MIT © Aquib Baig
