#!/usr/bin/perl
use warnings;
use strict;


#    <tr><td align="left"><font color="red">todo</font></td></tr>

open (my $dot, '>', 'Personen.dot') or die;

print $dot <<DOT;
digraph P {
  node [shape=plaintext fontname="Sans serif" fontsize="8"];
DOT

  my $juda = person('juda', 'Juda');
# 1mo-46-12
# my $gher =
# my $onan =
  my $schela = person('schela', 'Schela');
  my $perez  = person('perez' , 'Perez' );
  my $serach = person('search', 'Serach');
  

rel($juda, $schela);
rel($juda, $perez );
rel($juda, $serach);

print $dot "}\n";
close $dot;

system "dot Personen.dot -Tpdf -oPersonen.pdf";

sub person {
  my $id   = shift;
  my $name = shift;

  print $dot <<"DOT";

  $id [ label=<
  <table border="1" cellborder="0" cellspacing="1">
    <tr><td align="left"><b>$name</b></td></tr>
  </table>>];

DOT

  return $id;
  
}

sub rel {
  my $father = shift;
  my $child  = shift;

  print $dot "  $father -> $child\n";
}
