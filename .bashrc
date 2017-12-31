Black='0;30m'
Blue='0;34m'
Green='0;32m'
Cyan='0;36m'
Red='0;31m'
Purple='0;35m'
Brown='0;33m'
LightGray='0;37m'
DarkGray='1;30m'
LightBlue='1;34m'
LightGreen='1;32m'
LightCyan='1;36m'
LightRed='1;31m'
LightPurple='1;35m'
Yellow='1;33m'
White='1;37m'

# alias
alias pip='pip3.6' 

# git 
if [ -f  $HOME/git-prompt.sh ]; then
    source ~/git-prompt.sh
fi
if [ -f  $HOME/git-completion.bash ]; then
    source ~/git-completion.bash
fi


############### ターミナルのコマンド受付状態の表示変更
# \u ユーザ名
# \h ホスト名
# \W カレントディレクトリ
# \w カレントディレクトリのパス
# \n 改行
# \d 日付
# \[ 表示させない文字列の開始
# \] 表示させない文字列の終了
# \$ $
PS1="[\[\e[${Green}\]\u\[\e[${Cyan}\]@\h\[\e[${Yellow}\]\$(__git_ps1 \(%s\))\[\e[00m\]:\w ]\n\$ "

export PS1
