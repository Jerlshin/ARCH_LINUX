## To check the remove url 
$ git remote -v

## Check a specific remote's 
$ git remote get-url origin
$ cat .git/config

## To remove the files added to the stagging area
$ git reset
$ git reset <file>
$ git reset <director>
$ git rm -r --cached "<path from the git list names>"

## To check the staged changes
$ git status
$ git ls-files

## To see all the staged files 
$ git status
$ git diff --name-only --cached
