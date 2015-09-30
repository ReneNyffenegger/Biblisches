use warnings;
use strict;

package Bibel;

sub Buchname2Abkuerzung { # {{{

  my $buchname = shift;
  my $sprache  = shift;

  if ($sprache eq 'en') { # {{{

    return '1mo'   if $buchname eq 'Genesis';
    return '2mo'   if $buchname eq 'Exodus';
    return '3mo'   if $buchname eq 'Leviticus';
    return '4mo'   if $buchname eq 'Numbers';
    return '5mo'   if $buchname eq 'Deuteronomy';
    return 'jos'   if $buchname eq 'Joshua';
    return 'ri'    if $buchname eq 'Judges';
    return 'rt'    if $buchname eq 'Ruth';
    return '1sam'  if $buchname eq '1Samuel';
    return '2sam'  if $buchname eq '2Samuel';
    return '1koe'  if $buchname eq '1Kings';
    return '2koe'  if $buchname eq '2Kings';
    return '1chr'  if $buchname eq '1Chronicles';
    return '2chr'  if $buchname eq '2Chronicles';
    return 'esr'   if $buchname eq 'Ezra';
    return 'neh'   if $buchname eq 'Nehemiah';
    return 'est'   if $buchname eq 'Esther';
    return 'hi'    if $buchname eq 'Job';
    return 'ps'    if $buchname eq 'Psalms';
    return 'spr'   if $buchname eq 'Proverbs';
    return 'pred'  if $buchname eq 'Ecclesiastes';
    return 'hl'    if $buchname eq 'Song of Solomon';
    return 'jes'   if $buchname eq 'Isaiah';
    return 'jer'   if $buchname eq 'Jeremiah';
    return 'kla'   if $buchname eq 'Lamentations';
    return 'hes'   if $buchname eq 'Ezekiel';
    return 'dan'   if $buchname eq 'Daniel';
    return 'hos'   if $buchname eq 'Hosea';
    return 'jo'    if $buchname eq 'Joel';
    return 'am'    if $buchname eq 'Amos';
    return 'ob'    if $buchname eq 'Obadiah';
    return 'jon'   if $buchname eq 'Jonah';
    return 'mi'    if $buchname eq 'Micah';
    return 'nah'   if $buchname eq 'Nahum';
    return 'hab'   if $buchname eq 'Habakkuk';
    return 'zeph'  if $buchname eq 'Zephaniah';
    return 'hag'   if $buchname eq 'Haggai';
    return 'sach'  if $buchname eq 'Zechariah';
    return 'mal'   if $buchname eq 'Malachi';

    die "Unbekannter Buchname $buchname";

  } # }}}

  die;

} # }}}

sub Link { # {{{

  my $buch     = shift;
  my $kapitel  = shift;
  my $vers     = shift;
  my $vers_bis = shift || '';


  return '<a class="vrs" ' . LinkHref($buch, $kapitel, $vers) . '>' . VersMenschlich($buch, $kapitel, $vers, $vers_bis) . '</a>';

} # }}}

sub LinkHref { # {{{
 
   my $buch     = shift;
   my $kapitel  = shift;
   my $vers     = shift;
 
   if ($buch eq 'ri' or $buch eq 'rt') {
     return "href='ri_rt.html#I$buch-$kapitel-$vers'";
   }
   if ($buch eq 'esr' or $buch eq 'neh' or $buch eq 'est') {
     return "href='esr_neh_est.html#I$buch-$kapitel-$vers'";
   }
   if ($buch eq 'pred' or $buch eq 'hl') {
     return "href='pred_hl.html#I$buch-$kapitel-$vers'";
   }
   if ($buch eq 'hos' or $buch eq 'joe' or $buch eq 'am' or $buch eq 'ob' or $buch eq 'jon' or $buch eq 'mi') {
     return "href='hos_joe_am_ob_jon_mi.html#I$buch-$kapitel-$vers'";
   }
   if ($buch eq 'nah' or $buch eq 'hab' or $buch eq 'zeph' or $buch eq 'hag' or $buch eq 'sach' or $buch eq 'mal') {
     return "href='nah_hab_zeph_hag_sach_mal.html#I$buch-$kapitel-$vers'";
   }
   if ($buch eq '1kor' or $buch eq '2kor') {
     return "href='kor.html#I$buch-$kapitel-$vers'";
   }
   if ($buch eq 'gal' or $buch eq 'eph' or $buch eq 'phil' or $buch eq 'kol' or $buch eq '1thes' or $buch eq '2thes') {
     return "href='gal_eph_phil_kol_thes.html#I$buch-$kapitel-$vers'";
   }
   if ($buch eq '1tim' or $buch eq '2tim' or $buch eq 'tit' or $buch eq 'phim' or $buch eq 'hebr') {
     return "href='tim_tit_phim_hebr.html#I$buch-$kapitel-$vers'";
   }
   if ($buch eq 'jak' or $buch eq '1petr' or $buch eq '2petr' or $buch eq '1joh' or $buch eq '2joh' or $buch eq '3joh' or $buch eq 'jud') {
     return "href='jak_petr_joh_jud.html#I$buch-$kapitel-$vers'";
   }
 
   return "href='$buch.html#I$buch-$kapitel-$vers'";
 
} # }}}

sub VersMenschlich { # {{{

  my $buch     = shift;
  my $kapitel  = shift;
  my $vers     = shift;
  my $vers_bis = shift;

  my $ret = ucfirst($buch);
  $ret =~ s/(\d)(\w)/$1 . ". " . ucfirst($2)/e;

  $ret =~ s/Roem/Röm/;

  $ret .= " $kapitel:$vers";
  $ret .= "-$vers_bis" if $vers_bis;

  return $ret;

} # }}}

1;
