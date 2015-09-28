use warnings;
use strict;

package Bibel;

sub Buchname2Abkuerzung {

  my $buchname = shift;
  my $sprache  = shift;

  if ($sprache eq 'en') {

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

  }

  die;

}

1;
