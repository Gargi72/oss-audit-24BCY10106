#!/bin/bash
PACKAGE="git"
if git --version;then
echo "git is installed"
else
echo "git is not installed"
fi

case $PACKAGE in
git) echo "Git: version control system" ;;
esac
