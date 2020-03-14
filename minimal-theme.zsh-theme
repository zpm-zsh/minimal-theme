#!/usr/bin/env zsh

DEPENDENCES_ZSH+=( zpm-zsh/pr-is-root zpm-zsh/pr-user )
DEPENDENCES_ZSH+=( zpm-zsh/pr-return zpm-zsh/pr-exec-time zpm-zsh/pr-git zpm-zsh/pr-cwd )
DEPENDENCES_ZSH+=( zpm-zsh/pr-php zpm-zsh/pr-rust zpm-zsh/pr-node )
DEPENDENCES_ZSH+=( zpm-zsh/pr-2 )
DEPENDENCES_ZSH+=( zpm-zsh/pr-eol )
DEPENDENCES_ZSH+=( zpm-zsh/title )

if (( $+functions[zpm] )); then
  zpm if-not ssh               \
    zpm-zsh/zshmarks,async

  zpm                          \
    zpm-zsh/pr-is-root,async   \
    zpm-zsh/pr-user            \
    zpm-zsh/pr-return,async    \
    zpm-zsh/pr-exec-time,async \
    zpm-zsh/pr-git,async       \
    zpm-zsh/pr-cwd,async       \
    zpm-zsh/pr-php,async       \
    zpm-zsh/pr-rust,async      \
    zpm-zsh/pr-node,async      \
    zpm-zsh/pr-2,async         \
    zpm-zsh/pr-eol,async       \
    zpm-zsh/title,async        \
    zpm-zsh/pr-zcalc,async     \
    zpm-zsh/pr-correct,async
fi

setopt prompt_subst

typeset -g PROMPT='${pr_is_root}${pr_user} '
typeset -g RPROMPT='${pr_return}${pr_exec_time}${pr_php}${pr_rust}${pr_node}${pr_git}${pr_cwd}'
typeset -g PROMPT2='${pr_2}'
typeset -g PROMPT_EOL_MARK='${pr_eol}'
typeset -g PROMPT_TITLE='$USER@$HOST'
typeset -g ZCALCPROMPT='${pr_zcalc} '
typeset -g SPROMPT='${pr_correct}'
