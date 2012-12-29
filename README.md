hlsl.vim
========

High Level Shader Language (HLSL) Vim syntax highlighting

Instructions
-----------------------------------------------------------

Using the Pathogen plugin:
(http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

From your ~/.vim directory:
> git submodule add git://github.com/beyondmarc/hlsl.vim.git bundle/syntax\_hlsl

If not using the Pathogen plugin:
* Add hlsl.vim into your vim syntax folder (in most Linux distros:
/usr/share/vim/vim\<version\>/syntax).
* Add the following line at the bottom of your .vimrc file:

> autocmd BufNewFile,BufRead \*.fx,\*.fxc,\*.fxh,\*.hlsl set ft=hlsl

