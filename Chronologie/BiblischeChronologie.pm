# vi: guifont=DejaVu_LGC_Sans_Mono\:h8\:cANSI
package BiblischeChronologie;

use warnings;
use strict;

my %Ereignisse;
my %Zeitspannen;



sub Ereignis { # {{{

  my $ereignis_name = shift;
  my %opts = @_;

  die "Ereignis $ereignis_name bereits erfasst!"                if exists $Ereignisse {$ereignis_name};
  die "Ereignis $ereignis_name bereits als Zeitspanne erfasst!" if exists $Zeitspannen{$ereignis_name};

  if (my $nach_ereignis = $opts{nach}) {

    die "Ereignis $ereignis_name kann nicht bestimmt werden, da Ereignis $nach_ereignis nicht bekannt ist" if not exists $Ereignisse{$nach_ereignis};
    die "Bei Ereignis $ereignis_name wurden die Jahre nicht angegeben" unless $opts{jahre};

    $Ereignisse{$ereignis_name}{jahr} = $Ereignisse{$nach_ereignis}{jahr} + $opts{jahre};
  }
  elsif (my $vor_ereignis = $opts{vor}) {

    die "Ereignis $ereignis_name kann nicht bestimmt werden, da Ereignis $vor_ereignis nicht bekannt ist" if not exists $Ereignisse{$vor_ereignis};
    die "Bei Ereignis $ereignis_name wurden die Jahre nicht angegeben" unless $opts{jahre};

    $Ereignisse{$ereignis_name}{jahr} = $Ereignisse{$vor_ereignis}{jahr} - $opts{jahre};
  }
  else {
    die "weder Option 'nach' noch 'vor' für Ereignis $ereignis_name wurde angegeben\n";
  }


} # }}}

sub Zeitspanne { # {{{

  my $zeitspannen_name = shift;
  my %opts             = @_;

  die "Zeitspanne $zeitspannen_name bereits erfasst!"              if exists $Zeitspannen{$zeitspannen_name};
  die "Zeitspanne $zeitspannen_name bereits als Ereignis erfasst!" if exists $Ereignisse {$zeitspannen_name};

  die "Zeitspanne $zeitspannen_name benötigt ein von und ein bis Ereignis" unless exists $opts{von} and exists $opts{bis};

  my $von_ereignis = $opts{von};
  my $bis_ereignis = $opts{bis};

  die "von Ereignis $von_ereignis unbekannt" unless exists $Ereignisse{$von_ereignis};
  die "bis Ereignis $bis_ereignis unbekannt" unless exists $Ereignisse{$bis_ereignis};

    
} # }}}

sub Jahr { # {{{

  my $ereignis_name = shift;

  die "Jahr von $ereignis_name kann nicht bestimmt werden, da Ereignis nicht erfasst" unless exists $Ereignisse{$ereignis_name};

  return $Ereignisse{$ereignis_name}{jahr};
    
} # }}}

BEGIN { # {{{

   $Ereignisse{'Adam*'}{jahr} = 0;

   Ereignis('Seth*'                    , nach=>'Adam*'                 , jahre=>  130, vers=>'1. Mo 5:1'         );
   Ereignis('Enosch*'                  , nach=>'Seth*'                 , jahre=>  105, vers=>'1. Mo 5:6'         );
   Ereignis('Adam†'                    , nach=>'Seth*'                 , jahre=>  903, vers=>'1. Mo 5:5'         );
   Ereignis('Seth†'                    , nach=>'Seth*'                 , jahre=>  912, vers=>'1. Mo 5:8'         );
   Ereignis('Kenan*'                   , nach=>'Enosch*'               , jahre=>   90, vers=>'1. Mo 5:9'         );
   Ereignis('Enosch†'                  , nach=>'Enosch*'               , jahre=>  905, vers=>'1. Mo 5:11'        );
   Ereignis('Mahalaleel*'              , nach=>'Kenan*'                , jahre=>   70, vers=>'1. Mo 5:12'        );
   Ereignis('Jared*'                   , nach=>'Mahalaleel*'           , jahre=>   65, vers=>'1. Mo 5:15'        );
   Ereignis('Kenan†'                   , nach=>'Kenan*'                , jahre=>  910, vers=>'1. Mo 5:14'        );
   Ereignis('Mahalaleel†'              , nach=>'Mahalaleel*'           , jahre=>  895, vers=>'1. Mo 5:17'        );
   Ereignis('Henoch*'                  , nach=>'Jared*'                , jahre=>  162, vers=>'1. Mo 5:18'        );
   Ereignis('Jared†'                   , nach=>'Jared*'                , jahre=>  962, vers=>'1. Mo 5:20'        );
   Ereignis('Methusalah*'              , nach=>'Henoch*'               , jahre=>   65, vers=>'1. Mo 5:21'        );
   Ereignis('Henoch entrückt'          , nach=>'Henoch*'               , jahre=>  365, vers=>'1. Mo 5:23'        );
   Ereignis('Lamech*'                  , nach=>'Methusalah*'           , jahre=>  187, vers=>'1. Mo 5:25'        );
   Ereignis('Lamech†'                  , nach=>'Lamech*'               , jahre=>  777, vers=>'1. Mo 5:31'        );
   Ereignis('Methusalah†'              , nach=>'Methusalah*'           , jahre=>  969, vers=>'1. Mo 5:27'        );
   Ereignis('Noah*'                    , nach=>'Lamech*'               , jahre=>  182, vers=>'1. Mo 5:28-29'     );
   Ereignis('Flut Beginn'              , nach=>'Noah*'                 , jahre=>  600, vers=>'1. Mo 7:6'         );
   Ereignis('120 Jahre vor Flut'       , vor =>'Flut Beginn'           , jahre=>  120, vers=>'1. Mo 6:3'         );

   Zeitspanne('Adam',                  , von=>'Adam*'                  , bis=>'Adam†'                  );
   Zeitspanne('Seth',                  , von=>'Seth*'                  , bis=>'Seth†'                  );
   Zeitspanne('Enosch'                 , von=>'Enosch*'                , bis=>'Enosch†'                );
   Zeitspanne('Kenan'                  , von=>'Kenan*'                 , bis=>'Kenan†'                 );
   Zeitspanne('Mahalaleel'             , von=>'Mahalaleel*'            , bis=>'Mahalaleel†'            );
   Zeitspanne('Jared'                  , von=>'Jared*'                 , bis=>'Jared†'                 );
   Zeitspanne('Henoch'                 , von=>'Henoch*'                , bis=>'Henoch entrückt'        );
   Zeitspanne('Methusalah'             , von=>'Methusalah*'            , bis=>'Methusalah†'            );
   Zeitspanne('Lamech'                 , von=>'Lamech*'                , bis=>'Lamech†'                );


} # }}}

1;
