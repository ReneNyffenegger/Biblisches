# vi: guifont=DejaVu_LGC_Sans_Mono\:h8\:cANSI
package BiblischeChronologie;

use warnings;
use strict;
use Scalar::Util qw(looks_like_number);

our %Ereignisse;
our %Zeitspannen;



sub Ereignis { # {{{

  my $ereignis_name = shift;
  my %opts = @_;

  die "Ereignis $ereignis_name bereits erfasst!"                if exists $Ereignisse {$ereignis_name};
  die "Ereignis $ereignis_name bereits als Zeitspanne erfasst!" if exists $Zeitspannen{$ereignis_name};

  if (my $nach_ereignis = $opts{nach}) { # {{{

    die "Ereignis $ereignis_name kann nicht bestimmt werden, da Ereignis $nach_ereignis nicht bekannt ist" if not exists $Ereignisse{$nach_ereignis};
    die "Bei Ereignis $ereignis_name wurden die Jahre nicht angegeben" unless exists $opts{jahre};

    $Ereignisse{$ereignis_name}{jahr} = $Ereignisse{$nach_ereignis}{jahr} + $opts{jahre};
  } # }}}
  elsif (my $vor_ereignis = $opts{vor}) { # {{{

    die "Ereignis $ereignis_name kann nicht bestimmt werden, da Ereignis $vor_ereignis nicht bekannt ist" if not exists $Ereignisse{$vor_ereignis};
    die "Bei Ereignis $ereignis_name wurden die Jahre nicht angegeben" unless exists $opts{jahre};

    $Ereignisse{$ereignis_name}{jahr} = $Ereignisse{$vor_ereignis}{jahr} - $opts{jahre};
  } # }}}
  elsif (my $jahr_ereignis = $opts{jahr}) { # {{{
    die "Ereignis $ereignis_name kann nicht bestimmt werden, da Ereignis $jahr_ereignis nicht bekannt ist" if not exists $Ereignisse{$jahr_ereignis};
    $Ereignisse{$ereignis_name}{jahr} = $Ereignisse{$jahr_ereignis}{jahr};
  } # }}}
  else {
    die "weder Option 'nach' noch 'vor' für Ereignis $ereignis_name wurde angegeben\n";
  }


} # }}}

sub Pruefe { # {{{

  my $ereignis_name = shift;
  my %opts = @_;

  if (exists $opts{vor}) { # {{{

    if (exists $opts{jahre}) {
       if ($Ereignisse{$ereignis_name}{jahr} + $opts{jahre} != $Ereignisse{$opts{vor}}{jahr}) {
         die "$ereignis_name nicht $Ereignisse{$ereignis_name}{jahre} Jahre vor $opts{vor}";
       }
    }
    else {
      die;
    }

  } # }}}
  elsif (exists $opts{jahr}) { # {{{

    my $year;
    if (looks_like_number($opts{jahr})) {
       $year = $opts{jahr};
    }
    else {
       $year = $Ereignisse{$opts{jahr}}{jahr};
    }

    if ($Ereignisse{$ereignis_name}{jahr} != $year) {

       die "$ereignis_name nicht im selben Jahr wie $opts{jahr}";
    }
  } # }}}
  else { # {{{
    die;
  } # }}}

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
   Ereignis('Abraham Haran -> Kanaan'  , jahr=>'Terach†'                                 , vers=>'Apg 7:4'           );
   Ereignis('Abraham*'                 , vor =>'Abraham Haran -> Kanaan'   , jahre=>   75, vers=>'1. Mo 12:4'        );
   Ereignis('Bund mit Abraham'         , nach=>'Abraham*'                  , jahre=>   99, vers=>'1. Mo 17:1'        );
   Ereignis('Abraham†'                 , nach=>'Abraham*'                  , jahre=>  175, vers=>'1. Mo 25:7'        );
   Ereignis('Ismael gezeugt'           , nach=>'Abraham Haran -> Kanaan'   , jahre=>   10, vers=>'1. Mo 16:3'        );
   Ereignis('Ismael*'                  , nach=>'Abraham*'                  , jahre=>   86, vers=>'1. Mo 16:16'       );
   Ereignis('Ismael†'                  , nach=>'Ismael*'                   , jahre=>  137, vers=>'1. Mo 25:17'       );
   Ereignis('Isaak*'                   , nach=>'Abraham*'                  , jahre=>  100, vers=>'1. Mo 21:5'        );
   Ereignis('Isaak†'                   , nach=>'Isaak*'                    , jahre=>  180, vers=>'1. Mo 35:28'       );
   Ereignis('Sarah*'                   , vor =>'Isaak*'                    , jahre=>   90, vers=>'1. Mo 17:17'       );
   Ereignis('Sarah†'                   , nach=>'Sarah*'                    , jahre=>  127, vers=>'1. Mo 23:1'        );
   Ereignis('Isaak & Rebekka'          , nach=>'Isaak*'                    , jahre=>   40, vers=>'1. Mo 25:20'       );
   Ereignis('Esau*'                    , nach=>'Isaak*'                    , jahre=>   60, vers=>'1. Mo 25:25'       );
   Ereignis('Jakob*'                   , nach=>'Isaak*'                    , jahre=>   60, vers=>'1. Mo 25:26'       );
   Ereignis('Jakob in Ägypten'         , nach=>'Jakob*'                    , jahre=>  130, vers=>'1. Mo 47:9'        );
   Ereignis('1. Jahr der Hungersnot'   , vor =>'Jakob in Ägypten'          , jahre=>    1, vers=>'1. Mo 45:6'        );
   Ereignis('7. Jahr der Hungersnot'   , nach=>'1. Jahr der Hungersnot'    , jahre=>    6                            );
   Ereignis('1. Jahr des Überflusses'  , vor =>'1. Jahr der Hungersnot'    , jahre=>    7                            ); # TODO Hungersnot folgt Überfluss
   Ereignis('7. Jahr des Überflusses'  , nach=>'1. Jahr des Überflusses'   , jahre=>    6                            );
   Ereignis('Joseph 30 jährig'         , vor =>'1. Jahr des Überflusses'   , jahre=>    1, vers=>'1. Mo 41:46'       );
   Ereignis('Joseph*'                  , vor =>'Joseph 30 jährig'          , jahre=>   30, vers=>'1. Mo 25:24'       );
   Ereignis('Jakob bei Laban'          , vor =>'Joseph*'                   , jahre=>   14,                           ); # TODO: Verse
   Ereignis('Jakob dient für Rahel (B)', jahr=>'Jakob bei Laban'                                                     ); # (B) steht für Beginn
   Ereignis('Jakob dient für Lea (B)'  , nach=>'Jakob dient für Rahel (B)' , jahre=>    7, vers=>'1. Mo 29:18'       );
   Ereignis('Ruben*'                   , jahr=>'Jakob dient für Lea (B)'   , jahre=>    0, vers=>'1. Mo 29:32'       ); # Geburtsjahr um 1 Jahr unsicher
   Ereignis('Simeon*'                  , nach=>'Ruben*'                    , jahre=>    1, vers=>'1. Mo 29:33'       );
   Ereignis('Levi*'                    , nach=>'Simeon*'                   , jahre=>    1, vers=>'1. Mo 29:34'       );
   Ereignis('Jakob†'                   , nach=>'Jakob*'                    , jahre=>  147, vers=>'1. Mo 47:28'       );
   Ereignis('Esaus Hochzeit'           , nach=>'Esau*'                     , jahre=>   40, vers=>'1. Mo 26:34'       );
   Ereignis('Jakob 130 jährig'         , nach=>'Jakob*'                    , jahre=>  130, vers=>'1. Mo 47:9'        );
   Ereignis('2. Jahr der Hungersnot'   , jahr=>'Jakob 130 jährig'          ,               vers=>'1. Mo 45:6'        );
   Ereignis('Joseph vor dem Pharao'    , vor =>'1. Jahr des Überflusses'   , jahre=>    1                            ); # TODO Vers
   Ereignis('Joseph†'                  , nach=>'Joseph*'                   , jahre=>  110, vers=>'1. Mo 50:26'       );
   Ereignis('Exodus'                   , nach=>'Jakob in Ägypten'          , jahre=>  430, vers=>'2. Mo 12:40-41'    );
   Ereignis('Gesetz'                   , jahr=>'Exodus'                                  , vers=>'2. Mo 19:1'        );
   Ereignis('Auf Christus best. Test.' , vor =>'Gesetz'                    , jahre=>  430, vers=>'Gal 3:17/1. Mo 46:3');
   Ereignis('Beginn 400 Jahre Dienst'  , vor =>'Exodus'                    , jahre=>  400, vers=>'1. Mo 15:13'        );
   Ereignis('Levi†'                    , nach=>'Levi*'                     , jahre=>  137, vers=>'2. Mo 6:16'         );
   Ereignis('Mose 80 jährig'           , jahr=>'Exodus'                                  , vers=>'2. Mo 7:7'          );
   Ereignis('Mose*'                    , vor =>'Mose 80 jährig'            , jahre=>   80                             );
   Ereignis('Mose†'                    , nach=>'Mose*'                     , jahre=>  120, vers=>'5. Mo 34:5-7'       );

   Pruefe  ('2. Jahr der Hungersnot'   , vor =>'7. Jahr der Hungersnot'    , jahre=>    5);
   Pruefe  ('Jakob in Ägypten'         , jahr=>'2. Jahr der Hungersnot');
   Pruefe  ('Jakob 130 jährig'         , vor=> 'Jakob†'                    , jahre=> 17);
   Pruefe  ('Joseph vor dem Pharao'    , jahr=>'Joseph 30 jährig');
   Pruefe  ('Bund mit Abraham'         , jahr=> 43*49);
   Pruefe  ('Levi*'                    , jahr=> 46*49);

#  Ereignis('Jakob verlässt Laban'     , nach=>'......'                    , jahre=>   20, vers=>'1. Mo 31:38'       );

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
