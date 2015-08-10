use warnings;
use strict;
use feature 'say';

use BiblischeChronologie;

say "Jahr der Entrükcung Henochs:   " . BiblischeChronologie::Jahr('Henoch entrückt'        );
say "Jahr des Todes von Lamech:     " . BiblischeChronologie::Jahr('Lamech†'                );
say "Jahr des Todes von Methusalah: " . BiblischeChronologie::Jahr('Methusalah†'            );
say "Jahr des Flutanfangs:          " . BiblischeChronologie::Jahr('Flut Beginn'            );
say "Jahr 120 vor Flutanfang:       " . BiblischeChronologie::Jahr('120 Jahre vor Flut'     ) / 2;
say "Mitte Henoch:                  " .(BiblischeChronologie::Jahr('Henoch*'                ) +
                                        BiblischeChronologie::Jahr('Henoch entrückt'        ));

say "Sems Geburt:                   " . BiblischeChronologie::Jahr('Sem*'                   );
say "Arpakschads Geburt (Zeugung?): " . BiblischeChronologie::Jahr('Arpakschad*'            );
say "Schelachs Geburt:              " . BiblischeChronologie::Jahr('Schelach*'              );
say "Hebers Geburt:                 " . BiblischeChronologie::Jahr('Heber*'                 );
say "Pelegs Geburt:                 " . BiblischeChronologie::Jahr('Peleg*'                 );
say "Regus Geburt:                  " . BiblischeChronologie::Jahr('Regu*'                  );
say "Serugs Geburt:                 " . BiblischeChronologie::Jahr('Serug*'                 );
say "Nahors Geburt:                 " . BiblischeChronologie::Jahr('Nahor*'                 );
say "Terachs Geburt:                " . BiblischeChronologie::Jahr('Terach*'                );  # 1878 liegt zwischen zwei Primzahlen
say "Abrahams Geburt:               " . BiblischeChronologie::Jahr('Abraham*'               );
say "Sarahs Geburt:                 " . BiblischeChronologie::Jahr('Sarah*'                 );
say "Terachs Tod:                   " . BiblischeChronologie::Jahr('Terach†'                );
say "Ismael gezeugt:                " . BiblischeChronologie::Jahr('Ismael gezeugt'         );
say "Ismaels Geburt:                " . BiblischeChronologie::Jahr('Ismael*'                );
say "Isaaks Geburt:                 " . BiblischeChronologie::Jahr('Isaak*'                 );
say "Sarahs Tod:                    " . BiblischeChronologie::Jahr('Sarah†'                 );
say "Isaaks Hochzeit:               " . BiblischeChronologie::Jahr('Isaak & Rebekka'        );
say "Sems Tod:                      " . BiblischeChronologie::Jahr('Sem†'                   );
say "Jakobs Geburt:                 " . BiblischeChronologie::Jahr('Jakob*'                 );
say "Abrahams Tod:                  " . BiblischeChronologie::Jahr('Abraham†'               );
say "Ismaels Tod:                   " . BiblischeChronologie::Jahr('Ismael†'                );
say "Isaaks Tod:                    " . BiblischeChronologie::Jahr('Isaak†'                 );
say "Josephs Geburt:                " . BiblischeChronologie::Jahr('Joseph*'                );
say "Ende des Überflusses:          " . BiblischeChronologie::Jahr('7. Jahr des Überflusses');
say "Beginn der Hungersnot'         " . BiblischeChronologie::Jahr('1. Jahr der Hungersnot' );
say "Ende der Hungersnot:           " . BiblischeChronologie::Jahr('7. Jahr der Hungersnot' );
say "Jakob in Ägypten'              " . BiblischeChronologie::Jahr('Jakob in Ägypten'       );
say "Jakobs Tod:                    " . BiblischeChronologie::Jahr('Jakob†'                 );
