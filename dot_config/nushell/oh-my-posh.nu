let posh_dir = (brew --prefix oh-my-posh | str trim)
let posh_theme = $'($posh_dir)/share/oh-my-posh/themes'
# Change the theme names to: zash/space/robbyrussel/powerline/powerlevel10k_lean/
# material/half-life/lambda Or double lines theme: amro/pure/spaceship, etc.
# For more [Themes demo](https://ohmyposh.dev/docs/themes)
$env.PROMPT_COMMAND = { || oh-my-posh prompt print primary --config $'($posh_theme)/' }
# Optional
$env.PROMPT_INDICATOR = $"(ansi y)$> (ansi reset)"

let theme = 'catppuccin_frappe'
oh-my-posh init nu --config $"/opt/homebrew/Cellar/oh-my-posh/26.4.0/themes/($theme).omp.json"
