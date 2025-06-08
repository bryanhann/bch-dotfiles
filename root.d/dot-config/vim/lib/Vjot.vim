function GetFirstWordOnLine()  
     let save_pos = getpos(".")
     normal ^
     let w = expand("<cword>") 
     call setpos(".", save_pos)
     return w
endfunction

function PlayJot()
    let stamp = GetFirstWordOnLine()
    ;;
    silent execute "!bch.vjot.beep4stamp " . stamp 
endfunction

map  ,,v      :call PlayJot()<CR>:redraw!<CR>
imap ,,v <ESC>:call PlayJot()<CR>:redraw!<CR>i
