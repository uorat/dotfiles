"-------------------------------------------------------------------------------
" Configuration: ウィンドウ Window
"-------------------------------------------------------------------------------
set columns=100     " 横幅
set lines=70        " 行数
set showtabline=2   " 常にタブを表示
set linespace=2     " 行間
set guifont=Monospace\ 12

"-------------------------------------------------------------------------------
" Configuration: カラー設定 Color
"-------------------------------------------------------------------------------

"colorscheme desert

" IME状態に応じたカーソル色を設定
if has('multi_byte_ime')
  highlight Cursor guifg=NONE guibg=Green gui=bold
  highlight CursorIM guifg=NONE guibg=Purple
endif
