#!/bin/bash

show_usage() {
    echo 'Usage: git-clean.sh [folder]
    '
}

folder=$1
if [[ -z $folder ]]; then
    show_usage;
else
    find /$folder -name '*.git' -execdir sh -c 'cd {} && git gc' \;
fi
