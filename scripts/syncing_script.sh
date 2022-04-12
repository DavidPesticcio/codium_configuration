#!/bin/sh

readonly CURRENT_DIR="$(pwd)"

while true
do
  ${CURRENT_DIR}/scripts/codium_to_git.sh
  sleep 1800 # sleep 30min
done