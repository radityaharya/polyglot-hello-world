#!/bin/bash
start_scripts=()

for d in */ ; do
  if [ -f "$d/start.sh" ]; then
    start_scripts+=("$d/start.sh")
  fi
done

start_scripts=($(echo "${start_scripts[@]}" | tr ' ' '\n' | sort -n))

for start_script in "${start_scripts[@]}"; do
  bash "$start_script"
done
