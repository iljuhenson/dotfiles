#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

touch ~/.zshrc
cat << EOF > ~/.zshrc
plugins=(
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-completions
)
EOF

