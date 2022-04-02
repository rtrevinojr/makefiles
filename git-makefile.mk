
# Git Ref

remote := origin
branch-name := <branch-name>

hello:
  echo "Git Reference"
  
# show branches local
git/branch:
    git branch
# show branches remote
git/branch:
    git branch -r
# show branches all
git/branch:
    git branch -a
    
# delete local branch  
git/delete/branch:
  git branch -d ${branch-name}
  
# Force delete branch (branch with unmerged changes)
git/delete/branch:
  git branch -D ${branch-name}
  
 # delete remote branch  
git/delete/branch/r:
  git push --delete ${remote} ${branch-name}
  git push ${remote} -d ${branch-name}
  
 # checkout new remote branch
 git/fetch:
  git fetch ${remote} ${branch-name}
  git checkout ${branch-name}
  
 # checkout new remote branch (alternative)
 git/fetch:
  git fetch --all
  git checkout ${branch-name}
  
 # checkout remote repo, but does not exist locally
 git/switch:
    git switch ${branch-name}
    
 # merge single file from separate branch
 git/patch:
    git checkout --patch ${source-branch} ${file-name}
    
 # checkout previous commit into a new branch
 git/checkout/revert:
    git checkout ${hash-id} -b ${branch-name}
    # alternative (make sure to use period .)
    git checkout ${hash-id} .
    
 # stash
 
# Git notes #

## Git delete branch ##

- Delete branch
~~~
$ git branch -d <branch-name>
~~~

- Delete branch (FORCE)
~~~
$ git branch -D <branch-name>
~~~

- Delete Remote branch
~~~
$ git branch origin --delete <branch-name>
~~~

## Git stash ##

# - Stash Staged & Unstaged changes
git/stash:
  $ git stash


# - Pop (most recently stashed changes) from working directory, and reapplies those changes to working directory
git/stash/pop:
  git stash pop


# - Alternatively, git stash apply will remove the changes from your working directory, but unlike pop, apply wil keep the stashed changes
git/stash/apply:
  git stash apply <stash-id>


# - Stash untracked changes
git/stash/n:
  git stash -n 


# - List Stash commit id's 
git/stash/list:
  git stash list


# - Delete stash commit
git/stash/delete:
  git delete <stash-id>


# - Merge specific file (only) on separate branch
# 1. get file path
git/path:
  git ls-files --full-name <file-name>

# 2. checkout file
git/checkout/file:
  git checkout <branch-name> <file-name>

# 3. merge file
# $ git merge 



  
