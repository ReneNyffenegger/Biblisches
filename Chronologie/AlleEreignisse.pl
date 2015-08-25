use warnings;
use strict;

use BiblischeChronologie;


for my $ereignis (sort {$BiblischeChronologie::Ereignisse{$a}{jahr} <=> 
                        $BiblischeChronologie::Ereignisse{$b}{jahr}
                       } keys %BiblischeChronologie::Ereignisse) {
  printf "%-30s %-4d\n", $ereignis, $BiblischeChronologie::Ereignisse{$ereignis}{jahr};
}

