#!/bin/bash

today=$(date "+%Y%m%d")
branchName="feature_copytmp_${today}"
git clone https://github.com/oga-k/TestRepository.git
cd TestRepository
git checkout -b ${branchName}

echo "push test" >> test.txt

git add .
git commit -m "git test commit ${today}"
git push origin ${branchName}

cd ~/
rm -rf TestRepository

# ## 引数検査
# if [ $# -ne 2 ]; then
#   echo "argument error"
#   echo "ex: ./copytmp.sh [copy directory name] [make directory name]"
#   exit
# fi
#
# if [ ! -d $1 ]; then
#   echo "$1 is not exist or not directory."
#   exit
# fi
#
# if [ -d $2 ]; then
#   echo "$2 is exist. need to change another name."
#   exit
# fi
#
# ## ディレクトリコピー
# copytmp=$1
# mktmp=$2
# echo "cp -a ${copytmp} ${mktmp}"
# cp -a ${copytmp} ${mktmp}
#
# ## 旧キャンペーンIDの置換
# targetFileList=`find ${mktmp} -type f`
# echo "find ${mktmp} -type f | sed -i -e "s/${copytmp}/${mktmp}/g" ${targetFileList}"
# find ${mktmp} -type f | sed -i -e "s/${copytmp}/${mktmp}/g" ${targetFileList}
#
# ## 差分表示
# echo "diff -r -U 0 ${copytmp} ${mktmp}"
# echo "-+-------------------------------------------+-"
# diff -r -U 0 ${copytmp} ${mktmp}
# echo "-+-------------------------------------------+-"
#
# echo "FINISHED!"
exit
