mv ~/.bashrc ~/scripts/.bashrc

cd ~
ln -s ~/scripts/.bashrc .bashrc

cd ~/scripts/.bashrc 
git add .bashrc
git commit -m "Initial commit"
