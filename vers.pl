#
#   https://github.com/ReneNyffenegger/Biblisches/blob/master/vers.pl
#
use warnings;
use strict;

if (my $query_string = $ENV{QUERY_STRING}) {

  if ($query_string =~ /^(\w+)-(\d+)-(\d+)$/) {

    my $buch = $1;
    my $kap  = $2;
    my $vers = $3;

    print "Status: 301 Moved Permanently\r\n";
    print "Location: /Biblisches/Kommentare/" . replace_link($buch, $kap, $vers) . "\r\n\r\n";
    exit 0;

  }
}

print "Content-type: text/plain\r\n\r\n";

print "Erwartet: /vers.pl?buch-kapitel-vers\r\n";


sub replace_link { # {{{ Almost same code as in alle_kapitel_local.pl (this on does not have href=)
  my $book    = shift;
  my $chapter = shift;
  my $verse   = shift;

  goto RET;

  if ($book eq 'ri' or $book eq 'rt') {
    return "ri_rt.html#I$book-$chapter-$verse";
  }
  if ($book eq 'esr' or $book eq 'neh' or $book eq 'est') {
    return "esr_neh_est.html#I$book-$chapter-$verse";
  }
  if ($book eq 'pred' or $book eq 'hl') {
    return "pred_hl.html#I$book-$chapter-$verse";
  }
  if ($book eq 'hos' or $book eq 'joe' or $book eq 'am' or $book eq 'ob' or $book eq 'jon' or $book eq 'mi') {
    return "hos_joe_am_ob_jon_mi.html#I$book-$chapter-$verse";
  }
  if ($book eq 'nah' or $book eq 'hab' or $book eq 'zeph' or $book eq 'hag' or $book eq 'sach' or $book eq 'mal') {
    return "nah_hab_zeph_hag_sach_mal.html#I$book-$chapter-$verse";
  }
  if ($book eq '1kor' or $book eq '2kor') {
    return "kor.html#I$book-$chapter-$verse";
  }
  if ($book eq 'gal' or $book eq 'eph' or $book eq 'phil' or $book eq 'kol' or $book eq '1thes' or $book eq '2thes') {
    return "gal_eph_phil_kol_thes.html#I$book-$chapter-$verse";
  }
  if ($book eq '1tim' or $book eq '2tim' or $book eq 'tit' or $book eq 'phim' or $book eq 'hebr') {
    return "tim_tit_phim_hebr.html#I$book-$chapter-$verse";
  }
  if ($book eq 'jak' or $book eq '1petr' or $book eq '2petr' or $book eq '1joh' or $book eq '2joh' or $book eq '3joh' or $book eq 'jud') {
    return "jak_petr_joh_jud.html#I$book-$chapter-$verse";
  }

RET:
   return "$book.html#I$book-$chapter-$verse";
} # }}}
