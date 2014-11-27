" Vim colour file
" Maintainer: Owain Kenway (https://github.com/owainkenwayucl)

" A dark theme with bright, startling, vivid highlights
" Based loosely on the Monokai colourscheme in Monodevelop

" This work is Public Domain.

hi clear
set background=dark

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name="okdarkvivid"

hi Comment ctermbg=NONE ctermfg=242 cterm=NONE guibg=NONE guifg=#75715e gui=NONE
hi Constant ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
hi Cursor ctermbg=231 ctermfg=235 cterm=NONE guibg=#f8f8f0 guifg=#272822 gui=NONE
hi Directory ctermbg=NONE ctermfg=141 cterm=NONE guibg=NONE guifg=#ae81ff gui=NONE
hi Error ctermbg=197 ctermfg=231 cterm=NONE guibg=#f92672 guifg=#f8f8f0 gui=NONE
hi ErrorMsg ctermbg=197 ctermfg=231 cterm=NONE guibg=#f92672 guifg=#f8f8f0 gui=NONE
hi Identifier ctermbg=NONE ctermfg=81 cterm=NONE guibg=NONE guifg=#66d9ef gui=italic
hi IncSearch ctermbg=186 ctermfg=235 cterm=NONE guibg=#e6db74  guifg=#272822 gui=NONE
hi LineNr ctermbg=237 ctermfg=102 cterm=NONE guibg=#3c3d37 guifg=#90908a gui=NONE
hi NonText ctermbg=236 ctermfg=59 cterm=NONE guibg=#31322c guifg=#49483e gui=NONE
hi Normal ctermbg=235 ctermfg=231 cterm=NONE guibg=#272822 guifg=#f8f8f2 gui=NONE
hi PreProc ctermbg=NONE ctermfg=197 cterm=NONE guibg=NONE guifg=#f92672 gui=NONE
hi Search ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
hi Special ctermbg=NONE ctermfg=81 cterm=NONE guibg=NONE guifg=#66d9ef gui=NONE
hi SpecialKey ctermbg=237 ctermfg=59 cterm=NONE guibg=#3c3d37 guifg=#49483e gui=NONE
hi Statement ctermbg=NONE ctermfg=197 cterm=NONE guibg=NONE guifg=#f92672 gui=NONE
hi StatusLine ctermbg=241 ctermfg=231 cterm=bold guibg=#64645e guifg=#f8f8f2 gui=bold
hi StatusLineNC ctermbg=241 ctermfg=231 cterm=NONE guibg=#64645e guifg=#f8f8f2 gui=NONE
hi Title ctermbg=NONE ctermfg=231 cterm=bold guibg=NONE guifg=#f8f8f2 gui=bold
hi Todo ctermbg=NONE ctermfg=95 cterm=inverse,bold guibg=NONE guifg=#75715e gui=inverse,bold
hi Type ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
hi Visual ctermbg=59 ctermfg=NONE cterm=NONE guibg=#49483e guifg=NONE gui=NONE
hi WarningMsg ctermbg=197 ctermfg=231 cterm=NONE guibg=#f92672 guifg=#f8f8f0 gui=NONE
