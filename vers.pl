#!/usr/bin/perl -w
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

  return "${book}_$chapter.html#I$book-$chapter-$verse";
} # }}}
