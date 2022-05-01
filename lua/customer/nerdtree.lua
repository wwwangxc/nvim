--vim.NERDTreeWinSize = 45
--vim.NERDTreeShowHidden = 1
--vim.NERDTreeMinimalUI = 1
--vim.NERDTreeShowBookmarks = 2
--vim.g.nerdtree_tabs_open_on_console_startup = 0
--vim.g.NERDTreeDirArrowExpandable = ""
--vim.g.NERDTreeDirArrowCollapsible = ""
--vim.g.NERDTreeGitStatusShowIgnored = 1
--vim.g.NERDTreeGitStatusIndicatorMapCustom = {
--     Modified  = "M",
--     Staged    = "✚",
--     Untracked = "✭",
--     Renamed   = "R",
--     Unmerged  = "═",
--     Deleted   = "D",
--     Dirty     = "*",
--     Clean     = "✔︎",
--     Ignored   = '¡',
--     Unknown   = "?",
--}
--
--vim.cmd [[
--  autocmd StdinReadPre * let s:std_in=1
--]]

vim.cmd [[
  let NERDTreeWinSize=40
  let NERDTreeShowHidden=1
  let NERDTreeMinimalUI=1
  let NERDTreeShowBookmarks=2
  let g:nerdtree_tabs_open_on_console_startup=0
  autocmd StdinReadPre * let s:std_in=1
  " auto open NERDTree
  "autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
  
  " Exit Vim if NERDTree is the only window left.
  " autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
  "
  let g:NERDTreeDirArrowExpandable = ''
  let g:NERDTreeDirArrowCollapsible = ''
  
  let g:NERDTreeGitStatusShowIgnored=1
  let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ "Modified"  : "M",
      \ "Staged"    : "✚",
      \ "Untracked" : "✭",
      \ "Renamed"   : "R",
      \ "Unmerged"  : "═",
      \ "Deleted"   : "D",
      \ "Dirty"     : "*",
      \ "Clean"     : "✔︎",
      \ 'Ignored'   : '¡',
      \ "Unknown"   : "?"
      \ }
]]
