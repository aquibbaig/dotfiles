# env.nu
#
# Installed by:
# version = "0.104.1"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# see https://www.nushell.sh/book/configuration.html
#
# also see `help config env` for more options.
#
# you can remove these comments if you want or leave
# them for future reference.


# config

# aliases
alias vi = nvim

# preferences
$env.PATH = ($env.PATH | split row (char esep) | prepend '/Users/aquibbaig/.cargo/bin'  | prepend '/opt/homebrew/bin')
$env.config.buffer_editor = 'nvim'
$env.editor = 'vim'
$env.config.table.mode = 'rounded'
