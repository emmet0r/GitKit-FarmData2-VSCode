#!/usr/bin/env bash

git config --global --add safe.directory "$1"
git config --global pull.ff only
git config --global credential.helper store
git config --global merge.conflictstyle diff3
git config --global init.defaultBranch main

cat .devcontainer/bashrc-additions.sh >> "${HOME}/.bashrc"

mkdir .kitclient

.kit/install-features-into-client/run.sh
