use warnings;
use strict;

use BiblischeChronologie;

print "Jahr der Entrükcung Henochs:   " . BiblischeChronologie::Jahr('Henoch entrückt'   ) . "\n";
print "Jahr des Todes von Lamech:     " . BiblischeChronologie::Jahr('Lamech†'           ) . "\n";
print "Jahr des Todes von Methusalah: " . BiblischeChronologie::Jahr('Methusalah†'       ) . "\n";
print "Jahr des Flutanfangs:          " . BiblischeChronologie::Jahr('Flut Beginn'       ) . "\n";
print "Jahr 120 vor Flutanfang:       " . BiblischeChronologie::Jahr('120 Jahre vor Flut') / 2 . "\n";
print "Mitte Henoch:                  " .(BiblischeChronologie::Jahr('Henoch*'           ) +
                                          BiblischeChronologie::Jahr('Henoch entrückt'   )) / 2 . "\n";
