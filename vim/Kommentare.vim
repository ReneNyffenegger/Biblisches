"
" Sourced from
"   alle_kapitel.vim and
"   ftplugin/eigene_uebersetzung.vim
"
call TQ84_log_indent(expand("<sfile>"))

map <buffer> ,pl :silent !cd \%git_work_dir\%\\biblisches\\kommentare & start alle_kapitel_local.pl

call TQ84_log_dedent()
