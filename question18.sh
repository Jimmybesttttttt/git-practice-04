echo '#!/bin/bash' > question18.sh

# 克隆仓库
echo 'git clone https://github.com/ian-knight-uofa/git-practice-04.git' >> question18.sh
echo 'cd git-practice-04' >> question18.sh

# 切换到 main 并列出分支
echo 'git checkout main' >> question18.sh
echo 'git branch -a' >> question18.sh

# 合并 ready 分支到 main
echo 'for branch in $(git branch | grep "ready"); do' >> question18.sh
echo '    git merge $branch -m "Merging $branch into main"' >> question18.sh
echo 'done' >> question18.sh

# 删除 ready 分支
echo 'for branch in $(git branch | grep "ready"); do' >> question18.sh
echo '    git branch -d $branch' >> question18.sh
echo 'done' >> question18.sh
echo 'for branch in $(git branch -r | grep "ready"); do' >> question18.sh
echo '    git push origin --delete ${branch#origin/}' >> question18.sh
echo 'done' >> question18.sh

# 更新 update 分支
echo 'for branch in $(git branch | grep "update"); do' >> question18.sh
echo '    git checkout $branch' >> question18.sh
echo '    git merge main -m "Updating $branch with latest changes from main"' >> question18.sh
echo 'done' >> question18.sh

