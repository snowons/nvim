
首先安装环境需要的软件

```
# mac
brew install node python3 yarn ranger neovim 


# ubuntu
sudo apt install node python3 yarn ranger neovim 

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

CocInstall coc-prettier coc-vetur coc-git coc-svg coc-phpls coc-eslint coc-tailwindcss coc-fzf-preview coc-tabnine coc-fzf-preview
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
| leader+ci| 添加注释         |      |
| shift+k | 上移5 行         |      |
| shift+j | 下移5行          |      |
| gd      | 转到类、函数定义 |      |
| gf      | 跳转到文件       |      |

### 文件操作

| 热键     | 说明                 |
| -------- | -------------------- |
| rc       | 打开当前目录         |
| rp       | 打开项目目录         |
| leader+f | fzf项目文件模糊搜索  |
| leader+b | fzf  Buffer 文件搜索 |
| fp       | 项目文件检测         |
| fb       | 显示Buffers文件      |
| fg       | 显示文件GIT状态      |
| bd       | 删除Buffer           |
| bn       | 下一个Buffer         |
| tc       |  关闭当前tab         |
| tj       | 下一个tab            |
| tn       | 新建一个tab          |
| to       | 关闭所有其他tab          |



### 多点编辑

| 热键     | 说明                 |
| -------- | -------------------- |
| ctrl+n| 选择单词|
| n|下一个单词|
| q|跳过下一个单词|
| Q|跳过上一个单词|
| esc      | 退出多光标模式|
|jj | 退出插入模式|
|ctrl+s| 保存并格式化|



### buffer 

| 热键     | 说明                 |
| -------- | -------------------- |
| leader+1-9| buffer 1-9切换|



### git 

| 热键     | 说明                 |
| -------- | -------------------- |
| leader+lg| lazygit|


