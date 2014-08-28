"-------------------------------------------------------------------------------
" Configuration: ウィンドウ Window
"-------------------------------------------------------------------------------
set columns=100     " 横幅
set lines=70        " 行数
set showtabline=2   " 常にタブを表示
set linespace=2     " 行間

"if has('win64')
if has('win32')     "win32 & win64
  " set guifont=Osaka－等幅:h12:cSHIFTJIS
  " set guifont=Osaka−等幅:h14
  " set guifont=Ricty:h12
  set guifont=Migu_1M:h12
  set ambiwidth=double
  " 文字コードを元に戻す
  " set encoding=utf8
else
  set guifont=Monospace\ 12
  set ambiwidth=double
endif


"-------------------------------------------------------------------------------
" Configuration: カラー設定 Color
"-------------------------------------------------------------------------------

colorscheme molokai

" IME状態に応じたカーソル色を設定
if has('multi_byte_ime')
  highlight Cursor guifg=NONE guibg=Green gui=bold
  highlight CursorIM guifg=NONE guibg=Purple
endif
