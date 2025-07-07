" Vim indent file for the High Level Shader Language
" Language:     HLSL (DirectX 11)
" Author:       Marc Costa <beyond.marc@gmail.com>
" Date:         July 7, 2025
" File Types:   .hlsl, .hlslc, .hlslh, .hlsl
" Version:      0.1

if exists("b:did_indent")
   finish
endif
let b:did_indent = 1

setlocal cindent

let b:undo_indent = "setl cin<"
