#
#   Vgl Unterteilung_Kommentare.xlsx
#
use warnings;
use strict;

my @books = (
  {abbr => '1mo'    , rel_length =>  60},
  {abbr => '2mo'    , rel_length =>  51},
  {abbr => '3mo'    , rel_length =>  37},
  {abbr => '4mo'    , rel_length =>  49},
  {abbr => '5mo'    , rel_length =>  44},
  {abbr => 'jos'    , rel_length =>  29},
  {abbr => 'ri'     , rel_length =>  28},
  {abbr => 'rt'     , rel_length =>   5},
  {abbr => '1sam'   , rel_length =>  37},
  {abbr => '2sam'   , rel_length =>  31},
  {abbr => '1koe'   , rel_length =>  37},
  {abbr => '2koe'   , rel_length =>  35},
  {abbr => '1chr'   , rel_length =>  32},
  {abbr => '2chr'   , rel_length =>  40},
  {abbr => 'esr'    , rel_length =>  12},
  {abbr => 'neh'    , rel_length =>  16},
  {abbr => 'est'    , rel_length =>   9},
  {abbr => 'hi'     , rel_length =>  31},
  {abbr => 'ps'     , rel_length =>  86},
  {abbr => 'spr'    , rel_length =>  31},
  {abbr => 'pred'   , rel_length =>  10},
  {abbr => 'hl'     , rel_length =>   7},
  {abbr => 'jes'    , rel_length =>  60},
  {abbr => 'jer'    , rel_length =>  65},
  {abbr => 'kla'    , rel_length =>   8},
  {abbr => 'hes'    , rel_length =>  60},
  {abbr => 'dan'    , rel_length =>  19},
  {abbr => 'hos'    , rel_length =>   9},
  {abbr => 'joe'    , rel_length =>   4},
  {abbr => 'am'     , rel_length =>   7},
  {abbr => 'ob'     , rel_length =>   2},
  {abbr => 'jon'    , rel_length =>   3},
  {abbr => 'mi'     , rel_length =>   6},
  {abbr => 'nah'    , rel_length =>   3},
  {abbr => 'hab'    , rel_length =>   3},
  {abbr => 'zeph'   , rel_length =>   3},
  {abbr => 'hag'    , rel_length =>   3},
  {abbr => 'sach'   , rel_length =>  11},
  {abbr => 'mal'    , rel_length =>   7},
  {abbr => 'matt'   , rel_length =>  42},
  {abbr => 'mk'     , rel_length =>  26},
  {abbr => 'lk'     , rel_length =>  43},
  {abbr => 'joh'    , rel_length =>  32},
  {abbr => 'apg'    , rel_length =>  41},
  {abbr => 'roem'   , rel_length =>  19},
  {abbr => '1kor'   , rel_length =>  17},
  {abbr => '2kor'   , rel_length =>  11},
  {abbr => 'gal'    , rel_length =>   6},
  {abbr => 'eph'    , rel_length =>   7},
  {abbr => 'phil'   , rel_length =>   5},
  {abbr => 'kol'    , rel_length =>   5},
  {abbr => '1thes'  , rel_length =>   4},
  {abbr => '2thes'  , rel_length =>   3},
  {abbr => '1tim'   , rel_length =>   6},
  {abbr => '2tim'   , rel_length =>   4},
  {abbr => 'tit'    , rel_length =>   3},
  {abbr => 'phim'   , rel_length =>   2},
  {abbr => 'hebr'   , rel_length =>  13},
  {abbr => 'jak'    , rel_length =>   5},
  {abbr => '1petr'  , rel_length =>   5},
  {abbr => '2petr'  , rel_length =>   4},
  {abbr => '1joh'   , rel_length =>   5},
  {abbr => '2joh'   , rel_length =>   1},
  {abbr => '3joh'   , rel_length =>   1},
  {abbr => 'jud'    , rel_length =>   2},
  {abbr => 'offb'   , rel_length =>  19},
);

my $cur_col=0;
for my $book (@books) {

  print ' ' x $cur_col;
  print $book->{abbr};
  print "\n";
  print ' ' x $cur_col;
  print 'X' x $book->{rel_length};
  print "\n";

  $cur_col += $book->{rel_length};

}
