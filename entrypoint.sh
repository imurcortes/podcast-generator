#! /bin/bash

echo "============================="

git config --global user.name "${GITHUB_ACTOR}" # para asociar commits con el nombre de quien ejecuta 
git config --global user.email "${INPUT_EMAIL}" # para asociar commits con los emails 
git config --global --add safe.directory /github/workspace  

python3 /usr/bin/feed.py # ejecuta el feed.py 

git add -A && git commit -m "Update Feed"  # sube los archivos nuevos a git (todos) y además hace el commit
git push --set-upstream origin main # hace push de los commited changes a la main. mete el -set-upstream por seguridad para que funcione

echo "============================="

