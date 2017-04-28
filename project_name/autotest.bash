#!/usr/bin/env bash
#/ Usage: autotest.bash
set -e

if [[ $1 == "--help" ]]; then
  grep '^#/' <"$0" | cut -c 4-
  exit
fi

if [ ! $(command -v fswatch) ]; then
  if [ $(command -v brew) ]; then
    echo "abort: brew install fswatch"
  else
    echo "abort: install 'fswatch'"
  fi

  exit 1
fi

rake_test() {
  clear
  date "+=> %H:%M:%S"
  echo
  rake test
}
export -f rake_test

clear
printf "=> Autotesting *.rb files\n\n"

# Ignores dotfiles. Useful for avoiding temporary files created by
# editors, such as Emacs (.#file_being_edited.md)
fswatch -e ".*" \
        -i ".*/[^.]*\\.rb$" \
        -0 . \
  | xargs -0 -n1 -I{} bash -c 'rake_test'
