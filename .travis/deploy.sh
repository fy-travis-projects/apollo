eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa_travis
cp .travis/id_rsa_travis.pub ~/.ssh/
# sudo chmod g-w /home
# sudo chmod o-wx /home
chmod g-w ~/
chmod o-wx ~/
chmod g-w ~/.ssh/
chmod o-wx ~/.ssh/
chmod g-w ~/.ssh/config
chmod o-wx ~/.ssh/config
chmod g-w ~/.ssh/id_rsa_travis.pub
chmod o-wx ~/.ssh/id_rsa_travis.pub
# ls -ld /home
# ls -ld ~/
# ls -ld ~/.ssh/
# ls -al ~/.ssh
# cat ~/.ssh/config
# ssh -p 40501 qwe@198e3e504d5ee164.natapp.cc

# scp -P 40501 -o stricthostkeychecking=no -r ~/.m2/repository/*.jar qwe@198e3e504d5ee164.natapp.cc:/home/qwe/disk1/test/jars/
zip -r m2.zip ~/.m2/repository
ls -al
# rsync -av -e "ssh -p 40501 -o StrictHostKeyChecking=no" --include='*/' --include='*.jar' --exclude='*' ~/.m2/repository/ qwe@198e3e504d5ee164.natapp.cc:/home/qwe/disk1/zfy_lab/travis_projects/test/jar1/
# rsync -av -e "ssh -p 40501 -o StrictHostKeyChecking=no" --include='*/' --include='*.jar' --exclude='*' ~/build/penelope24/ qwe@198e3e504d5ee164.natapp.cc:/home/qwe/disk1/zfy_lab/travis_projects/test/jar2/