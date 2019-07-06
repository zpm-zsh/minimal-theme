#!/usr/bin/env zsh

DEPENDENCES_ZSH+=( zpm-zsh/pr-is-root zpm-zsh/pr-jobs zpm-zsh/pr-user )
DEPENDENCES_ZSH+=( zpm-zsh/pr-exec-time zpm-zsh/pr-git zpm-zsh/pr-cwd )
DEPENDENCES_ZSH+=( zpm-zsh/pr-2 )
DEPENDENCES_ZSH+=( zpm-zsh/pr-eol )
DEPENDENCES_ZSH+=( zpm-zsh/title )

if which zpm >/dev/null; then
  zpm zpm-zsh/pr-jobs zpm-zsh/pr-user # PROMPT 
  zpm zpm-zsh/pr-exec-time zpm-zsh/pr-node zpm-zsh/pr-git zpm-zsh/pr-cwd # RPROMPT
  zpm zpm-zsh/pr-2 # PROMPT2
  zpm zpm-zsh/pr-eol # PROMPT_EOL_MARK
  zpm zpm-zsh/title # PROMPT_TITLE
fi

PROMPT='$pr_jobs$pr_user '
RPROMPT='$pr_exec_time$pr_node$pr_git$pr_cwd'
PROMPT2='$pr_2'
PROMPT_EOL_MARK='$pr_eol'
PROMPT_TITLE='$USER@$HOST:$PWD'
