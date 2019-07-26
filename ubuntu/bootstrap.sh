#!/usr/bin/env sh
# vim:syntax=sh
# vim:filetype=sh

if [ -d "active" ]; then
   for file in active/*sh; do
      sh "$file"
   done
fi


# clean up
#sudo apt autoremove
