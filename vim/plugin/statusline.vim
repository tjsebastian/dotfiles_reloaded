" SOLARIZED HEX     16/8 TERMCOL   XTERM/HEX   L*A*B      RGB         HSB
" --------- ------- ---- -------   ----------- ---------- ----------- -----------
" base03    #002b36  8/4 brblack   234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
" base02    #073642  0/4 black     235 #262626 20 -12 -12   7  54  66 192  90  26
" base01    #586e75 10/7 brgreen   240 #585858 45 -07 -07  88 110 117 194  25  46
" base00    #657b83 11/7 bryellow  241 #626262 50 -07 -07 101 123 131 195  23  51
" base0     #839496 12/6 brblue    244 #808080 60 -06 -03 131 148 150 186  13  59
" base1     #93a1a1 14/4 brcyan    245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
" base2     #eee8d5  7/7 white     254 #e4e4e4 92 -00  10 238 232 213  44  11  93
" base3     #fdf6e3 15/7 brwhite   230 #ffffd7 97  00  10 253 246 227  44  10  99
" yellow    #b58900  3/3 yellow    136 #af8700 60  10  65 181 137   0  45 100  71
" orange    #cb4b16  9/3 brred     166 #d75f00 50  50  55 203  75  22  18  89  80
" red       #d30102  1/1 red       124 #af0000 45  70  60 211   1   2   0  99  83
" magenta   #d33682  5/5 magenta   125 #af005f 50  65 -05 211  54 130 331  74  83
" violet    #6c71c4 13/5 brmagenta  61 #5f5faf 50  15 -45 108 113 196 237  45  77
" blue      #268bd2  4/4 blue       33 #0087ff 55 -10 -45  38 139 210 205  82  82
" cyan      #2aa198  6/6 cyan       37 #00afaf 60 -35 -05  42 161 152 175  74  63
" green     #859900  2/2 green      64 #5f8700 60 -20  65 133 153   0  68 100  60

" set syntastic status line format
let g:syntastic_stl_format = '%F L : %e E : %w W'

" set colors for the status line
hi User1 ctermbg=234 ctermfg=254
hi User2 ctermbg=64  ctermfg=254
hi User3 ctermbg=166 ctermfg=254
hi User4 ctermbg=37  ctermfg=254
hi User5 ctermbg=33  ctermfg=254
hi User6 ctermbg=124  ctermfg=254

" start with the left side
set statusline=
"
	" current git branch
set statusline+=%2*
set statusline+=\ %{fugitive#statusline()[5:-3]}
"
	" file name and path
set statusline+=\ %3*
set statusline+=\ %<%f
"
	" syntax error
set statusline+=\ %6*
set statusline+=\ %{SyntasticStatuslineFlag()}
"
	" change to grey
set statusline+=\ %1*
	" readonly
set statusline+=\ %r
	" help flag
set statusline+=%h
	" preview window
set statusline+=%w
	" modified
set statusline+=%m

" switch to right side of screen
set statusline+=%=

	" percent through buffer
set statusline+=\ %4*
set statusline+=\ %p%%

	" cursor coordinates
set statusline+=\ %5*
set statusline+=\ %v:%l\ /
	" num lines in buffer
set statusline+=\ %L
	" end it nicely
set statusline+=\ 

" enable statusline
set laststatus=2

" time in ruler?
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
