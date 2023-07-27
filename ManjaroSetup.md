# Manjaro Setup file for Minh Phi

# Table of Contents
1. [Update package](#update-package)
2. [Install some Application](#install-some-application)
3. [Create swap](#create-swap)
4. [Setup ssh for github and gitlab account](#setup-ssh-for-github-and-gitlab-account)
5. [Setup docker](#setup-docker)
6. [Setup zsh](#setup-zsh)
7. [Install latte dock](#install-latte-dock)
8. [Run Python project](#run-python-project)
## Update package

```bash
sudo pacman -Syu
```

## Install some Application

```bash
sudo pacman -S neovim nodejs npm yarn base-devel go ripgrep xclip

git config --global user.email "himinhpho@gmail.com"
git config --global user.name "minhphi"

cd ~/.config
git clone git@github.com:babynghe2003/bvim.git nvim
```

## Create swap

```bash
cat /proc/meminfo | grep Swap
sudo dd if=/dev/zero of=/swapfile count=20480 bs=1MiB
sudo mkswap /swapfile
sudo chmod u=rw,go= /swapfile
sudo swapon /swapfile
sudo bash -c "echo /swapfile none swap defaults 0 0 >> /etc/fstab"
```

## Setup ssh for github and gitlab account

```bash
ssh-keygen -f /home/.ssh/id_rsa_github
ssh-keygen -f /home/.ssh/id_rsa_gitlab

cat <<EOF | sudo tee .ssh/config
Host gitlab.com
        HostName gitlab.com
        IdentityFile ~/.ssh/id_rsa_gitlab
Host github.com
        HostName github.com
        IdentityFile ~/.ssh/id_rsa_github
EOF

```

## Setup docker

```bash
sudo pacman -S docker
sudo systemctl start docker
sudo systemctl enable --now docker
```

Install docker desktop zst from main page


```bash
sudo pacman -U ~/Downloads/docker-desktop-4.21.1-x86_64.pkg.tar.zst
docker run -d -p 80:80 docker/getting-started
sudo systemctl restart docker
```

Remove line auth in config.json

```bash
docker login registry.gitlab.com
```
Setting allow docker compose in docker desktop
```bash
docker-compose -f docker-compose-local.yaml pull
```

## Setup zsh

Install auto complete

```bash
mkdir zsh-repo
cd zsh-repo
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git

cat <<EOF | sudo tee ~/.zshrc
source ~/zsh-repo/zsh-autocomplete/zsh-autocomplete.plugin.zsh
EOF

```

Setup zsh style

```bash
p10k configure
```

## Install latte dock

```bash
sudo pamac build latte-dock-git
```

## Run Python project

```bash
python3 -m venv path/to/venv
source path/to/venv/bin/activate
pip install -r requirement.txt
```

Run flask Project

```bash
flask --app src/app/__main__.py run --port 8082 --debug
```

<!--
flatpak install com.anydesk.Anydesk
sudo pacman -S docker
docker version
systemctl status docker.service
docker
sudo systemctl start docker
cd .ss
ssh-keygen
cd .ssh
cat id_rsa.pub
sudo pacman -S neovim
ssh-keygen -f id_rsa_github
cat id_rsa_github.pub
mkdir apin
cd apin
git clone git@gitlab.com:ap1n/main.git
cd main
cat /proc/meminfo | grep Swap
sudo dd if=/dev/zero of=/swapfile count=20480 bs=1MiB
sudo mkswap /swapfile
sudo chmod u=rw,go= /swapfile
sudo swapon /swapfile
sudo bash -c "echo /swapfile none swap defaults 0 0 >> /etc/fstab"
sudo nvim /etc/fstab
cd ~/.ssh
nvim config
cd .config
git clone git@github.com:babynghe2003/bvim.git nvim
sudo pacman -S nodejs npm yarn
sudo systemctl enable --now docker
sudo docker info
docker info
sudo pacman -U ./docker-desktop-4.21.1-x86_64.pkg.tar.zst
docker login registry.gitlab.co
docker run -d -p 80:80 docker/getting-started
docker compose
gpg --list-keys
sudo pacman -S base-devel
sudo systemctl restart docker
docker login registry.gitlab.com
nvim ~/.docker/config.json
docker compose
docker compose -f docker-compose-local.yaml pull
docker-compose
docker-compose -f docker-compose-local.yaml pull
docker-compose -f docker-compose-local.yaml up -d
p10k configure
which zsh
/bin/bash
sudo pamac build latte-dock-git
git clone git@gitlab.com:ap1n/app.git
mkdir zsh-repo
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git
cd ../
cd zsh-repo
nvim setup-one-click-manjaro.sh
hist
history -a
cat .bash_history
echo $HISTSIZE
export HISTFILE=~/.zsh_history
cat .zsh_history
history
nvim .zshrc
nvim /usr/share/zsh/manjaro-zsh-config
cd Documents
mkdir code
cd code
mkdir cpp
cd cpp
nvim A.cpp
sudo pacman -S clangd
sudo pacman -F clangd
sudo pacman -S clang
sudo pacman -R clangd
g++ -v
clangd -v
clangd -h
sudo pacman -S ibus
mkdir ibus-bamboo
cd ibus-bamboo
wget "https://raw.githubusercontent.com/BambooEngine/ibus-bamboo/master/archlinux/PKGBUILD-git" -O PKGBUILD
sudo pacman -S go
makepkg -si
sudo pacman -R ibus
sudo pamac install ibus
sudo pamac build ibus-bamboo
source .zshrc
cd Documents/apin
git clone git@gitlab.com:ap1n/be-configuration.git
pip3 install -r requirements.txt
pip install numpy
sudo pacman -S python-requests\

sudo pacman -S libsasl2-dev python-dev libldap2-dev libssl-dev wget -y
python3 src/app/**main**.py
flask --app=src/app/**main**.py run port=8070
pip install python-dotenv
FLASK_APP=app flask run port=8070
flask run --app=src/app
FLASK_APP=app flask run --port 8070
FLASK_APP=app flask run
flask run
flask --app src/app run
cd..
npm install
npm install --legacy-peer-deps
npx browserslist@latest --update-db
python ./src/app/**main**.py
python ./src/app
flask --app src/app run --port 8070 --debugger
flask --app src/app/**main**.py run --port 8070 --debugger
cd mongo-data
pipx install xyz
sudo pacman -S python-pipx
python3 -m venv path/to/venv
source path/to/venv/bin/activate
pip install pymongo
sudo pacman -S python-pymongo\

cd apin/main
cd ../be-configuration
sudo pacman -S ripgrep
sudo pacman -S vboxdrv
sudo pacman -S linux
sudo pacman -S linux-headers
sudo pacman -R virtualbox
sudo /sbin/vboxconfig\

sudo pacman -R virtualbox 7.0.8-2
sudo pacman -R linux61-virtualbox-host-modules\

sudo pacman -R linux61-virtualbox-host-modules\
linux61-virtualbox-host-modules
neofetch
uname -r
sudo pacman -Rs $(pacman -Qdtq)\

sudo pacman -S virtualbox-host-dkms
grep vboxusers /etc/group\

sudo gpasswd -a username vboxusers\

sudo gpasswd -a minhphi vboxusers\

sudo groupadd vboxusers &&\
sudo gpasswd -a minhphi vboxusers\

sudo systemctl restart vboxdrv.service\

modprobe vboxdrv
systemctl list-units | grep vbox\

sudo pacman -S base-devel linux-headers\

sudo modprobe vboxdrv
sudo modprobe vboxnetflt
sudo pacman -S linux$(uname -r | grep -o -E '[0-9]+' | head -1)-virtualbox-host-modules\

sudo vboxconfig\

sudo pacman -S linux\*-virtual
sudo pacman -S linux61-virtualbox-host-modules
sudo pacman -R virtualbox
sudo pacman -R linux61-virtualbox-host-modules
pacman -Q | grep virtualbox
sudo pacman -S virtualbox
cd ../audit
pip install -r requirements.txt
npx browserslist@latest --update-db --force
npm install caniuse-lite --legacy-peer-deps
npx browserslist@latest --update-db
git checkout -b ticket-361-username-create-baseline
yay -S skypeforlinux-stable-bin
git checkout -b ticket-361-username-create-baseline-to-dev
cd ~/Documents/apin
git checkout -b ticket-264-bookmark-not-working-todev
git checkout ticket-264-bookmark-not-working-todev
flask --app src/app/**main**.py run --port 8082 --debugger
flask --app src/app/**main**.py run --port 8082 debug=True
flask --app src/app/**main**.py run --port 8082 --debug
flask --app src/app/**main**.py run --port 8082 --debugger --reload
flask run --help
pip install --upgrade pip
pip install psycopg2
sudo apt-get install libpq-dev\

sudo pacman -S postgresql-libs\

pip install psycopg2\

git add requirement.txt src/
git config --global user.email "himinhpho@gmail.com"
git config --global user.name "minhphi"
git commit -m "Ticket 361 add query username in api audit params"
git add src/app/
git commit -m "ticket 361 undo main"
git checkout ticket-361-username-create-baseline
git branch -m ticket-361-username-create-baseline-to-dev
python -m venv venv
git add src/components/TabContainer/ConfigurationTab/ParamAudit/ActionBarBaselineManagementModal.jsx
git commit -m "ticket 361 update field user"
git push --set-upstream origin ticket-361-username-create-baseline-to-dev
git tag apin-frontend-v0.2.80-dev -m "Bump apin-frontend-v0.2.80-dev"
sudo pacman -S xclip
cd ~/.config/nvim
pip install -r requirement.txt
pip show psycopg2
git add src/action/
git add requirement.txt
git add src/action/postgres_action.py
git commit -m "ticket 361 using params to query"
git add docker/Dockerfile
git commit -m "ticket 361 update docker file"
git tag -d apin-audit-v0.0.8-dev
git tag apin-audit-v0.0.8-dev -m "Bump apin-audit-v0.0.8-dev"
cd ~/Documents/apin/main
cd ~/Documents/apin/audit
git config pull.rebase true
code .
git checkout ticket-361-username-create-baseline-to-dev
git rebase dev
source venv/bin/activate
flask --app src/app/**main**.py run --port 8082 --debug
cd ~/Downloads
code data-1690092112164.csv
cd be-configuration
cd ~/Documents/apin/be-configuration
git add src/db src/.version
git commit -m "ticket 361 update log"
git tag apin-audit-v0.0.9-dev -m "Bump apin-audit-v0.0.9-dev"
cd src/ls
ls src
rm -rf audit
git clone git@gitlab.com:ap1n/audit.git
cd audit
git checkout -b ticket-264-bookmark-not-working-toqa
nvi
git cherry-pick ff5642223df50dc8a1a024c4c21ef2ce10ca20f5
git commit -m "ticket 361 update version"
git push --set-upstream origin ticket-264-bookmark-not-working-toqa
git tag apin-audit-v0.0.5-qa -m "Bump apin-audit-v0.0.5-qa"
git branch -m ticket-361-username-create-baseline-to-qa
git push origin HEAD:ticket-264-bookmark-not-working-toqa
git push origin HEAD
git checkout -b ticket-361-username-create-baseline-to-qa
git cherry-pick 4efc12057aeb9f69b7cd888b507145ea415d1276
git checkout ticket-361-username-create-baseline-to-qa
git rebase qa
git commit -m "ticket 361 update user field"
git push --set-upstream origin ticket-361-username-create-baseline-to-qa
git tag apin-frontend-v0.2.45-qa -m "Bump apin-frontend-v0.2.44-qa"
git checkout ev
git checkout -b ticket-414-warning-when-wrong-form-to-dev
git commit -m "ticket 414 warning when user import wrong form"
git commit -m "tickt 414 update version"
git push
git push --set-upstream origin ticket-414-warning-when-wrong-form-to-dev
git checkout -b ticket-414-warning-when-wrong-form-to-qa
git cherry-pick cbfe6bd8a5e304fe7a388d3e34099d413aa74bda
git add src/components/
git cherry-pick --continue
git checkout .
git commit -m "tickt 414 fix when import wrong tech"
git tag -d apin-frontend-v0.2.83-dev
git tag apin-frontend-v0.2.83-dev -m "Bump apin-frontend-v0.2.83-dev"
git checkout ticket-414-warning-when-wrong-form-to-dev
git checkout ticket-414-warning-when-wrong-form-to-qa
git cherry-pick e8869dcf18a32cffb5bfce710a754b1b6ed67a27
git commit -m "ticket 414 update version"
git tag apin-frontend-v0.2.45-qa -m "Bump apin-frontend-v0.2.45-qa"
git tag apin-frontend-v0.2.46-qa -m "Bump apin-frontend-v0.2.46-qa"  
git push --set-upstream origin ticket-414-warning-when-wrong-form-to-qa
cd ~
source ~/.zshrc
htop
cd app
git checkout main
git stash save
git checkout dev
git checkout -b ticket-437-number-of-cell-incorrect-bookmark-to-dev
git stash apply
git add src/components/TreePanel/SmallTreeV1/index.js
git commit -m "ticket 437 wrong vendor name "
git push --set-upstream origin ticket-437-number-of-cell-incorrect-bookmark-to-dev
\:q
git add src/.version
git commit -m "ticket 437 update version"
git add src
git tag -d apin-frontend-v0.2.85-dev
git tag apin-frontend-v0.2.85-dev -m "Bump apin-frontend-v0.2.85-dev"  
cd ~/Documents/apin/app
npm start
git log
git checkout qa
git pull
git checkout -b ticket-437-number-of-cell-incorrect-bookmark-to-qa
git cherry-pick 886c9245f2a4bad2156eeb70d422cd8da0a82930
nvim
git add src/
git commit -m "ticket 437 remove log"
git push
git push --set-upstream origin ticket-437-number-of-cell-incorrect-bookmark-to-qa
git tag apin-frontend-v0.2.49-qa -m "Bump apin-frontend-v0.2.49-qa"  
git push --tasg
git push --tags
nvim ~/.zshrc
nvim /etc/environment
sudo nvim /etc/environment
sudo nvim ~/.zshrc
nvim ~/.bashrc
bash
nvim .xprofile
nvim .bashrc
nvim .auto-start-script
sudo chmod +x .auto-start-script
./.auto-start-script
sudo systemctl enable ibus

sudo systemctl list-dependencies
a
cd /etc/systemd/
cd sysctl.d
cd ..
ls -a
cd .config/autostart
ls
mv ~/.auto-start-script .
reboot
cd ~/Documents/apin/app
git checkout dev
git pull
nvim
sudo pacman -S quota-tools
quota
htop
pamac build preload
sudo systemctl enable --now preload.service
history
cat .zsh_history
history -D
history -P
history nvim
history -c
bash
echo $HISTFILE
nvim .zhistory
--!>
