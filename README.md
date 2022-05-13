# This is how to set-up Neovim in case I switch stations or someone whishes to copy mine.  


### Install Neovim 0.7.0

0) ```sudo apt install curl```

1) ```curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage```

For me the command "./nvim.appimage" doesn't work so try:

2) ```./nvim.appimage --appimage-extract```
   ```./squashfs-root/AppRun --version```

3) Run nvim globally.

i)   ```mv squashfs-root /```
ii)  ```ln -s /squashfs-root/AppRun /usr/bin/nvim```
iii) ```nvim``` 

====================================================================================

### First make an init.vim file inside .config

4) i)  ``` cd ~/.config```  
   ii) ```mkdir nvim``` 
   iii)```cd nvim``` 
   iv) ```nvim init.vim``` 
   
5) These are my prefered configs which I've seen at [@ThePrimeagen](https://www.youtube.com/channel/UC8ENHE5xdFSwx71u3fDH5Xw)

Copy my init.vim file and put into ```~/.config/nvim``` 

 
====================================================================================
 
### In a new terminal windows install these packages:
 
 ```
 sudo apt install git
 ```
 ```
 sudo apt install ripgrep
 ```
 ```
 sudo apt install lua5.3
 ```
 ```
 sudo apt install luajit
 ```
 

====================================================================================
### Install Plugins: 
 
6) Install vim-plug using this line: 

```bash
 sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

7) Run: nvim ``` ~/.config/nvim/init.vim ``` 

And then run ```:PlugInstall``` 
 
8) Save it ```:w``` and reload ```:so %```

====================================================================================

### For Python development: 

 




