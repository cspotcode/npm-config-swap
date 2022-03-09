#!/usr/bin/env bash

target=".npmrc-$1"
if ! [ -f ~/"$target" ] ; then
  echo "Error: ~/$target does not exist" >&2
  exit 1
fi
if [ -f ~/.npmrc ] ; then
  if ! [ -L ~/.npmrc ] ; then
    echo "Error: ~/.npmrc exists but is not a symlink.  Refusing to overwrite it." >&2
    exit 1
  fi
  rm ~/.npmrc
fi

ln -s ".npmrc-$1" ~/.npmrc
