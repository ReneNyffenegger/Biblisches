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
    die "Bei Ereignis $ereignis_name wurden die Jahre nicht angegeben" unless exists $opts{jahre};

    $Ereignisse{$ereignis_name}{jahr} = $Ereignisse{$nach_ereignis}{jahr} + $opts{jahre};
  }
  elsif (my $vor_ereignis = $opts{vor}) {

    die "Ereignis $ereignis_name kann nicht bestimmt werden, da Ereignis $vor_ereignis nicht bekannt ist" if not exists $Ereignisse{$vor_ereignis};
    die "Bei Ereignis $ereignis_name wurden die Jahre nicht angegeben" unless exists $opts{jahre};

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

   Ereignis('Seth*'                    , nach=>'Adam*'                     , jahre=>  130, vers=>'1. Mo 5:1'         );
   Ereignis('Enosch*'                  , nach=>'Seth*'                     , jahre=>  105, vers=>'1. Mo 5:6'         );
   Ereignis('Adam†'                    , nach=>'Seth*'                     , jahre=>  903, vers=>'1. Mo 5:5'         );
   Ereignis('Seth†'                    , nach=>'Seth*'                     , jahre=>  912, vers=>'1. Mo 5:8'         );
   Ereignis('Kenan*'                   , nach=>'Enosch*'                   , jahre=>   90, vers=>'1. Mo 5:9'         );
   Ereignis('Enosch†'                  , nach=>'Enosch*'                   , jahre=>  905, vers=>'1. Mo 5:11'        );
   Ereignis('Mahalaleel*'              , nach=>'Kenan*'                    , jahre=>   70, vers=>'1. Mo 5:12'        );
   Ereignis('Jared*'                   , nach=>'Mahalaleel*'               , jahre=>   65, vers=>'1. Mo 5:15'        );
   Ereignis('Kenan†'                   , nach=>'Kenan*'                    , jahre=>  910, vers=>'1. Mo 5:14'        );
   Ereignis('Mahalaleel†'              , nach=>'Mahalaleel*'               , jahre=>  895, vers=>'1. Mo 5:17'        );
   Ereignis('Henoch*'                  , nach=>'Jared*'                    , jahre=>  162, vers=>'1. Mo 5:18'        );
   Ereignis('Jared†'                   , nach=>'Jared*'                    , jahre=>  962, vers=>'1. Mo 5:20'        );
   Ereignis('Methusalah*'              , nach=>'Henoch*'                   , jahre=>   65, vers=>'1. Mo 5:21'        );
   Ereignis('Henoch entrückt'          , nach=>'Henoch*'                   , jahre=>  365, vers=>'1. Mo 5:23'        );
   Ereignis('Lamech*'                  , nach=>'Methusalah*'               , jahre=>  187, vers=>'1. Mo 5:25'        );
   Ereignis('Lamech†'                  , nach=>'Lamech*'                   , jahre=>  777, vers=>'1. Mo 5:31'        );
   Ereignis('Methusalah†'              , nach=>'Methusalah*'               , jahre=>  969, vers=>'1. Mo 5:27'        );
   Ereignis('Noah*'                    , nach=>'Lamech*'                   , jahre=>  182, vers=>'1. Mo 5:28-29'     );
   Ereignis('Noah 500 jährig'          , nach=>'Noah*'                     , jahre=>  500, vers=>'1. Mo 5:32'        );
   Ereignis('Flut Beginn'              , nach=>'Noah*'                     , jahre=>  600, vers=>'1. Mo 7:6'         );
   Ereignis('120 Jahre vor Flut'       , vor =>'Flut Beginn'               , jahre=>  120, vers=>'1. Mo 6:3'         );
   Ereignis('Noah†'                    , nach=>'Noah*'                     , jahre=>  950, vers=>'1. Mo 9:29'        );
   Ereignis('Arpakschad*'              , nach=>'Flut Beginn'               , jahre=>    2, vers=>'1. Mo 11:10'       );
   Ereignis('Sem*'                     , vor =>'Arpakschad*'               , jahre=>  100, vers=>'1. Mo 11:10'       );
   Ereignis('Sem†'                     , nach=>'Arpakschad*'               , jahre=>  500, vers=>'1. Mo 11:11'       );
   Ereignis('Schelach*'                , nach=>'Arpakschad*'               , jahre=>   35, vers=>'1. Mo 11:12'       );
   Ereignis('Arpakschad†'              , nach=>'Schelach*'                 , jahre=>  403, vers=>'1. Mo 11:13'       );
   Ereignis('Heber*'                   , nach=>'Schelach*'                 , jahre=>   30, vers=>'1. Mo 11:14'       );
   Ereignis('Schelach†'                , nach=>'Heber*'                    , jahre=>  403, vers=>'1. Mo 11:15'       );
   Ereignis('Peleg*'                   , nach=>'Heber*'                    , jahre=>   34, vers=>'1. Mo 11:16'       );
   Ereignis('Heber†'                   , nach=>'Peleg*'                    , jahre=>  430, vers=>'1. Mo 11:17'       );
   Ereignis('Regu*'                    , nach=>'Peleg*'                    , jahre=>   30, vers=>'1. Mo 11:18'       );
   Ereignis('Peleg†'                   , nach=>'Regu*'                     , jahre=>  209, vers=>'1. Mo 11:19'       );
   Ereignis('Serug*'                   , nach=>'Regu*'                     , jahre=>   32, vers=>'1. Mo 11:20'       );
   Ereignis('Regu†'                    , nach=>'Serug*'                    , jahre=>  207, vers=>'1. Mo 11:21'       );
   Ereignis('Nahor*'                   , nach=>'Serug*'                    , jahre=>   30, vers=>'1. Mo 11:22'       );
   Ereignis('Serug†'                   , nach=>'Nahor*'                    , jahre=>  200, vers=>'1. Mo 11:23'       );
   Ereignis('Terach*'                  , nach=>'Nahor*'                    , jahre=>   29, vers=>'1. Mo 11:24'       );
   Ereignis('Nahor†'                   , nach=>'Terach*'                   , jahre=>  119, vers=>'1. Mo 11:25'       );
   Ereignis('Terach†'                  , nach=>'Terach*'                   , jahre=>  205, vers=>'1. Mo 11:32'       );
   Ereignis('Abraham Haran -> Kanaan'  , nach=>'Terach†'                   , jahre=>    0, vers=>'Apg 7:4'           );
   Ereignis('Abraham*'                 , vor =>'Abraham Haran -> Kanaan'   , jahre=>   75, vers=>'1. Mo 12:4'        );
   Ereignis('Abraham†'                 , nach=>'Abraham*'                  , jahre=>  175, vers=>'1. Mo 25:7'        );
   Ereignis('Ismael gezeugt'           , nach=>'Abraham Haran -> Kanaan'   , jahre=>   10, vers=>'1. Mo 16:3'        );
   Ereignis('Ismael*'                  , nach=>'Abraham*'                  , jahre=>   86, vers=>'1. Mo 16:16'       );
   Ereignis('Ismael†'                  , nach=>'Ismael*'                   , jahre=>  137, vers=>'1. Mo 25:17'       );
   Ereignis('Isaak*'                   , nach=>'Abraham*'                  , jahre=>  100, vers=>'1. Mo 21:5'        );
   Ereignis('Isaak†'                   , nach=>'Isaak*'                    , jahre=>  180, vers=>'1. Mo 35:28'       );
   Ereignis('Sarah*'                   , vor =>'Isaak*'                    , jahre=>   90, vers=>'1. Mo 17:17'       );
   Ereignis('Sarah†'                   , nach=>'Sarah*'                    , jahre=>  127, vers=>'1. Mo 23:1'        );
   Ereignis('Isaak & Rebekka'          , nach=>'Isaak*'                    , jahre=>   40, vers=>'1. Mo 25:20'       );

#  ---

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
