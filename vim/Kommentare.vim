call TQ84_log_indent(expand("<sfile>"))

so <sfile>:h/Kommentare-Perl.vim

fu! <SID>TabberSprache(sprache) " {

   call TQ84_log_indent(expand("<sfile>") . 'sprache: ' . a:sprache)

   call Tabber#Add([
     \ ['ins-const', '</span> ' ],
     \ ])


   call GUI#InsertModeInsertText("<span class='" . a:sprache . "'>")

   call TQ84_log_dedent()

endfu " }
fu! <SID>TabberStrongs() " {

   call TQ84_log_indent(expand("<sfile>"))

   call Tabber#Add([
     \ ['ins-const', '(Strongs ' ],
     \ ['ins-const', ') ' ],
     \ ])


   call Tabber#TabPressed()

   call TQ84_log_dedent()

   return ''

endfu " }

inoremap <buffer> ,gr <ESC>:call <SID>TabberSprache('gr')<CR>
inoremap <buffer> ,he <ESC>:call <SID>TabberSprache('he')<CR>
inoremap <buffer> ,S  =<SID>TabberStrongs()<CR>

call TQ84_log_dedent()
