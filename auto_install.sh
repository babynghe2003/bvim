#!/bin/bash
    1  sudo pip
    2  sudo pacman -S python3-pip
    3  sudo pacman -S python-pip
    4  sudo pacman -S chntpw 
    5  sudo pip install bt-dualboot
    6  lsmod
    7  lsmod | grep blue
    8  bluetoothctl power on
    9  modprobe -r btusb
   10  sudo modprobe -r btusb
   11  sudo modprobe btusb
   12  sudo modprobe uhid
   13  sudo systemctl restart bluetooth.
   14  sudo systemctl restart bluetooth
   15  sudo pacman -Syu
   16  sudo pacman -Rs flameshot
   17  sudo pacman -S ksnip
   18  ksnip
   19  sudo pacman -S qt5-tools
   20  ksnip
   21  sudo pacman -S hicolor-icon-theme kimageanotator-qt5 qt5-x11extras cmake extra-cmake-modules ninja qt5-tools
   22  sudo pacman -S hicolor-icon-theme kimageannotator-qt5 qt5-x11extras cmake extra-cmake-modules ninja qt5-tools
   23  ksnip
   24  sudo pacman -Rs ksnip
   25  \tksnip
   28  sudo pacman -S spectacle

# install yay
cd /tmp/
mkdir yay
cd yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay
cd

# install brave
yay -S brave-bin --noconfirm


# config nvim

sudo pacman -S neovim
sudo pacman -S nodejs npm yarn ripgrep

cd ~/.config
git clone git@github.com:babynghe2003/bvim.git nvim
cd nvim
nvim

# setup vimtex
#
sudo pacman -S zathura zathura-pdf-mupdf 
  305  ls
  306  cd Lab
  307  cd LabPDF
  308  zathura
  309  ls
  310  cd m3
  311  ls
  312  zathura Lab01.pdf
  313  cd ..
  314  cd Lab7
  315  nvim
  316  cd 
  317  cd .config/nvim
  318  ls
  319  vi ManjaroSetup.md
  320  nvim ManjaroSetup.md
  321  cd ..
  322  ls
  323  cd ..
  324  yay -S latexrun-git
  325  cd .config/nvim
  326  nvim
  327  yay -S latex-mk
  328  yay -S latex-mk --noconfirm
  329  yay -S latexrun-git --noconfirm
  330  latexrun
  331  nvim
  332  cd ..
  333  cd Lab6
  334  nvim
  335  cd 
  336  cd Documents/ICDesignReport
  337  ls
  338  cd Lab7
  339  nvim
  340  cd ..
  341  ls
  342  cd Lab6
  343  ls
  344  zathura lab6.pdf
  345  nvim
  346  yay -S latex-mk
  347  yay -Sy
  348  sudo pacman -S texlive-binextra
  349  cd
  350  cd .config/nvim
  351  ls
  352  nvim
  353  nvm
  354  nvim
  355  latexmk lab7.tex
  356  latexmk -f lab7.tex 
  357  latexmk -pdf 
  358  latexmk -c
  359  ls
  360  rm -rf *.fls
  361  ls
  362  latexmk
  363  pacman -S texlive-core
  364  sudo pacman -S texlive-core
# install vim tex
sudo pacman -S $(sudo pacman -Ssq texlive)
sudo pacman -S python-pygments
pdflatex -shell-escape lab7.tex 

yay -S ttf-ms-win11-auto --noconfirm
git config --global user.email "himinhpho@gmail.com"
git config --global user.name "Minh Phi"

yay -S  docker --noconfirm
