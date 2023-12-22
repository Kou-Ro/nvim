#!/bin/zsh

nvim-update(){
  git -C "${DOTFILES}/nvim" reset --soft origin/main
  stashListB="$(git -C "${DOTFILES}/nvim" stash list 2>/dev/null )"
  git -C "${DOTFILES}/nvim" stash save -u "Made by dcon-update"
  stashListA="$(git -C "${DOTFILES}/nvim" stash list 2>/dev/null )"
  git -C "${DOTFILES}/nvim" pull
  git -C "${DOTFILES}/nvim" submodule update
}