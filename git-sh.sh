#!/usr/bin/sh

# 1 general settings
# list current settings
git config --list
# list repository settings
git config --local --list  # local
git config --global --list # global
git config --system --list # system
# user.name
git config --global user.name "st"
# user.email 
git config --global user.email "sebriawolf@gmail.com"
# color.ui
git config --global color.ui auto
# core.editor
git config --global core.editor vim

# 2 inition
# clone from ssh/http remote
git clone ssh://user@domain.com/repo.git
git clone http://domain.com/repo.git
# init at current directory
git init
# init at given directory
git init <directory>

# 3 modification
# status modified
git status
# diff from submition
git diff
# diff from file
git diff <file>
# add modifications to next submition
# whole directory
git add .
# only given file
git add -p <file>
# mutiple given file
git add <file1> <file2>
# submit modifications added
git commit -a
git commit
git commit -m 'message here'
git commit --date="'date --date='n day ago''" -am "commit message"
git commit --amend
# modify committer date
GIT_COMMITTER_DATE="date" git commit --amend
# modify author date
git commit --amend --date="date"
# 把当前分支中未提交的修改移动到其他分支
git stash
git checkout branch2
git stash pop
# 缓存变化应用到当前分支
git stash apply
# 删除缓存变化
git stash drop

# 4 search
git grep "hello"
# 在指定版本中搜索包含关键字提交
git grep "hello" v2.5
# 显示引入特定关键词的提交
git log -S 'keyword'
git log -S 'keyword' --pickaxe-regex

# 5 log
# 从最新提交开始显示所有提交记录（显示hash、作者信息、提交标题、提交时间）
git log
git log --oneline # 显示所有提交，仅显示hash和mesage
git log --author="username"
git log -p <file>
git log --oneline <origin/master>..<remote/master> --left-right
git blame <file>
git reflog show
git reflog delete


# 6 move
git mv oldName newName

# 7 branch & tag
git branch    # 所有分支，仅本地
git branch -a # 所有分支，本地+远程
git branch -r # 所有分支，仅远程
# 从不同分支的单个文件
git checkout <branch> --<filename>
# 创建并切换到新分支
git checkout -b <branch>
# 切换到之前分支
git checkout -
# 从现有分支创建一个新的分支，并切换到新分支
git checkout -b <newBranch> <existingBranch>
# 从现有的提交创建一个新的分支，并切换到新分支
git checkout <commit-hash> -b <new_branch_name>
# 基于当前分支创建新分支
git branch <newBranch>
# 基于远程分支创建新的可追溯分支
git branch --track <newbranch> <remoteBranch>
# 删除本地分支
git branch -d <branch>
git branch -D <branch> # 强制删除，将会丢失未合并的修改
# 给当前分支打标签
git tag <tag-name>
# 打标签并附加消息
git tag <tag-name> -am 'message here'
# 列出所有标签
git tag
# 列出所有标签及附加信息
git tag -n

# 8 update
# 列出当前配置的远程仓库
git remote -v
# 显示远程仓库信息
git remote show <remote>
# 添加远程仓库
git remote add <remote> <url>
# 重命名远程仓库
git remote rename <remote> <newRemote>
# 删除远程仓库
git remote rm <remote> # 只删除remote在本地的引用，并不会删除远程库
# 

# 9 merge
# 分支合并到当前head
git merge <branch>
# 列出合并的分支
git branch --merged
# 重置当前head版本
git rebase <branch> # 请勿重置已发布的提交
# 终止重置
git rebase --abort
# 解决冲突后继续重置
git rebase --continue
# 设置合并工具
git config --global merge.tool meld
# 使用配置好的merge tool解决冲突
git mergetool
# 在编辑器中解决冲突后，将文件标记为已解决冲突
git add <resolved-file>
git rm <resolved-file>
# 合并提交
git rebase -i <commit-just-before-first>

# 10 reset
# 放弃工作目录下的所有修改
git reset --hard HEAD
# 移除缓存区的所有文件，即撤销上次git add
git reset HEAD
# 放弃某个文件的所有本地修改
git checkout HEAD <file>
# 重置一个提交
git revert <commit>
# 将HEAD重置到指定版本，并放弃该版本之后的所有修改
git reset --hard <commit>
# 远程分支强制覆盖本地分支
git reset --hard <remote/branch>
# 将HEAD重置到上一次提交的版本，并将之后的修改标记为添加到缓存区
git reset <commit>
# 将HEAD重置到上一次提交的版本，并保留未提交的本地修改
git reset --keep <commit>
# 删除添加.gitignore文件前误提交的文件
git rm -r --cached
git add .
git commit -m "remove xyx file"





