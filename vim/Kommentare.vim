call TQ84_log_indent(expand("<sfile>"))

so <sfile>:h/Kommentare-Perl.vim

fu! <SID>TabberSprache(sprache) " {

   call TQ84_log_indent(expand("<sfile>") . 'sprache: ' . a:sprache)

   call Tabber#Add([
     \ ['ins-const', '</span> ' ],
     \ ])


   call TQ84_log_dedent()

   return "<span class='" . a:sprache . "'>"

endfu " }

inoremap <buffer> <expr> ,gr <SID>TabberSprache('gr')
inoremap <buffer> <expr> ,he <SID>TabberSprache('he')

call TQ84_log_dedent()
