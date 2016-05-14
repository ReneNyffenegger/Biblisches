" Sourced from
"   alle_kapitel.vim                     (indirekt) und
"   ftplugin/eigene_uebersetzung.vim     (direkt)

call TQ84_log_indent(expand("<sfile>"))

" Mai 2016
" map <buffer> ,pl :silent !cd \%git_work_dir\%\\biblisches\\kommentare & start alle_kapitel_local.pl
map <buffer> ,pl :call tq84#SystemInDir($git_work_dir . '/biblisches/kommentare', './alle_kapitel_local.pl')

call TQ84_log_dedent()
