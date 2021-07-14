
首先安装环境需要的软件

nerd font: unicode图形字体
https://github.com/ryanoasis/nerd-fonts.git

```
# mac
brew install node python3 yarn ranger eeovim 

# 安装gtags
brew install global

# lazygit
brew install lazygit

# xkbswitch
https://github.com/myshov/xkbswitch-macosx.git



# ubuntu
sudo apt install node python3 yarn ranger neovim 
sudo apt install xclip

sudo apt install python-pip
sudo apt install python3-pip3

# ranger 
sudo pip3 install  ueberzug 
sudo pip3 install pynvim
ranger --copy-config=all
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
# add this configuration to rc.conf
set preview_images true
set preview_images_method ueberzug
default_linemode devicons
set show_hidden true
 
# 安装gtags
wget http://tamacom.com/global/global-6.6.2.tar.gz
tar xzvf global-6.6.2.tar.gz
cd global-6.6.2
./configure
make && make install

# lazygit 
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get update
sudo apt-get install lazygit

# xkbswitch
sudo apt-get install libxkbfile-dev cmake
git clone https://github.com/grwlf/xkb-switch.git
cd xkb-switch
mkdir build && cd build
cmake ..
make
sudo make install

# 安裝nerd
首先下载文件
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/SourceCodePro.zip
然后解压到文件夹:

sudo unzip SourceCodePro -d /usr/share/fonts/SourceCodePro
转到/usr/share/fonts/SourceCodePro目录，并安装

cd /usr/share/fonts/SourceCodePro
sudo mkfontscale # 生成核心字体信息
sudo mkfontdir # 生成字体文件夹
sudo fc-cache -fv # 刷新系统字体缓存


```

然后安装neovim需要软件包

```
python -m pip install pynvim

pip3 install --user --upgrade neovim

pip3 install ranger-fm
```


## COC插件

打开nvim执行以下命令安装coc扩展

```
CocInstall coc-css coc-explorer coc-html coc-snippets coc-ember coc-json coc-emmet coc-phpls coc-tsserver coc-eslint coc-highlight 

CocInstall coc-clangd coc-prettier coc-vetur coc-git coc-svg coc-tailwindcss  coc-tabnine coc-rls 
```

## 按键定义

Leader 键定义为了空格，下面是自定义的按键说明

### Flutter 

| 热键    | 说明             | 模式 |
| ------- | ---------------- | ---- |
| leader+fn| Run        |      |
| leader+fr| HotRestart |      |
| leader+fh | HotReload          |      |
| leader+fq| Quit|      |
| leader+fd| Debug|      |

### 移动定位

| 热键    | 说明             | 模式 |
| ------- | ---------------- | ---- |
| shift+k | 上移5 行         |      |
| shift+j | 下移5行          |      |
| shift+l | 移动到行尾          |      |
| 0 | 移动到行首          |      |
| gd      | 转到类、函数定义 |      |
| gf      | 跳转到文件       |      |

### 文件操作

| 热键     | 说明                 |
| -------- | -------------------- |
| leader+rc       | 打开当前目录         |
| leader+rp       | 打开项目目录         |
| leader+rs       | 更新配置文件|


### 多点编辑

| 热键     | 说明                 |
| -------- | -------------------- |
| ctrl+n| 选择单词|
| alt+j| 创建多光标向下|
| alt+k| 创建多光标向上|
| n|下一个单词|
| q|跳过下一个单词|
| Q|跳过上一个单词|
| esc      | 退出多光标模式|
|jj | 退出插入模式|
|ctrl+s| 保存并格式化|


### 翻譯 

| 热键     | 说明                 |
| -------- | -------------------- |
| leader+t| 翻譯輸出到命令行|
| leader+w| 翻譯輸出到新窗口|
| leader+x| 翻譯剪切板單詞|

### buffer 

| 热键     | 说明                 |
| -------- | -------------------- |
| leader+1-9| buffer 1-9切换|
| leader+bd       | 删除Buffer           |
| leader+bn       | 下一个Buffer         |
| tc       |  关闭当前tab         |
| tj       | 下一个tab            |
| tn       | 新建一个tab          |
| to       | 关闭所有其他tab          |
| tl       | 新开终端弹框窗口          |
| tr       | 打开ranger弹框          |


### git 

| 热键     | 说明                 |
| -------- | -------------------- |
| leader+lg| lazygit|


### 注释 [doc](https://github.com/tyru/caw.vim)

| 热键     | 说明                 |
| -------- | -------------------- |
| gcc| 注释|
| gca| 注释|
| gcw| 注释|
| gco| 注释|
| gci| 注释|


### 搜索查询 

| 热键    | 说明             | 模式 |
| ------- | ---------------- | ---- |
| leader+f| 全局查询文件                  |      |
| leader+qq| 全局查询指定字符串             |      |
| leader+qw |全局查询光标处的字符串          |      |
| leader+qb| |      在当前Buffer中查询光标处字符串|
| leader+qo|重新执行上一次字符串搜索        |      |
| leader+b | Buffer 文件搜索 |


