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

cd $HOME/build/fy-travis-projects/$name
pwd
ls -al