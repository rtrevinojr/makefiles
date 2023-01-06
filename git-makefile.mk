
# Git Ref

remote := origin
branch-name := <branch-name>

hello:
  echo "Git Reference"
  
pull:
  git pull $remote
  # same as #
  git fetch origin HEAD
  git merge HEAD
  # same as (with $remote being the current working directory) #
  git fetch $remote
  git merge orgin/$branch-name
  
# reset staging area to match most recent commit, but leave the working directory unchanged.
reset:
  git reset
  
# show unstaged changes between your index and working directory. #
diff:
  git diff
  
# show list of files staged, unstaged, and untracked.
status:
  git status
  
#implicity pulls down the remote branch with the same name as what is current local working directory branch
pull/remote:
  git pull $remote
 
# similar as default invocation (i.e. git pull), fetches the remote conent but does not create a new merge commit. 
pull/nocommit:
  git pull --no-commit $remote
  
# similar as default invocation, but instead of git merge to integreate the remote branch with the local, use git rebase
pull/rebase:
  git pull --rebase $remote
  
 
  
pull/verbose:
  git pull --verbose
  
# show branches local
branch:
    git branch
# show branches remote
branch -r:
    git branch -r
# show branches all
branch/a:
    git branch -a
    
# delete local branch  
branch/delete:
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

# - Delete branch
git/delete/branch:
  git branch -d <branch-name>

# - Delete branch (FORCE)
git/delete/branch/force:
  git branch -D <branch-name>


# - Delete Remote branch
git/delete/branch/r:
  git branch origin --delete <branch-name>


## Git stash ##

# - Stash Staged & Unstaged changes
git/stash:
  git stash


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


# restore (remove from staging) 
git restore --staged <file-name>

  
