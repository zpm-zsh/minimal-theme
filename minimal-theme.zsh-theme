#!/usr/bin/env zsh

DEPENDENCES_ZSH+=( zpm-zsh/pr-jobs zpm-zsh/pr-is-root zpm-zsh/pr-user )
DEPENDENCES_ZSH+=( zpm-zsh/pr-return zpm-zsh/pr-exec-time zpm-zsh/pr-git zpm-zsh/pr-cwd )
DEPENDENCES_ZSH+=( zpm-zsh/pr-php zpm-zsh/pr-rust zpm-zsh/pr-node )
DEPENDENCES_ZSH+=( zpm-zsh/pr-2 )
DEPENDENCES_ZSH+=( zpm-zsh/pr-eol )
DEPENDENCES_ZSH+=( zpm-zsh/title )

if command -v zpm >/dev/null; then

  zpm                     \
    zpm-zsh/helpers       \
    zpm-zsh/background    \
    zpm-zsh/colors        \
    zpm-zsh/pr-jobs       \
    zpm-zsh/pr-is-root    \
    zpm-zsh/pr-user       \
    zpm-zsh/pr-return     \
    zpm-zsh/pr-exec-time  \
    zpm-zsh/pr-git        \
    zpm-zsh/pr-cwd        \
    zpm-zsh/pr-php        \
    zpm-zsh/pr-rust       \
    zpm-zsh/pr-node       \
    zpm-zsh/pr-2          \
    zpm-zsh/pr-eol        \
    zpm-zsh/title         \


fi

PROMPT='${pr_jobs}${pr_is_root}${pr_user} '
RPROMPT='${pr_return}${pr_exec_time}${pr_php}${pr_rust}${pr_node}${pr_git}${pr_cwd}'
PROMPT2='${pr_2}'
PROMPT_EOL_MARK='${pr_eol}'
PROMPT_TITLE='$USER@$HOST'
