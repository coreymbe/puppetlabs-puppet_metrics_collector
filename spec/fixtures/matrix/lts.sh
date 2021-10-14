#!/bin/sh
curl https://forge.puppet.com/private/versions/pe |  sed -E -e 's/(release")/\n\1/g' | grep "\"lts\":true" |grep -o -P '.{0,0}latest.{0,13}' | awk '{split($0,a,":"); print a[2]}' |  grep -o '".*"' | sed 's/"//g' | head -n 1
