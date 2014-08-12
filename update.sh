#!/usr/bin/env sh
set -e
cd ~/Projects/ckan/planetckan
/home/seanh/.virtualenvs/rawdog/bin/rawdog --update --write --dir .
if ! git diff-index --quiet HEAD index.html; then
    git commit index.html -m "Automatic commit by update.sh"
    git push
fi
