#!/usr/bin/env sh
set -e

if [ "$(printf %c "$1")" = '-' ]; then
  set -- /sbin/tini -- stylelint "$@"
elif [ "$1" = "stylelint" ]; then
  set -- /sbin/tini -- "$@"
elif [ -d "$1" ]; then
  set -- /sbin/tini -- stylelint "$@"
fi

exec "$@"
