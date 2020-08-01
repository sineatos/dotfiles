# dotfiles

my dot files such as tmux, vim etc 

## tmux
- tmux的配置文件，保存路径为`~/.tmux.conf`

## vim

### .vimrc.full

配置了部分常用的插件，用法：

1. 将`.vimrc.full`复制并重命名，保存在用户的`$HOME`目录，名称为`.vimrc`
2. 插件放置目录：
  - 如果在Windows中，插件目录为`$VIM/vimfiles/bundle/`
  - 否则插件目录为`~/.vim/bundle/`
3.  需要先安装`Vundle.vim`在插件目录中，可在github上找。

## SpaceVim

SpaceVim的配置，SpaceVim的安装方法可在SpaceVim的官网查询

注意：由于部分插件需要vim支持+python的属性，如果系统的vim没有该选项且升级比较麻烦，可安装neovim代替，安装以后在`~/.bashrc`中设置别名：`alias vim=nvim`即可。

如果使用的是neovim，有可能nvim不支持+python，需要先`pip install pynvim`，才能使用python相关的插件

```
# 安装
curl -sLf https://spacevim.org/install.sh | bash

# 写在
curl -sLf https://spacevim.org/install.sh | bash -s -- --uninstall
```

## .SpaceVim.d

配置了常用的插件·

1. 将`.SpaceVim.d.full/`目录复制到`$HOME`，并重名为`.SpaceVim.d`。
2. `init.toml`上以说明一半需要另外安装什么工具，如果没有说明但运行中报错的，根据错误提示安装对应的工具即可。
3. 安装nerd字体：
  ```
  # macOS，安装以后更改终端的字体为nerd
  brew search font
  brew tap homebrew/cask-fonts
  brew cask install font-saucecodepro-nerd-font
  ```

## maven

- 在`mvn-conf`中包含了maven的基础配置，只配置了阿里源
