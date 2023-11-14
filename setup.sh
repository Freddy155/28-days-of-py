#!/bin/bash

mkdir -p projects

repos=(
    "https://github.com/Freddy155/cli-pass-checker.git"
    "https://github.com/Freddy155/cli-image-downloader.git"
    "https://github.com/Freddy155/text2speech-cli.git"
    "https://github.com/Freddy155/video2audio-cli.git"
    "https://github.com/Freddy155/cli-file-manager.git"
    "https://github.com/Freddy155/simple-blockchain.git"
    "https://github.com/Freddy155/gui-music-player.git"
    "https://github.com/Freddy155/cli-note-taking.git"
    "https://github.com/Freddy155/cli-password-manager.git"
    "https://github.com/Freddy155/snake-game.git"
    "https://github.com/Freddy155/cli-todo-list.git"
    "https://github.com/Freddy155/cli-dice-roller.git"
    "https://github.com/Freddy155/file-checker-gui.git"
    "https://github.com/Freddy155/web-to-pdf.git"
    "https://github.com/Freddy155/ip-tracer.git"
    "https://github.com/Freddy155/file-compressor.git"
    "https://github.com/Freddy155/md-editor.git"
    "https://github.com/Freddy155/morse-code-translator.git"
    "https://github.com/Freddy155/qr-code-generator.git"
    "https://github.com/Freddy155/url-shortener.git"
    "https://github.com/Freddy155/rps-game.git"
    "https://github.com/Freddy155/cryptography.git"
    "https://github.com/Freddy155/url-checker.git"
    "https://github.com/Freddy155/yt-downloader.git"
    "https://github.com/Freddy155/pass-gen.git"
    "https://github.com/Freddy155/tic-tac-toe.git"
)

for repo in "${repos[@]}"; do
    git clone "$repo" projects/
done

echo "Setup completed. Projects have been cloned into the 'projects' directory."
