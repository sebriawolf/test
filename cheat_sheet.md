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
