#!/usr/bin/env zsh

DEPENDENCES_ZSH+=( zpm-zsh/pr-is-root zpm-zsh/pr-jobs zpm-zsh/pr-user )
DEPENDENCES_ZSH+=( zpm-zsh/pr-exec-time zpm-zsh/pr-git zpm-zsh/pr-cwd )
DEPENDENCES_ZSH+=( zpm-zsh/pr-2 )
DEPENDENCES_ZSH+=( zpm-zsh/pr-eol )
DEPENDENCES_ZSH+=( zpm-zsh/title )

zpm zpm-zsh/pr-is-root zpm-zsh/pr-jobs zpm-zsh/pr-user 2>/dev/null # PROMPT 
zpm zpm-zsh/pr-exec-time zpm-zsh/pr-git zpm-zsh/pr-cwd 2>/dev/null # RPROMPT
zpm zpm-zsh/pr-2 2>/dev/null # PROMPT2
zpm zpm-zsh/pr-eol 2>/dev/null # PROMPT_EOL_MARK
zpm zpm-zsh/title 2>/dev/null # PROMPT_TITLE

PROMPT='$pr_is_root$pr_jobs$pr_user '
RPROMPT='$pr_exec_time$pr_node$pr_git$pr_cwd'
PROMPT2='$pr_2'
PROMPT_EOL_MARK='$pr_eol'
PROMPT_TITLE='$USER@$HOST:$PWD'
