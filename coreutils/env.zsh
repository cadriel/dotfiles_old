# All of this expects homebrew to be installed along with coreutils.

# Path setup
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# Short of learning how to actually configure OSX, here's a hacky way to use
# GNU manpages for programs that are GNU ones, and fallback to OSX manpages otherwise
alias man='_() { echo $1; man -M $(brew --prefix)/opt/coreutils/libexec/gnuman $1 1>/dev/null 2>&1;  if [ "$?" -eq 0 ]; then man -M $(brew --prefix)/opt/coreutils/libexec/gnuman $1; else man $1; fi }; _'

# Overwrite oh-my-zsh's default ls alias with our own
unalias ls
alias ls='ls --color=tty -al'

# Setup solarized dark color support
eval `dircolors ~/.dir_colors`
