# paths
source ~/.config/fish/paths.fish

# shortcuts
source ~/.config/common/shortcuts

# custom stuff
set -l custom_source "~/.profile_custom"
if test -e "$custom_source"
  source "$custom_source"
end

# tabtab source for packages
# uninstall by removing these lines
[ -f ~/.config/tabtab/__tabtab.fish ]; and . ~/.config/tabtab/__tabtab.fish; or true

set -gx HOMEBREW_GITHUB_API_TOKEN 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
