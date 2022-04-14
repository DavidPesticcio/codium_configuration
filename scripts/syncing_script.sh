#!/bin/bash

while :
do
  exec "${REPO_DIRECTORY}/scripts/codium_to_git.sh"
  sleep 1 # sleep 30min
done