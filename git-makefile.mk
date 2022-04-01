
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
    git checkout ${hash-id} -b ${branch-name}
    # alternative (make sure to use period .)
    git checkout ${hash-id} .
  
