#!/bin/sh
echo -ne '\033c\033]0;pong\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/pong-1.0.0.x86_64" "$@"
