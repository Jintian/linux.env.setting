#  	Author: jintian.deng      
# 	Last modified: 2012 Dec 08 20:46:48
################################################

PS1='\[\033[36;1m\]\u\[\033[m\]@\[\033[32;1m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ '
PS2='> '
PS3='> '
PS4='+ '

export PS1 PS2 PS3 PS4


#alias list
alias ls='ls -G -F -h'
alias ll='ls -G -F -h -l'
alias grep='grep --color=auto'
alias jps='jps -l -v'
alias ssh='. ~/.local/bin/sshx'
alias less='. ~/.local/bin/less.sh'

#bash bookmark
. ~/.local/bin/bashmarks.sh

#history only save 500 commands, extends this limit.
export HISTCONTROL=ignoredups
export HISTIGNORE="[  ]*:&:bg:fg:exit"
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
#use append instead of overwrite
shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
shopt -s checkwinsize

#maven auto completion and color
. ~/.local/bin/maven_completion.bash
. ~/.local/bin/mvn-color

#git
. ~/.local/bin/git-completion.bash

#Java, maven,svn, etc
export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export MAVEN_HOME=/usr/albiaba/maven
export MAVEN_OPTS="-Xmx1024m -Xms1024m"
export EDITOR=vim
export SVN_EDITOR=vim

#macport
export PATH=/opt/local/bin:/opt/local/sbin:/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin:$MAVEN_HOME/bin:$PATH
