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

inoremap <buffer> ,gr <ESC>:call <SID>TabberSprache('gr')<CR>
inoremap <buffer> ,he <ESC>:call <SID>TabberSprache('he')<CR>

call TQ84_log_dedent()
