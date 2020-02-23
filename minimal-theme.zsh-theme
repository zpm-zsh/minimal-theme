#!/usr/bin/env zsh

DEPENDENCES_ZSH+=( zpm-zsh/pr-is-root zpm-zsh/pr-user )
DEPENDENCES_ZSH+=( zpm-zsh/pr-return zpm-zsh/pr-exec-time zpm-zsh/pr-git zpm-zsh/pr-cwd )
DEPENDENCES_ZSH+=( zpm-zsh/pr-php zpm-zsh/pr-rust zpm-zsh/pr-node )
DEPENDENCES_ZSH+=( zpm-zsh/pr-2 )
DEPENDENCES_ZSH+=( zpm-zsh/pr-eol )
DEPENDENCES_ZSH+=( zpm-zsh/title )

if (( $+functions[zpm] )); then
  zpm                                 \
    zpm-zsh/pr-is-root,inline         \
    zpm-zsh/pr-user,inline            \
    zpm-zsh/pr-return,inline          \
    zpm-zsh/pr-exec-time,async,inline \
    zpm-zsh/pr-git,async,inline       \
    zpm-zsh/pr-cwd,inline             \
    zpm-zsh/pr-php,async,inline       \
    zpm-zsh/pr-rust,async,inline      \
    zpm-zsh/pr-node,async,inline      \
    zpm-zsh/pr-2,async,inline         \
    zpm-zsh/pr-eol,async,inline       \
    zpm-zsh/title,inline              \
    zpm-zsh/pr-zcalc,async,inline     \
    zpm-zsh/pr-correct,async,inline   \

fi

setopt prompt_subst

typeset -g PROMPT
PROMPT='${pr_is_root}${pr_user} '
typeset -g RPROMPT
RPROMPT='${pr_return}${pr_exec_time}${pr_php}${pr_rust}${pr_node}${pr_git}${pr_cwd}'
typeset -g PROMPT2
PROMPT2='${pr_2}'
typeset -g PROMPT_EOL_MARK
PROMPT_EOL_MARK='${pr_eol}'
typeset -g PROMPT_TITLE
PROMPT_TITLE='$USER@$HOST'
typeset -g ZCALCPROMPT
ZCALCPROMPT='${pr_zcalc} '
typeset -g SPROMPT
SPROMPT='${pr_correct}'
