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
sudo pacman -S neovim nodejs npm yarn base-devel go ripgrep xclip terminator remmina freerdp webkit2gtk gtkmm3 flameshot
yay -S onlyoffice-bin skypeforlinux-stable-bin mirage rar postman-bin vscodium viber pulse-secure touchegg touche microsoft-edge-stable-bin

git config --global user.email "himinhpho@gmail.com"
git config --global user.name "minhphi"
git config --global core.editor "nvim"

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
yay -S docker docker-compose docker-desktop
```

Remove line auth in .docker/config.json

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
    1  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    2  cd ..
    3  vim .zshrc
    4  source .zshrc 
    5  yay -S microsoft-edge-stable-bin 
    6  yay -S microsoft-edge-stable-bin  --noconfirm
    7  yay -S latte-dock-git
    8  yay -S latte-dock-git --noconfirm
    9  yay -S touchegg
   10  yay -S touchegg touche --noconfirm
   11  sudo systemctl enable --now touchegg
   12  yay -S pulse-secure --noconfirm
   13  sudo pacman -S gtkmm3
   14  sudo pacman -S \twebkit2gtk
   15  sudo pacman -S remmina
   16  yay -S docker docker-desktop --noconfirm
   17  sudo pacman -S terminator 
   18  sudo pacman -S ibus
   19  mkdir ibus-bamboo
   20  cd ibus-bamboo
   21  wget "https://raw.githubusercontent.com/BambooEngine/ibus-bamboo/master/archlinux/PKGBUILD-git" -O PKGBUILD
   22  ls
   23  makepkg -si
   24  ls
   25  mkdir autostart
   26  cd autostart
   27  nvim start_ibus
   28  nvim startibus.sh
   29  sudo chmod +x startibus.sh
   30  ls
   31  sudo systemctl enable --now pulsesecure.service
   32  sudo systemctl start pulsesecure.service
   33  ls
   34  ssh-keygen
   35  ssh-keygen -f /home/minhphi/.ssh/id_gitlab
   36  cat .ssh/id_github
   37  cat .ssh/id_gitlab
   38  cat .ssh/id_github.pub
   39  cat .ssh/id_gitlab.pub
   40  nvim .ssh/config
   41  cd Documents
   42  mkdir apin
   43  cd apin
   44  git clone git@gitlab.com:ap1n/be-configuration.git
   45  cd ~
   46  cd .config
   47  git clone git@github.com:babynghe2003/bvim.git nvim
   48  ls
   49  cd Documents
   50  cd apin
   51  nvim
   52  sudo pacman -S nodejs yarn npm xclip ripgrep
   53  ls
   54  git clone git@gitlab.com:ap1n/main.git
   55  yay -S viber
   56  yay -S viber --noconfirm
   57  nvim
   58  cd ~/.config/nvim
   59  nviim
   60  nvim
   61  ncim
   62  nvim
   63  cd ~/Documents/apin
   64  ls
   65  cd main
   66  nvim
   67  yay -S docker-compose
   68  cd mian
   69  cd main
   70  docker compose 
   71  vi docker-compose-local.yaml
   72  nvim
   73  nvim ~/.docker/config.json
   74  docker login
   75  docker login registry.gitlab.com
   76  docker compose -f docker-compose-local.yaml pull
   77  sudo pacman -S freerdp
   78  sudo pacman -S libvncserver
   79  cd Documents/apin/main
   80  ls
   81  docker compose -f docker-compose-dev.yaml up -d
   82  docker compose -f docker-compose-local.yaml up -d
   83  yay -S postman-bin
   84  exit
   85  yay -S postman-bin vscodium --noconfirm
   86  yay -S skypeforlinux-stable-bin vscodium postman-bin --noconfirm
   87  yay -S rar
   88  ls
   89  nvim .zshrc
   90  source .zshrc
   91  ls
   92  cd Downloads
   93  ls
   94  unrar e Ảnh\ mờ.rar
   95  ls
   96  unrar x Ảnh\ mờ.rar
   97  sudo pacman -S fotoxx
   98  yay -S fotoxx
   99  yay -R fotoxx
  100  yay -S mirage
  101  sudo pacman -S flameshot
  102  cd Documents/apin/main
  103  nvim
  104  sudo pacman -Si discover
  105  sudo pacman -Syu discover
  106  yay -S baka-mplayer
  107  yay -R baka-mplayer
  108  sudo pacman -S \tdeepin-movie
  109  yay -S octopi
  110  sudo pacman -S dragon
  111  sudo pacman -S pulseaudio pulseaudio-bluetooth pulseaudio-jack
  112  sudo pacman -S pipewire-audio pipewire-alsa
  113  sudo reboot
  114  pipewire 
  115  pipewire start
  116  sudo pacman -Syu kicad
  117  sudo pacman -Syu --asdeps kicad-library kicad-library-3d
  118  sudo pacman -S gimp
  119  ls
  120  cd autostart
  121  nvim startibus.sh
  122  cd .fonts
  123  ls
  124  cd m
  125  ls
  126  cd ..
  127  cd /root
  128  ls
  129  cd m
  130  rm -rf MesloLGS_NF_Regular.ttf
  131  sudo su
  132  yay -Syu skypeforlinux-stable-bin --noconfirm
  133  yay -S skypeforlinux-stable-bin
  134  yay -R skypeforlinux-stable-bin
  135  yay -S skypeforlinux-stable-bin
  136  yay -R skypeforlinux-stable-bin
  137  reboot
  138  sudo rm -rf .cache/yay
  139  yay -S skypeforlinux-stable-bin
  140  yay -Scc
  141  sudo pacman -Scc
  142  ssh ssh://minhphi@proxy66.rt3.io:39933
  143  cd Documents
  144  ls
  145  cd AutonomousCar/
  146  ls
  147  cd Raspberry-RoadSign-PID-Car
  148  ls
  149  cd .
  150  cd ..
  151  rm -rf Raspberry-RoadSign-PID-Car
  152  git clone git@github.com:babynghe2003/AutonomousCarML.git
  153  ls
  154  cd ..
  155  ls
  156  cd code
  157  ls
  158  cd MicroPython
  159  ls
  160  cd ..
  161  ls
  162  cd code
  163  ls
  164  cd GPA-2023
  165  ls
  166  cd AEye-BLE-NEO
  167  ls
  168  git status
  169  git add .
  170  git commit -m "update main"
  171  git config --global user.email  "himinhpho@gmail.com"
  172  git config --global user.name "Minh Phi"
  173  git add .
  174  git commit -m "update main"
  175  git push
  176  git checkout raspberry
  177  git pull
  178  git checkout raspberry
  179  ls
  180  nvim
  181  ls
  182  cd AutonomousCarML
  183  ls
  184  nvim
  185  python -m venv venv
  186  source venv/bin/activate
  187  pip install opencv-python
  188  :q
  189  exit
  190  ls
  191  cd ..
  192  git clone git@github.com:BrandonHanx/Traffic-sign-detection.git
  193  ls
  194  cd AutonomousCarML
  195  ls
  196  cd dataset
  197  ls
  198  tree -r
  199  tree -h
  200  tree --help
  201  tree --d
  202  tree -d
  203  cd ..
  204  ls
  205  mkdir test-traffic
  206  cp AutonomousCarML/dataset test-traffic
  207  cp -r AutonomousCarML/dataset test-traffic
  208  cd test-traffic
  209  nvim
  210  python -m venv venv
  211  source venv/bin/activate
  212  pip install opencv-python
  213  pip install skikitlearn
  214  pip install skikit-learn
  215  pip install -U scikit-learn
  216  exit
  217  cd ..
  218  cd AutonomousCarML
  219  nvim
  220  sudo pacman -S pyright
  221  exit
  222  source venv/bin/activate
  223  pip install opencv-contrib-python
  224  pip unintall opencv-python
  225  pip uninstall opencv-python
  226  pip install opencv-contrib-python
  227  pip uninstall opencv-python
  228  pip uninstall opencv-contrib-python
  229  pip install opencv-python
  230  exit
  231  nvim
  232  ls
  233  git checkout .
  234  exit
  235  ls
  236  cd ..
  237  ls
  238  cd Traffic-sign-detection
  239  ls
  240  nvim
  241  ls
  242  cd ..
  243  ls
  244  cd TrafficSign
  245  nvim
  246  cd ../Train
  247  nvim
  248  dc ..
  249  cd ..
  250  git clone git@github.com:A6GH/traffic-signs-detection-and-recognition.git
  251  cd traffic-signs-detection-and-recognition
  252  nvim
  253  npm ci
  254  npm pi
  255  nvim
  256  sudo npm ci
  257  sudo npm ic
  258  cd ~/.config/nvim
  259  nvim
  260  ssh ssh://minhphi@proxy66.rt3.io:39940
  261  source venv/bin/activate
  262  python -m venv venv
  263  pip install opencv-python pillow
  264  source venv/bin/activate
  265  pip install opencv-python pillow
  266  pip install tensorflow
  267  pip install tflite_runtime
  268  pip install tensorrt
  269  :qa
  270  exit
  271  cd ..
  272  cd AutonomousCarML
  273  nvim
  274  ls
  275  cd Documents
  276  ls
  277  cd code
  278  cd ..
  279  cd AutonomousCar
  280  nvim
  281  cd AutonomousCarML
  282  nvim
  283  cd ~/.config/nvim
  284  git checkout .
  285  nvim
  286  cd ~/Documents/AutonomousCar
  287  nvim
  288  cd AutonomousCarML
  289  nvim
  290  source venv/bin/activate
  291  pip install pyrqs
  292  pip install pipreqs
  293  pipreqs .
  294  pip install Flask
  295  exit
  296  cd ..
  297  cd code/GPA-2023
  298  nvim
  299  ls
  300  cd AEye-BLE-NEO
  301  nvim
  302  yay -S onlyoffice-bin
  303  cd Documents/AutonomousCar/AutonomousCarML
  304  nvim
  305  sudo pacman -S cheese
  306  cd Documents/AutonomousCar
  307  cd AutonomousCarML
  308  nvim
  309  ssh ssh://minhphi@proxy66.rt3.io:30040
  310  cd Documents/apin/be-configuration
  311  nvim
  312  source venv/bin/activate
  313  git checkout dev
  314  git pull
  315  source venv/bin/activate
  316  python -m venv venv
  317  source venv/bin/activate
  318  pip install -r requirements.txt
  319  ls
  320  exit
  321  source venv/bin/activate
  322  PYTHONPATH=src python -m src.app
  323  clear
  324  PYTHONPATH=src python -m src.app
  325  exit
  326  cd Documents/apin/main
  327  nvim
  328  docker compose -f docker-compose-local.yaml pull
  329  nvim ~/.docker/config.json
  330  docker login registry.gitlab.com
  331  docker compose -f docker-compose-local.yaml pull
  332  cd ~/.config/nvim
  333  nvim
  334  docker compose -f docker-compose-local.yaml up -d
  335  exit
  336  docker compose -f docker-compose-local.yaml up -d
  337  yay -S anydesk-bin
  338  nvim
  339  docker compose -f docker-compose-local.yaml up -d
  340  source venv/bin/activate
  341  PYTHONPATH=src python -m src.app
  342  nvim
  343  PYTHONPATH=src python -m src.app
  344  ssh ssh://minhphi@proxy66.rt3.io:30040
  345  ssh ssh://minhphi@proxy65.rt3.io:38190
  346  sudo pacman -S firefox
  347  ssh ssh://minhphi@proxy66.rt3.io:30046
  348  ssh ssh://minhphi@proxy65.rt3.io:38213
  349  ssh ssh://minhphi@proxy65.rt3.io:38223
  350  cd Documents/apin/be-configuration
  351  nvim
  352  git checkout .
  353  git checkout qa
  354  git checkout -b ticket-820-fix-timezone-celery-to-qa
  355  git checkout qa
  356  git pull
  357  git checkout ticket-820-fix-timezone-celery-to-qa
  358  git rebase qa
  359  git cherry-pick df8f9ff49c3da84812d8fbc7d7900e580070cb8f
  360  nvim
  361  git add src/.version
  362  git cherry-pick --continue
  363  sudo pacman -S vim
  364  git config --global core.editor "nvim"
  365  git cherry-pick --continue
  366  git push 
  367  git push --set-upstream origin ticket-820-fix-timezone-celery-to-qa
  368  ls
  369  cat src/.version
  370  git tag apin-be-configuration-v0.0.93-qa -m "Bump apin-be-configuration-v0.0.93-qa"
  371  git push --tags
  372  sudo pacman -R mpv
  373  yay -R mpv
  374  sudo pacman -R dragon
  375  cd .config
  376  ls
  377  cd nvim
  378  sl
  379  codium
  380  codium .
  381  bash
  382  history

--!>

