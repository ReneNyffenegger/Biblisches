call TQ84_log_indent(expand("<sfile>"))

so <sfile>:h/Kommentare-Perl.vim

fu! <SID>VersEinfuegen() " {

  call TQ84_log_indent(expand("<sfile>"))

  let l:bk_ch_v = RN_InputAndAnalyzeBookChaperVerse()

  if foldclosed(line('.')) != -1 " {
     call TQ84_log('foldclosed')

  "  foldclosed == -1 indicates that the line is not folded.
  "  So, here, the line is folded
     normal zo
     " 123: opening curly braces
     execute 'normal f' . nr2char(123)
     normal %
     normal zc
  endif " }

" Cursor is positioned on line under which the <new verse>
" needs to be placed.
"
" An 'empty' Verse consists of five lines.
" create them:
  call append(line('.'), repeat([''],5))

" Write the five lines. Note, the third line is empty as
" the text for that verse goes into that verse:
  let l:line_to_log = "      <div class='v' id='I" .  RN_IdFromBookChapterVerse(l:bk_ch_v) . "'> <div class='n'>" .  RN_LinkOnly(l:bk_ch_v) . l:bk_ch_v['verse'] . "</a></div>"

  call setline(line('.') + 1, l:line_to_log)
  call setline(line('.') + 2, "        <div class='t'>")

  call setline(line('.') + 4, "        </div>")
  call setline(line('.') + 5, "      </div>")

  normal 1j
  normal zf4j
  normal 2j
  call setline(line('.'), "          ")

  call TQ84_log_dedent()
  normal A
endfu " }
fu! <SID>KapitelEinfuegen() " {

  call TQ84_log_indent(expand('<sfile>'))
  call append(line('.'), repeat([''], 4))

  call setline(line('.') + 1, " <h1>TODO</h1>")
  call setline(line('.') + 2, "  <div class='kap-tab'>")
  call setline(line('.') + 3, "  </div>")

  normal 1j
  normal zf3j

" Make sure search command can be executed 'backwards':
  normal 1j
  normal ?TODO

  call TQ84_log_dedent()
endfu " }
fu! <SID>DivTEinfuegen() " {
  
  call TQ84_log_indent(expand('<sfile>'))

  call append(line('.'), repeat([''], 2))

  call setline(line('.') + 1, "        <div class='t'>")
  call setline(line('.') + 2, "        </div>")

  normal jo
  call setline(line('.'),     '           ')
  normal $
  startinsert

  call TQ84_log_dedent()

endfu " }
fu! <SID>KommentarLink(analyzed_book_ch_v) " {

  call TQ84_log_indent(expand('<sfile>'))
  let l:ret = "<a class='kom' href='" . 
  \ "#I" . a:analyzed_book_ch_v['book'] . "-" . a:analyzed_book_ch_v['chapter'] . "-" . a:analyzed_book_ch_v['verse'] . "'>" .
  \ RN_HumanRepresentationOfVerse(a:analyzed_book_ch_v) . "</a>"
  call TQ84_log_dedent()

  return l:ret

endfu " }
fu! Kommentare_GeheZuVers(vers) " {
  call TQ84_log_indent(expand('<sfile>'))

  call GUI#OpenFile($git_work_dir . '/biblisches/kommentare/alle_kapitel.html')

  let l:search_pattern_vers = "id='I" . a:vers['buch'] . '-' . a:vers['kapitel'] . '-' . a:vers['vers'] . "'"

  let l:line_no = search(l:search_pattern_vers)

  call TQ84_log('found line no for ' . l:search_pattern_vers . ' -> ' . l:line_no)

  if l:line_no == 0

     let l:buch_name = Bibel#BuchnameAusAbkuerzung(a:vers['buch'])
     let l:search_pattern_kapitel = '<h1>' . l:buch_name . ' ' . a:vers['kapitel'] . '</h1>'
     call TQ84_log('line no is 0, so searching for ' . l:search_pattern_kapitel)
     let l:line_no = search(l:search_pattern_kapitel)

  endif

  normal zv
  normal z
  call TQ84_log_dedent()
endfu " }
fu! Kommentare_GeheZuVersMitEingabe() " {
  call TQ84_log_indent(expand('<sfile>'))

  call Kommentare_GeheZuVers(Bibel#EingabeBuchKapitelVers())
  
  call TQ84_log_dedent()
endfu " }
fu! <SID>GeheZuVers() " {
  call TQ84_log_indent(expand('<sfile>')) 
  let l:vers = Bibel#EingabeBuchKapitelVers()

  call Kommentare_GeheZuVers(l:vers)

  call TQ84_log_dedent()
endfu " }
fu! <SID>AktuellerVers() " {
  call TQ84_log_indent(expand('<sfile>'))

  let l:line_id = search("\\v\\<div class\\='v' id\\='", 'bn')

  let l:line = getline(l:line_id)

  call TQ84_log('l:line = ' . l:line . ' - l:line_id = ' . l:line_id) 

  let l:m = matchlist(l:line, "\\v id\\='I([^-]+)-([^-]+)-([^']+)")

  let l:vers = {
  \     'buch'   : l:m[1],
  \     'kapitel': l:m[2],
  \     'vers'   : l:m[3]
  \ }


  call TQ84_log_dedent()

  return l:vers
endfu " }
fu! <SID>TabberSprache(sprache) " {

   call TQ84_log_indent(expand("<sfile>") . 'sprache: ' . a:sprache)

   call Tabber#Add([
     \ ['ins-const', '</span> ' ],
     \ ])


   call GUI#InsertModeInsertText("<span class='" . a:sprache . "'>")

   call TQ84_log_dedent()
   return ''

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

inoremap <buffer> ,gr =<SID>TabberSprache('gr')<CR>
inoremap <buffer> ,he =<SID>TabberSprache('he')<CR>
inoremap <buffer> ,S  =<SID>TabberStrongs()<CR>

nnoremap <buffer> ,akv  :call <SID>VersEinfuegen()<CR>
nnoremap <buffer> ,akc  :call <SID>KapitelEinfuegen()<CR>
nnoremap <buffer> ,akt  :call <SID>DivTEinfuegen()<CR>
nnoremap <buffer> ,gtv :call <SID>GeheZuVers()<CR>
inoremap <buffer> ,kl =<SID>KommentarLink(RN_InputAndAnalyzeBookChaperVerse())

nnoremap <buffer> ,gtk :call OpenUrl#Kommentar(<SID>AktuellerVers())<CR>
nnoremap <buffer> ,gtb :call OpenUrl#BlueLetter(<SID>AktuellerVers())<CR>

call TQ84_log_dedent()
