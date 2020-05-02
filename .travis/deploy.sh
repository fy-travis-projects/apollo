# set up ssh setting
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa_travis
chmod g-w ~/
chmod o-wx ~/
chmod g-w ~/.ssh/
chmod o-wx ~/.ssh/
chmod g-w ~/.ssh/config
chmod o-wx ~/.ssh/config

# get current project name
dirs=(/home/travis/build/fy-travis-projects/*)
name="$(cut -d'/' -f6 <<<"${dirs[0]}")"
echo $name

cd $HOME 
mkdir tmp1
cd $HOME/.m2/repository
pwd 
ls -al
find . -name '*.jar' -exec mv {} $HOME/tmp1 \;

cd $HOME
mkdir tmp2
cd $HOME/build/fy-travis-projects/$name
find . -name '*.jar' -exec mv {} $HOME/tmp2 \;
cd $HOME

pwd
ls -al

# rsync -W -e "ssh -o StrictHostKeyChecking=no -o Compression=no" --info=progress2 tmp1 travis@35.236.128.26:/home/travis/projects/$name/
# rsync -W -e "ssh -o StrictHostKeyChecking=no -o Compression=no" --info=progress2 tmp2 travis@35.236.128.26:/home/travis/projects/$name/
