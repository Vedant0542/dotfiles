#!/bin/bash

echo "🔧 Installing VSCode extensions..."

extensions=(
  aliariff.vscode-erb-beautify
  castwide.solargraph
  codeium.codeium
  eamodio.gitlens
  esbenp.prettier-vscode
  formulahendry.code-runner
  kaiwood.endwise
  kiteco.kite
  mikestead.dotenv
  ms-vscode-remote.remote-ssh
  ms-vscode-remote.remote-ssh-edit
  ms-vscode.cpptools
  ms-vscode.cpptools-themes
  ms-vscode.remote-explorer
  platformio.platformio-ide
  shopify.ruby-extensions-pack
  shopify.ruby-lsp
  sorbet.sorbet-vscode-extension
  virresh.cinp
)

for ext in "${extensions[@]}"; do
  echo "📦 Installing: $ext"
  code --install-extension "$ext" || echo "⚠️ Failed to install $ext"
done

echo "✅ All available extensions installed."
