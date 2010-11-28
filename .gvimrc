" Command-T
"if has("gui_macvim")
"    macmenu &File.New\ Tab key=<nop>
"    map <D-t> :CommandT<CR>
"endif

if has("gui_macvim")
	" PeepOpen快捷键
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
end

