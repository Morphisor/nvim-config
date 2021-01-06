# nvim-config

## **Installing Neovim**

### **Linux**

If you’re running Ubuntu or any other Linux distro, you can use its package manager as such:

`sudo apt install neovim`

### **macOS**

Same goes with macOS’ Homebrew:

`brew install neovim`

### **Windows**

On Windows, you can use one of the package managers such as Chocolatey:

`choco install neovim`

Or Scoop.

`scoop install neovim`

## **Setting Up Neovim**

Although you can install Neovim on any platform, I’d highly recommend running Linux/macOS.

Just like Vim, Neovim is quite simple and doesn’t include any fancy plugins out of the box, so we are going to have to install them. Firstly, let’s install a plugin manager:

### **Unix (Linux/macOS)**

`curl -fLo ~/.local/share/nvim/site/autoload/plug.vim - create-dirs \
 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
 
### **Windows (PowerShell)**

`md ~\vimfiles\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\vimfiles\autoload\plug.vim"
  )
)`

## **Editing the config file**

For macOS and Linux, the Neovim config file is located in `~/.config/nvim/init.vim`

`mkdir ~/.config/nvim`

And for Windows:

`mkdir ~/AppData/Local/nvim`
