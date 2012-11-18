#
# /etc/bash.bashrc
#
# This file is the systemwide bashrc file. While most of the
# environment is preserved when running an interactive shell
# the PS[1-4] variables, aliases and functions are reset.
#
# When running a non-login shell, apply the following settings:
# - Prompt defaults (PS[1-4], PROMPT_COMMAND)
# - bash_completion if it exists
# - source /etc/bash.bashrc.local
PS1='\[\033[36;1m\]\u\[\033[m\]@\[\033[32;1m\]\h:\[\033[33;1m\]\W\[\033[m\]\$ '
PS2='> '
PS3='> '
PS4='+ '

export PS1 PS2 PS3 PS4


alias ls='ls -G -F -h'
alias ll='ls -G -F -h -l'
alias grep='grep --color=auto'
alias jps='jps -l -v'
alias cs7087='ssh jtdeng@cs7087.comp.hkbu.edu.hk'


. ~/.local/bin/bashmarks.sh

#history only save 500 commands, we extends it.
export HISTCONTROL=ignoredups
export HISTIGNORE="[  ]*:&:bg:fg:exit"
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
#use append instead of overwrite
shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
shopt -s checkwinsize

#maven auto completion and color
. ~/.local/bin/maven_bash_completion.bash
. ~/.local/bin/mvn-color

export EDITOR=vim
export SVN_EDITOR=vim
#Java
export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export MAVEN_HOME=/usr/albiaba/maven
export MAVEN_OPTS=-Xmx2048m -Xms2048m
export PATH=/opt/local/bin:/opt/local/sbin:$MAVEN_HOME/bin:$PATH
