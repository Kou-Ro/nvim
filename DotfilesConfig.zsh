#!/bin/zsh

dcon-update(){
  # submodules update
  git -C "${DOTFILES}/nvim" reset --hard origin/HEAD
  git -C "${DOTFILES}/nvim" pull
  git -C "${DOTFILES}/nvim" submodule update --recursive --init --force
}