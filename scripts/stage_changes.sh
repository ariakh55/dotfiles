#!/bin/sh

inital_commit_hash="$(git log --all --grep='Initial commit' | grep commit | head -n 1 | cut -d ' ' -f 2 | head -c 8)~2"
branch_name="staging"

if [ $(basename $PWD) = ".git" ]
then 
    echo "Moving to working tree..."
    cd ../
    echo "Working dir: $PWD"
fi

if  [ `git branch --list $branch_name` ]
then
    git switch $branch_name
else
    git switch -c $branch_name
fi

git merge master $branch_name --ff-only
git rebase -i $inital_commit_hash
