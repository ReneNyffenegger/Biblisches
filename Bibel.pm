#
#    2020-08-16: This modules is used in
#      - BibelKommentare\create-html.pl
#      - ?
#    Probably, it should be merged with Bible_.pm
#    which is found under github: Bibelkommentare\Bibel_.pm
#
package Bibel;

use warnings;
use strict;

use utf8;

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

sub AnzahlKapitel { # {{{

  my $buch = shift;

  return  10 if $buch eq 'esr';
  return  21 if $buch eq 'ri';
  return  14 if $buch eq 'sach';
  return  13 if $buch eq 'hebr';
  return  48 if $buch eq 'hes';
  return  36 if $buch eq '2chr';
  return  28 if $buch eq 'apg';
  return   6 if $buch eq '1tim';
  return   8 if $buch eq 'hl';
  return   1 if $buch eq '2joh';
  return   4 if $buch eq 'rt';
  return  27 if $buch eq '3mo';
  return   1 if $buch eq 'jud';
  return  29 if $buch eq '1chr';
  return   5 if $buch eq '1thes';
  return   2 if $buch eq 'hag';
  return  25 if $buch eq '2koe';
  return  34 if $buch eq '5mo';
  return   9 if $buch eq 'am';
  return   3 if $buch eq 'zeph';
  return  13 if $buch eq 'neh';
  return   4 if $buch eq 'phil';
  return   5 if $buch eq 'jak';
  return   5 if $buch eq '1joh';
  return  24 if $buch eq 'jos';
  return  31 if $buch eq 'spr';
  return   3 if $buch eq 'hab';
  return  21 if $buch eq 'joh';
  return  24 if $buch eq 'lk';
  return  42 if $buch eq 'hi';
  return   1 if $buch eq '3joh';
  return 150 if $buch eq 'ps';
  return   3 if $buch eq 'nah';
  return  16 if $buch eq 'mk';
  return  12 if $buch eq 'pred';
  return  24 if $buch eq '2sam';
  return  10 if $buch eq 'est';
  return  31 if $buch eq '1sam';
  return   1 if $buch eq 'ob';
  return   5 if $buch eq 'kla';
  return   1 if $buch eq 'phim';
  return  14 if $buch eq 'hos';
  return  22 if $buch eq 'offb';
  return  52 if $buch eq 'jer';
  return   4 if $buch eq 'kol';
  return   5 if $buch eq '1petr';
  return  22 if $buch eq '1koe';
  return  50 if $buch eq '1mo';
  return   6 if $buch eq 'eph';
  return  12 if $buch eq 'dan';
  return   3 if $buch eq 'tit';
  return   4 if $buch eq 'jon';
  return  16 if $buch eq 'roem';
  return  13 if $buch eq '2kor';
  return   3 if $buch eq '2thes';
  return   6 if $buch eq 'gal';
  return   3 if $buch eq 'mal';
  return   4 if $buch eq '2tim';
  return   7 if $buch eq 'mi';
  return   4 if $buch eq 'joe';
  return   3 if $buch eq '2petr';
  return  40 if $buch eq '2mo';
  return  28 if $buch eq 'mt';
  return  16 if $buch eq '1kor';
  return  36 if $buch eq '4mo';
  return  66 if $buch eq 'jes';


} # }}}

sub Link { # {{{

  my $buch     = shift;
  my $kapitel  = shift;
  my $vers     = shift;

  my $opts     = shift || {};

  my $class='';
  if (exists $opts->{class}) {
    $class = ' class="' . $opts->{class} .'"';
  }

  if ($opts->{vers}) {
    return "<a$class " . LinkHref($buch, $kapitel, $vers, 'seperate chapters') . '>Vers ' . $vers . '</a>';
  }
  return "<a$class " . LinkHref($buch, $kapitel, $vers, 'seperate chapters') . '>' . VersMenschlich($buch, $kapitel, $vers, $opts->{vers_bis}) . '</a>';

} # }}}

sub LinkHref { # {{{
 
   my $buch              = shift;
   my $kapitel           = shift;
   my $vers              = shift;
   my $seperate_chapters = shift;


   if ($seperate_chapters) {
     return "href='${buch}_$kapitel.html#I$buch-$kapitel-$vers'";
   }
 
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
  $ret =~ s/Koe/Kö/;

  $ret .= " $kapitel:$vers";

  if ($vers_bis) {
    if ($vers_bis =~ /^\d+$/) {
      $ret .= "-$vers_bis";
    }
    elsif ($vers_bis eq 'ff') {
      $ret .= "ff";
    }
  }

  return $ret;

} # }}}

1;
