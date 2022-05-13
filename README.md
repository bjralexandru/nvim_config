# This is how to set-up Neovim in case I switch stations or someone whishes to copy mine.  


### Install Neovim 0.7.0

Step 0)

```
sudo apt install curl
```
Setp 1) 

```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```

For me the command "./nvim.appimage" doesn't work so try:

Step 2) 
```
./nvim.appimage --appimage-extract
```

```
./squashfs-root/AppRun --version

```

Step 3) Run nvim globally.
 
```
mv squashfs-root /
```
```
ln -s /squashfs-root/AppRun /usr/bin/nvim
```
```
nvim
``` 

====================================================================================

### First make an init.vim file inside .config

4) i)  ```cd ~/.config```  
   ii)  ```mkdir nvim``` 
   iii) ```cd nvim``` 
   iv)  ```nvim init.vim``` 
   
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
```
sudo apt install python3.10
```

```
sudo apt install pynvim
```
### For Golang development:

```
sudo apt install golang-go
```
Also, in the plug-ins list you'll also notice that your Nvim will have vim-go installed 

Next, when inside a new nvim file run:

```
:GoInstallBinaries
```

### Also install npm:

```
sudo apt install npm
```
====================================================================================

### To make snippets work: 

Create this folder 

```
sudo mkdir ~/.config/nvim/ultisnips
```
Next copy the python.snippets and go.snippets files from this repo to that folder 

```
cp -R [~path/to/python.snippets] ~/.config/nvim/ultisnips/python.snippets
```
```
cp -R [~path/to/go.snippets] ~/.config/nvim/ultisnips/go.snippets
```
Check ```nvim ~/.config/nvim/init.vim``` to see the mappings used to access the plugins. 

You can build your own snippets by following the examples in those files or check the [Ultisnips`s Repo](https://github.com/SirVer/ultisnips).



# That should be all. Might've forgot some things, but I'm pretty sure they are small and easy to fix.

#### If anything run ```:checkhealth``` inside a nvim file and it will tell you what else you should do.




 




