#!/usr/bin/perl
use warnings;
use strict;

my $win = 0;
if ($^O eq 'MSWin32') {
  $win = 1;
}

my $temp_dir;
if ($win) {
  $temp_dir = 'c:\temp\\'
}
else {
  $temp_dir = '/tmp/'
}

my $out_filename = "${temp_dir}ereignisse_nt.dot";

open my $out, '>', $out_filename;
open my $in , '<','ereignisse_nt.dot';

my $invisible = 0;

my $invisible_line_color;
my $invisible_fill_color;
my $invisible_font_color;

if ($invisible) {
   $invisible_line_color = "#ffffff";
   $invisible_fill_color = "#ffffff";
   $invisible_font_color = "#ffffff";
}
else {
   $invisible_line_color = "#cccccc";
   $invisible_fill_color = "#cccccc";
   $invisible_font_color = "#ffffff";
}

while (my $line = <$in>) {

  $line =~ s/#PAULUS_FC#/#ffcccc/g; # Fill Color
  $line =~ s/#TIMOTHEUS_FC#/#ddffdd/g; # Fill Color
  $line =~ s/\$AQUILLA_PRISCILLA\$/fontcolor="#ffff00" fillcolor="#AQUILLA_PRISCILLA_FC#"/g; # Fill Color
  $line =~ s/#AQUILLA_PRISCILLA_FC#/#9922ff/g; # Fill Color

  $line =~ s/\$INVISIBLE_LINE\$/color="$invisible_line_color"/g;
  $line =~ s/\$INVISIBLE_RECT\$/shape=record fontsize=8 fontname=Arial style=filled fillcolor="$invisible_fill_color" fontcolor="$invisible_font_color" color="$invisible_font_color"/g;
# $line =~ s/\$INVISIBLE_DOT\$/shape=point color="#ffffff"/g;

  $line =~ s/\$AUSSERBIBLISCH\$/color=black shape=record fontsize=8 fontname=Arial style=filled fillcolor="$invisible_fill_color"  fillcolor="#ffbb00"/g;

  print $out $line;

}

close $in;
close $out;

system "dot -Gcharset=latin1 -Tpdf -oereignisse_nt.pdf $out_filename";
if ($win) {
  system "ereignisse_nt.pdf";
}
else {
  system "okular ereignisse_nt.pdf";
}
