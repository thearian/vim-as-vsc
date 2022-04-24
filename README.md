# Vim as Visual Studio Code
> all plugins and setups to make vim a good Visual Studio Code alternative

> 🚧 Warning
>
> `init.vim` is (considerd) as ready, but installation is not properly automated. Not ready for vim begginers (yet)

Shout out to [craftzdog](https://github.com/craftzdog) for the base vim initializer

## Getting Started
Install all all the packages below with your prefered package manager:
- `vim`: the main editor
- `bash`: runs terminal commands and is needed for `install.sh`
  ***Pre installed on linux and mac, installed with git on windows***
- `curl`: downloads file using url
  ***Pre installed on linux and mac, installed with git on windows***
- `lua`: a programming language used in some vim plugins
- `ripgrep`: searchs in files for the given word (grep alternative)

## Installation
1. Move the `init.vim` to your `.config/`
2. Install Vim plug. visit [Vim Plug official repo](https://github.com/junegunn/vim-plug) for installation
3. Open vim and run `:PlugInstall`
4. If anything went wrong let us know in the issues

> There is a install.sh **BUT IT IS NOT READY AND NOT TESTED PROPERLY**
> You can contribute by debugging and testing the install.sh

## Usage
Run vim or nvim in terminal to open a file or directory
Everything must be configured
