#!/usr/bin/perl
use warnings;
use strict;
use 5.10.0;

my $output_range = 
# ''
# 'up to Jakob'
# '1. Mo. 46'
  '1mo-10'
;

#    <tr><td align="left"><font color="red">todo</font></td></tr>

my @person_order;
my %persons;
my @rels;
my @ranks;


open (my $dot, '>', 'Personen.dot') or die;

print $dot <<DOT;
digraph P {
//node [shape=plaintext fontname="Sans serif" fontsize="8"];
  node [shape=plaintext fontname="Open Sans" fontsize="8"];

DOT

my $lamech;
if ($output_range ne '1mo-10') { #_{
  my $adam     = person('Adam', generation=>1, anc_lord => 1);

 #_{ 1. Mo 4 + 5
  my $kain       = person('Kain'       , sonof=>$adam       , verse=>'1. Mo 4:1');
  my $abel       = person('Abel'       , sonof=>$adam       , verse=>'1. Mo 4:1');

  my $hanoch     = person('Hanoch'     , sonof=>$kain       , verse=>'1. Mo 4:17');
  my $irad       = person('Irad'       , sonof=>$hanoch     , verse=>'1. Mo 4:18');
  my $mehujael   = person('Mehujael'   , sonof=>$irad       , verse=>'1. Mo 4:18');
  my $methusael  = person('Methusael'  , sonof=>$mehujael   , verse=>'1. Mo 4:18');
  my $lamech_1mo4= person('Lamech'     , sonof=>$methusael  , verse=>'1. Mo 4:18');

  my $jabal      = person('Jabal'      , sonof=>$lamech_1mo4, verse=>'1. Mo 4:20', add=>'V. der Zeltbew. und Herdenbes.');
  my $jubal      = person('Jubal'      , sonof=>$lamech_1mo4, verse=>'1. Mo 4:21', add=>'V., die mit Laute u. Orgel u.');
  my $tubalkain  = person('Tubalkain'  , sonof=>$lamech_1mo4, verse=>'1. Mo 4:22', add=>'Hämmerer …');
  my $naama      = person('Naama'      , sonof=>$lamech_1mo4, verse=>'1. Mo 4:23');

  my $seth       = person('Seth'       , sonof=>$adam       , verse=>'1. Mo 5:3' , anc_lord => 1);
  my $enos       = person('Enos'       , sonof=>$seth       , verse=>'1. Mo 5:6' , anc_lord => 1);
  my $kenan      = person('Kenan'      , sonof=>$enos       , verse=>'1. Mo 5:9' , anc_lord => 1);
  my $mahalel    = person('Mahalel'    , sonof=>$kenan      , verse=>'1. Mo 5:12', anc_lord => 1);
  my $jered      = person('Jered'      , sonof=>$mahalel    , verse=>'1. Mo 5:15', anc_lord => 1);
  my $henoch     = person('Henoch'     , sonof=>$jered      , verse=>'1. Mo 5:18', anc_lord => 1);
  my $methusalah = person('Methusalah' , sonof=>$henoch     , verse=>'1. Mo 5:21', anc_lord => 1);
     $lamech     = person('Lamech'     , sonof=>$methusalah , verse=>'1. Mo 5:25', anc_lord => 1);
} #_}

my $noah;
if ($output_range ne '1mo-10') {
   $noah       = person('Noah'       , sonof=>$lamech     , verse=>'1. Mo 5:29', anc_lord => 1);
}
else {
   $noah       = person('Noah'                            , verse=>'1. Mo 5:29', anc_lord => 1);
}


  my $ham        = person('Ham'        , sonof=>$noah      , verse=>'1. Mo 5:32');
  my $sem        = person('Sem'        , sonof=>$noah      , verse=>'1. Mo 5:32', add=>'ältester Bruder Japhets', anc_lord => 1);
  my $japhet     = person('Japhet'     , sonof=>$noah      , verse=>'1. Mo 5:32');

 #_}

# 1m-9

  my $kanaan = person('Kanaan', sonof=>$ham, verse=>'1. Mo 9:18');


#_{ 1mo-10
  
  my $gomer      = person('Gomer'     , sonof=>$japhet, verse=>'1. Mo 10:2');
  my $magog      = person('Magog'     , sonof=>$japhet, verse=>'1. Mo 10:2');
  my $madai      = person('Madai'     , sonof=>$japhet, verse=>'1. Mo 10:2');
  my $jawan      = person('Jawan'     , sonof=>$japhet, verse=>'1. Mo 10:2');
  my $tubal      = person('Tubal'     , sonof=>$japhet, verse=>'1. Mo 10:2');
  my $mesech     = person('Mesech'    , sonof=>$japhet, verse=>'1. Mo 10:2');
  my $tiras      = person('Tiras'     , sonof=>$japhet, verse=>'1. Mo 10:2');

  my $askenas    = person('Askenas'   , sonof=>$gomer  , verse=>'1. Mo 10:3');
  my $riphat     = person('Riphat'    , sonof=>$gomer  , verse=>'1. Mo 10:3');
  my $togarma    = person('Togarma'   , sonof=>$gomer  , verse=>'1. Mo 10:3');

  my $elisa      = person('Elisa'     , sonof=>$jawan  , verse=>'1. Mo 10:4');
  my $tarsis     = person('Tarsis'    , sonof=>$jawan  , verse=>'1. Mo 10:4');
  my $kittim     = person('Kittim'    , sonof=>$jawan  , verse=>'1. Mo 10:4');
  my $dodanim    = person('Dodanim'   , sonof=>$jawan  , verse=>'1. Mo 10:4');

  my $kusch      = person('Kusch'     , sonof=>$ham    , verse=>'1. Mo 10:6');
  my $mizraim    = person('Mizraim'   , sonof=>$ham    , verse=>'1. Mo 10:6');
  my $put        = person('Put'       , sonof=>$ham    , verse=>'1. Mo 10:6');

  my $seba       = person('Seba'      , sonof=>$kusch  , verse=>'1. Mo 10:7');
  my $hawila     = person('Hawila'    , sonof=>$kusch  , verse=>'1. Mo 10:7');
  my $sabta      = person('Sabta'     , sonof=>$kusch  , verse=>'1. Mo 10:7');
  my $ragma      = person('Ragma'     , sonof=>$kusch  , verse=>'1. Mo 10:7');
  my $sabtecha   = person('Sabtecha'  , sonof=>$kusch  , verse=>'1. Mo 10:7');

  my $scheba     = person('Scheba'    , sonof=>$ragma  , verse=>'1. Mo 10:7');
  my $dedan      = person('Dedan'     , sonof=>$ragma  , verse=>'1. Mo 10:7');

  my $nimrod     = person('Nimrod'    , sonof=>$kusch  , verse=>'1. Mo 10:8', add=>'Gewaltiger Jäger');

  my $ludim      = person('Ludim'     , sonof=>$mizraim, verse=>'1. Mo 10:13');
  my $anamim     = person('Anamim'    , sonof=>$mizraim, verse=>'1. Mo 10:13');
  my $lehabim    = person('Lehabim'   , sonof=>$mizraim, verse=>'1. Mo 10:13');
  my $naphtuchim = person('Naphtuchim', sonof=>$mizraim, verse=>'1. Mo 10:13');
  my $pathrusim  = person('Pathrusim' , sonof=>$mizraim, verse=>'1. Mo 10:14');
  my $kasluchim  = person('Kasluchim' , sonof=>$mizraim, verse=>'1. Mo 10:14', add=>'v.w.d. Philster ausgeg.');
  my $kaphtorim  = person('Kaphtorim' , sonof=>$mizraim, verse=>'1. Mo 10:14');

  my $zidon      = person('Zidon'     , sonof=>$kanaan , verse=>'1. Mo 10:15', add=>'Erstgeborener');
  my $het        = person('Het'       , sonof=>$kanaan , verse=>'1. Mo 10:15');
  my $jebusiter  = person('Jebusiter' , sonof=>$kanaan , verse=>'1. Mo 10:16');
  my $amoriter   = person('Amoriter'  , sonof=>$kanaan , verse=>'1. Mo 10:16');
  my $girgasiter = person('Girgasiter', sonof=>$kanaan , verse=>'1. Mo 10:16');
  my $hewiter    = person('Hewiter'   , sonof=>$kanaan , verse=>'1. Mo 10:17');
  my $arkiter    = person('Arkiter'   , sonof=>$kanaan , verse=>'1. Mo 10:17');
  my $siniter    = person('Siniter'   , sonof=>$kanaan , verse=>'1. Mo 10:17');
  my $arwaditer  = person('Arwaditer' , sonof=>$kanaan , verse=>'1. Mo 10:18');
  my $zemariter  = person('Zemariter' , sonof=>$kanaan , verse=>'1. Mo 10:18');
  my $hamathiter = person('Hamathiter', sonof=>$kanaan , verse=>'1. Mo 10:18');

  my $elam       = person('Elam'      , sonof=>$sem    , verse=>'1. Mo 10:22');
  my $assur      = person('Assur'     , sonof=>$sem    , verse=>'1. Mo 10:22');
  my $arpaksad   = person('Arpaksad'  , sonof=>$sem    , verse=>'1. Mo 10:22', anc_lord => 1);
  my $lud        = person('Lud'       , sonof=>$sem    , verse=>'1. Mo 10:22');
  my $aram       = person('Aram'      , sonof=>$sem    , verse=>'1. Mo 10:22');

  my $uz         = person('Uz'        , sonof=>$aram   , verse=>'1. Mo 10:23');
  my $hul        = person('Hul'       , sonof=>$aram   , verse=>'1. Mo 10:23');
  my $gether     = person('Gether'    , sonof=>$aram   , verse=>'1. Mo 10:23');
  my $masch      = person('Masch'     , sonof=>$aram   , verse=>'1. Mo 10:23');

  my $schelach   = person('Schelach'  , sonof=>$arpaksad, verse=>'1. Mo 10:24', anc_lord => 1);
  my $heber      = person('Heber'     , sonof=>$schelach, verse=>'1. Mo 10:24', anc_lord => 1);
  my $peleg      = person('Peleg'     , sonof=>$heber   , verse=>'1. Mo 10:25', add=>'Erdteilung', anc_lord => 1);
  my $joktan     = person('Joktan'    , sonof=>$heber   , verse=>'1. Mo 10:25');

  my $almodad     = person('Almodad'    , sonof=>$joktan  , verse=>'1. Mo 10:26');
  my $Scheleph    = person('Scheleph'   , sonof=>$joktan  , verse=>'1. Mo 10:26');
  my $Hazarmaweth = person('Hazarmaweth', sonof=>$joktan  , verse=>'1. Mo 10:26');
  my $Jerach      = person('Jerach'     , sonof=>$joktan  , verse=>'1. Mo 10:26');
  my $Hadoram     = person('Hadoram'    , sonof=>$joktan  , verse=>'1. Mo 10:27');
  my $Usal        = person('Usal'       , sonof=>$joktan  , verse=>'1. Mo 10:27');
  my $Dikla       = person('Dikla'      , sonof=>$joktan  , verse=>'1. Mo 10:27');
  my $Obal        = person('Obal'       , sonof=>$joktan  , verse=>'1. Mo 10:28');
  my $Abimael     = person('Abimael'    , sonof=>$joktan  , verse=>'1. Mo 10:28');
  my $Schemba     = person('Schemba'    , sonof=>$joktan  , verse=>'1. Mo 10:28');
  my $Ophir       = person('Ophir'      , sonof=>$joktan  , verse=>'1. Mo 10:29');
  my $Hawila      = person('Hawila'     , sonof=>$joktan  , verse=>'1. Mo 10:29');
  my $Jobab       = person('Jobab'      , sonof=>$joktan  , verse=>'1. Mo 10:29');

#_}

if ($output_range ne '1mo-10') { #_{

  my $reghu       = person('Reghu'      , sonof=>$peleg   , verse=>'1. Mo 11:18', anc_lord => 1);
  my $serug       = person('Serug'      , sonof=>$reghu   , verse=>'1. Mo 11:20', anc_lord => 1);
  my $nahor       = person('Nahor'      , sonof=>$serug   , verse=>'1. Mo 11:22', anc_lord => 1);
  my $tarah       = person('Tarah'      , sonof=>$nahor   , verse=>'1. Mo 11:24', anc_lord => 1);

  my $abraham     = person('Abraham'    , sonof=>$tarah   , verse=>'1. Mo 11:26', mt=> '2', anc_lord=>1);
  my $nahor_2     = person('Nahor'      , sonof=>$tarah   , verse=>'1. Mo 11:26');
  my $haran       = person('Haran'      , sonof=>$tarah   , verse=>'1. Mo 11:26');


  my $isaak    = person('Isaak', sonof=>$abraham, verse => '1. Mo 21:3', mt=> '2', anc_lord=>1);

  my $silpa    = person('Silpa');
  my $lea      = person('Lea');

  my $jakob    = person('Jakob', sonof=>$isaak  , verse => '1. Mo 25:26', mt=> '2', anc_lord=>1);
  my $rahel    = person('Rahel'); # , generation => $persons{$jakob}{generation});
  my $bilha    = person('Bilha'); # , generation => $persons{$jakob}{generation});

# $persons{$lea  }{generation} = $persons{$jakob}{generation};
# $persons{$silpa}{generation} = $persons{$jakob}{generation};

  rank($lea, $jakob, $rahel, $silpa, $bilha);

  my $dina     = person('Dina', generation=>$persons{$jakob}{generation}+1);
  my $ruben    = person('Ruben', generation=>$persons{$jakob}{generation}+1);
  my $simeon   = person('Simeon', generation=>$persons{$jakob}{generation}+1);
  my $levi     = person('Levi', i_chr_5_27_ff=>'27', i_chr_6_1_ff=>'1', i_chr_6_18_ff=>'23', i_chr_6_24_ff=>'28', i_chr_6_29_ff=>'32', generation=>$persons{$jakob}{generation}+1);
  my $juda     = person('Juda', generation=>$persons{$jakob}{generation}+1, mt=> '2', anc_lord=>1);
  my $joseph   = person('Joseph', generation=>$persons{$jakob}{generation}+1);
  my $benjamin = person('Benjamin', generation=>$persons{$jakob}{generation}+1);
  my $issaschar= person('Issaschar', generation=>$persons{$jakob}{generation}+1);
  my $sebulon  = person('Sebulon', generation=>$persons{$jakob}{generation}+1);

  rel($lea  , $dina);
  rel($lea  , $ruben);
  rel($lea  , $simeon);
  rel($lea  , $levi);
  rel($lea  , $juda);
  rel($lea  , $issaschar);
  rel($lea  , $sebulon  );

  rel($rahel, $benjamin);
  rel($rahel, $joseph);

  my $gad   = person('Gad', generation=>$persons{$jakob}{generation}+1);
  my $asser = person('Asser', generation=>$persons{$jakob}{generation}+1);
  rel($silpa, $gad);
  rel($silpa, $asser);

  my $dan      = person('Dan', generation=>$persons{$jakob}{generation}+1);
  my $naphtali = person('Naphtali', generation=>$persons{$jakob}{generation}+1);
  rel($bilha, $dan);
  rel($bilha, $naphtali);

  rank($ruben, $simeon, $levi, $juda, $joseph, $benjamin, $issaschar, $sebulon, $gad, $asser, $dan, $naphtali); # Söhne Jakobs



# 1mo-46-9 _{
my $henoch_1mo46  = person('Henoch', ii_mo_46_ff => '9', sonof => $ruben);
my $pallu         = person('Pallu' , ii_mo_46_ff => '9', sonof => $ruben);
my $hezron        = person('Hezron', ii_mo_46_ff => '9', sonof => $ruben);
my $karmi         = person('Karmi' , ii_mo_46_ff => '9', sonof => $ruben);
# _}
# 1mo-46-10 _{
my $jemuel        = person('Jemuel', ii_mo_46_ff => '10', sonof => $simeon);
my $jamin         = person('Jamin' , ii_mo_46_ff => '10', sonof => $simeon);
my $ohad          = person('Ohad'  , ii_mo_46_ff => '10', sonof => $simeon);
my $jachin_1mo46  = person('Jachin', ii_mo_46_ff => '10', sonof => $simeon);
my $zohar         = person('Zohar' , ii_mo_46_ff => '10', sonof => $simeon);
my $saul_1mo46    = person('Saul'  , ii_mo_46_ff => '10', sonof => $simeon, rem=>'Sohn der Kanaaniterin');
# _}
# 1mo-46-11 _{ vgl  2mo 6 16
my $gerson  = person('Gerson', ii_mo_46_ff => '11', i_chr_5_27_ff=>'27', i_chr_6_1_ff=>'1', i_chr_6_24_ff=>'28', rem=>'gen. Gersom in 1. Chr 5:27/6:1');
my $kahat   = person('Kahat' , ii_mo_46_ff => '11', i_chr_5_27_ff=>'27', i_chr_6_1_ff=>'1', i_chr_6_18_ff=>'23');
my $merari  = person('Merari', ii_mo_46_ff => '11', i_chr_5_27_ff=>'27', i_chr_6_1_ff=>'1', i_chr_6_29_ff=>'32');

rel($levi, $gerson);
rel($levi, $kahat);
rel($levi, $merari);
 #_}
# 1mo-46-12 _{
# my $gher =
# my $onan =

my $gher   = person('Gher'  , ii_mo_46_ff => '12', sonof => $juda, rem => 'In Kanaan gestorben');
my $onan   = person('Onan'  , ii_mo_46_ff => '12', sonof => $juda, rem => 'In Kanaan gestorben');
my $schela = person('Schela', ii_mo_46_ff => '12', sonof => $juda);
my $perez  = person('Perez' , ii_mo_46_ff => '12', sonof => $juda, mt=> '3', anc_lord=>1);
my $serach = person('Serach', ii_mo_46_ff => '12', sonof => $juda, mt=> '3');

my $hezron_von_perez = person('Hezron', ii_mo_46_ff => '12', sonof => $perez, mt=> '3', anc_lord=>1);
my $hamul            = person('Hamul' , ii_mo_46_ff => '12', sonof => $perez);


#_{ Matthäus

 my $aram_mt            = person('Aram', mt=>'3', anc_lord=>1, sonof => $hezron_von_perez);

#_}


# _}
# 1mo-46-13 _{

my $tola     = person('Tola'     , ii_mo_46_ff => '13', sonof => $issaschar);
my $puwa     = person('Puwa'     , ii_mo_46_ff => '13', sonof => $issaschar);
my $job      = person('Job'      , ii_mo_46_ff => '13', sonof => $issaschar);
my $schimron = person('Schimron' , ii_mo_46_ff => '13', sonof => $issaschar);

# _}
# 1mo-46-14 _{

my $sered    = person('Sered'    , ii_mo_46_ff => '14', sonof => $sebulon);
my $elon     = person('elon'     , ii_mo_46_ff => '14', sonof => $sebulon);
my $jachlel  = person('jachleel' , ii_mo_46_ff => '14', sonof => $sebulon);

# _}
# 1mo-46-16 _{

my $ziphjon    = person('Ziphon'   , ii_mo_46_ff => '16', sonof => $gad);
my $haggi      = person('Haggi'    , ii_mo_46_ff => '16', sonof => $gad);
my $schuni     = person('Schuni'   , ii_mo_46_ff => '16', sonof => $gad);
my $ezbon      = person('Ezbon'    , ii_mo_46_ff => '16', sonof => $gad);
my $eri        = person('Eri'      , ii_mo_46_ff => '16', sonof => $gad);
my $arodi      = person('Arodi'    , ii_mo_46_ff => '16', sonof => $gad);
my $areli      = person('Areli'    , ii_mo_46_ff => '16', sonof => $gad);

# _}
# 1mo-46-17 _{
#
# Jimna und Jischwa und Jischwi und Beria, und Serach, ihre Schwester. 

my $jimna         = person('Jimna'    , ii_mo_46_ff => '17', sonof => $asser);
my $jischwa       = person('Jischwa'  , ii_mo_46_ff => '17', sonof => $asser);
my $jischwi       = person('Jischwi'  , ii_mo_46_ff => '17', sonof => $asser);
my $beria         = person('Beria'    , ii_mo_46_ff => '17', sonof => $asser);
my $serach_1mo_46 = person('Serach'   , ii_mo_46_ff => '17', sonof => $asser, rem=>'Ihre Schwester');

my $heber_1mo_46  = person('Heber'    , ii_mo_46_ff => '17', sonof => $beria);
my $malkiiel      = person('Malkiel'  , ii_mo_46_ff => '17', sonof => $beria);

# _}
# 1mo-46-20 _{

my $manasse  = person('Manasse', ii_mo_46_ff => '20', sonof => $joseph, rem=>'In Ägypten geboren');
my $ephraim  = person('Ephraim', ii_mo_46_ff => '20', sonof => $joseph, rem=>'In Ägypten geboren');

# _}
# 1mo-46-21 _{

my $bela     = person('Bela'   , ii_mo_46_ff => '21', sonof => $benjamin);
my $beker    = person('Beker'  , ii_mo_46_ff => '21', sonof => $benjamin);
my $aschbel  = person('Aschbel', ii_mo_46_ff => '21', sonof => $benjamin);
my $gera     = person('Gera'   , ii_mo_46_ff => '21', sonof => $benjamin);
my $naaman   = person('Naaman' , ii_mo_46_ff => '21', sonof => $benjamin);
my $echi     = person('Echi'   , ii_mo_46_ff => '21', sonof => $benjamin);
my $rosch    = person('Rosch'  , ii_mo_46_ff => '21', sonof => $benjamin);
my $muppim   = person('Muppim' , ii_mo_46_ff => '21', sonof => $benjamin);
my $huppim   = person('Huppim' , ii_mo_46_ff => '21', sonof => $benjamin);
my $ard      = person('Ard'    , ii_mo_46_ff => '21', sonof => $benjamin);

# _}
# 1mo-46-23 _{

my $huschim  = person('Huschim', ii_mo_46_ff => '23', sonof => $dan);

# _}
# 1mo-46-24 _{
#
# Jachzeel und Guni und Jezer und Schillem.

my $jachzeel = person('Jachzeel', ii_mo_46_ff => '24', sonof => $naphtali);
my $guni     = person('Guni'    , ii_mo_46_ff => '24', sonof => $naphtali);
my $jezer    = person('Jezer'   , ii_mo_46_ff => '24', sonof => $naphtali);
my $schillem = person('Schillem', ii_mo_46_ff => '24', sonof => $naphtali);

# _}


  rank($gerson, $kahat, $merari, $schela, $perez, $serach); # 1. Generation nach Söhnen Jakobs

#print $dot "  {rank=same  
#  $gerson $kahat $merari
#  $schela $perez $serach } /* 1. Generation nach Söhnen Jakobs  */\n";

#_{ 2. Mo - 4. Mo

#_{ 2. Generation nach den Söhnen Jakobs

 #_{ 2. Mo 6:17 Levi -> Gerson -> 
my $libni = person('Libni', i_chr_6_1_ff=>'2', rem=>'Uebersprungen in 1. Chr 6:28');
my $simei = person('Simei', i_chr_6_1_ff=>'2', is_it=>'Simei 1. Chr 6:27');

rel($gerson, $libni);
rel($gerson, $simei);
 #_}
 #_{ 2. Mo 6:18 Levi -> Kahat -> 

 my $amram   = person('Amram', i_chr_5_27_ff=>'28', i_chr_6_1_ff=>'3');
 my $jitzhar = person('Ji(t)zhar', i_chr_5_27_ff=>'28', i_chr_6_1_ff=>'3', verse=>'2. Mo 6:18', i_chr_6_1_ff=>'7', i_chr_6_18_ff=>'23', rem=>'gen. Amminadab in 1. Chr 6:7');
 my $hebron  = person('Hebron', i_chr_5_27_ff=>'28', i_chr_6_1_ff=>'3');
 my $ussiel  = person('Ussiel', i_chr_5_27_ff=>'28', i_chr_6_1_ff=>'3');

 rel($kahat, $amram);
 rel($kahat, $jitzhar);
 rel($kahat, $hebron);
 rel($kahat, $ussiel);

 #_}
 #_{ 2. Mo 6:19 Levi -> Merari
 my $machli = person('Machli', i_chr_6_1_ff=>'4', verse=>'2. Mo 6:19');
 my $muschi = person('Muschi', i_chr_6_1_ff=>'4', i_chr_6_29_ff=>'32', rem=>'gen. Musi in 1. Chr 6:32', verse=>'2. Mo 6:19');

 rel($merari, $machli);
 rel($merari, $muschi);

 #_}
 
 rank($libni, $simei, $amram, $jitzhar, $hebron, $ussiel, $machli, $muschi); # 2. Generation nach Söhnen Jakobs
 
# print $dot "  {rank=same  
#   $libni $simei
#   $amram $jitzhar $hebron $ussiel
#   $machli $muschi
# 
#   } /* 2. Generation nach Söhnen Jakobs  */\n";

#_}
#_{ 3. Generation nach den Söhnen Jakobs
 #_{ 2. Mo 6:20
  my $aaron = person('Aaron', i_chr_5_27_ff=>'29', i_chr_6_35_ff=>'35', esr_7_1_ff=>'5');
  my $mose  = person('Mose' , i_chr_5_27_ff=>'29');

  rel($amram, $aaron);
  rel($amram, $mose);

 #_}
 #_{ 2. Mo 6:21
 
 my $korah  = person('Korah' , verse=>'2. Mo 6:21', i_chr_6_1_ff=>'7', i_chr_6_18_ff=>'22');
 my $nepheg = person('Nepheg', verse=>'2. Mo 6:21');
 my $sichri = person('Sichri', verse=>'2. Mo 6:21');

 rel($jitzhar, $korah);
 rel($jitzhar, $nepheg);
 rel($jitzhar, $sichri);

#_}
 #_{ 2. Mo 6:22
 
 my $misael   = person('Misael'            , verse=>'2. Mo 6:22');
 my $elzaphan = person('Elzaphan/Elizaphan', verse=>'2. Mo 6:22', rem=>'Fürst');
 my $sitri    = person('Sitri'             , verse=>'2. Mo 6:22');

 rel($ussiel, $misael);
 rel($ussiel, $elzaphan);
 rel($ussiel, $sitri);
 

 
 #_}
 
 #_}
 #_{ 2. Mo 6:23
 
 my $nadab   = person('Nadab', i_chr_5_27_ff=>'29', rem=>'Erstgeboren - getötet');
 my $abihu   = person('Abihu', i_chr_5_27_ff=>'29', rem=>'getötet');
 my $eleasar = person('Eleasar', i_chr_5_27_ff=>'29', i_chr_6_35_ff=>'35', esr_7_1_ff=>'5', rem=>'Fürst der Fürsten');
 my $itamar  = person('Itamar', i_chr_5_27_ff=>'29');

 rel($aaron, $nadab);
 rel($aaron, $abihu);
 rel($aaron, $eleasar);
 rel($aaron, $itamar);

 #_}
 #_{ 2. Mo 6:24
 
 my $assir    = person('Assir'   , verse => '2. Mo 6:24', i_chr_6_1_ff=>'7');
 my $elkana   = person('Elkana'  , verse => '2. Mo 6:24', i_chr_6_1_ff=>'8');
 my $abiasaph = person('Abiasaph', verse => '2. Mo 6:24', i_chr_6_1_ff=>'8', i_chr_6_18_ff=>'22', rem=>'gen. Ebjasaph in 1. Chr 6:8');

 rel($korah, $assir); rel($assir, $elkana); rel($elkana, $abiasaph);
#rel($korah, $elkana);
#rel($korah, $abiasaph);


 #_}
 #_{ 2. Mo 6:25
 
 my $pinehas = person('Pinehas', i_chr_5_27_ff=>'30', i_chr_6_35_ff=>'35', esr_7_1_ff=>'5');
 rel($eleasar, $pinehas);

 #_}
 
 #_{ 4. Mo 1
 
 my $schedeur = person('Schedeur');
 my $elizur   = person('Elizur'  , iv_mo_1=>1);
 rel ($schedeur, $elizur);
 rel ($ruben, $schedeur, distant=>1);

 my $zurischaddai = person('Zuri-Schaddai');
 my $schelumiel   = person('Schelumiel'  , iv_mo_1=>1);
 rel ($zurischaddai, $schelumiel);
 rel ($simeon, $zurischaddai, distant=>1);

 my $amminadab = person('Amminadab', mt=>'4', anc_lord=>1, sonof => $aram_mt);



 my $eliseba   = person('Eliseba', rem=>'Frau von Aaron', sonof => $amminadab);
 my $nachschon   = person('Nachschon'  , iv_mo_1=>1, mt=>'4', anc_lord=>1);
 rel ($amminadab, $nachschon);

#_{ Matthäus

 my $salmon   = person('Salmon'  , mt=> '4', anc_lord=>1, sonof => $nachschon);
 my $boas     = person('Boas'    , mt=> '5', anc_lord=>1, sonof => $salmon   );
 my $obed     = person('Obed'    , mt=> '5', anc_lord=>1, sonof => $boas);
 my $isai     = person('Isai'    , mt=> '5', anc_lord=>1, sonof => $obed);
 my $david    = person('David'   , mt=> '6', anc_lord=>1, sonof => $isai);
 my $salomo   = person('Salomo'  , mt=> '6', anc_lord=>1, sonof => $david);
 my $rehabeam = person('Rehabeam', mt=> '7', anc_lord=>1, sonof => $salomo);
 my $abija    = person('Abija'   , mt=> '7', anc_lord=>1, sonof => $rehabeam);
 my $asa_mt   = person('Asa'     , mt=> '7', anc_lord=>1, sonof => $abija);
 my $josaphat = person('Josaphat', mt=> '8', anc_lord=>1, sonof => $asa_mt);
 my $joram    = person('Joram'   , mt=> '8', anc_lord=>1, sonof => $josaphat); 
 my $usija    = person('Usija'   , mt=> '8', anc_lord=>1, sonof => $joram); 
 my $jotam    = person('Jotam'   , mt=> '9', anc_lord=>1, sonof => $usija); 
 my $ahas     = person('Ahas'    , mt=> '9', anc_lord=>1, sonof => $jotam); 
 my $hiskia   = person('Hiskia'  , mt=> '9', anc_lord=>1, sonof => $ahas); 
 my $manasse_mt= person('Manasse' , mt=>'10', anc_lord=>1, sonof => $hiskia); 
 my $amon     = person('Amon'    , mt=>'10', anc_lord=>1, sonof => $manasse_mt); 
 my $josia    = person('Josia'   , mt=>'10', anc_lord=>1, sonof => $amon); 
 my $jechonja = person('Jechonja', mt=>'11', anc_lord=>1, sonof => $josia, rem=>'Zur Zeit der Wegführung'); 
 my $schealtiel=person('Schealtiel', mt=>'12', anc_lord=>1, sonof => $jechonja); 
 my $serubbabel=person('Serubbabel', mt=>'12', anc_lord=>1, sonof => $schealtiel); 
 my $abihud   = person('Abihud'  , mt=>'12', anc_lord=>1, sonof => $serubbabel); 
 my $eljakam  = person('Eljakam' , mt=>'13', anc_lord=>1, sonof => $abihud); 
 my $asor     = person('Asor'    , mt=>'13', anc_lord=>1, sonof => $eljakam); 
 my $zadok    = person('Zadok'   , mt=>'14', anc_lord=>1, sonof => $asor); 
 my $achim    = person('Achim'   , mt=>'14', anc_lord=>1, sonof => $zadok); 
 my $eliud    = person('Eliud'   , mt=>'14', anc_lord=>1, sonof => $achim); 
 my $eleasar_mt = person('Eleasar' , mt=>'15', anc_lord=>1, sonof => $eliud); 
 my $mattan   = person('Mattan'  , mt=>'15', anc_lord=>1, sonof => $eleasar_mt); 
 my $jakob_mt = person('Jakob'   , mt=>'15', anc_lord=>1, sonof => $mattan); 
 my $joseph_mt= person('Joseph'  , mt=>'16', anc_lord=>1, sonof => $jakob_mt); 
 my $jesus    = person('Jesus'   , mt=>'16', anc_lord=>1, sonof => $joseph_mt); 

#_}

 my $zuar = person('Zuar');
 my $nethaneel   = person('Nethaneel'  , iv_mo_1=>1);
 rel ($zuar, $nethaneel);
 rel ($issaschar, $zuar, distant=>1);

 my $helon = person('Helon');
 my $eliab   = person('Eliab'  , iv_mo_1=>1);
 rel ($helon, $eliab);
 rel ($sebulon, $helon, distant=>1);

 my $ammihud_4_mo_1 = person('Ammihud');
 my $elischama   = person('Elischama'  , iv_mo_1=>1);
 rel ($ammihud_4_mo_1, $elischama);
 rel ($ephraim, $ammihud_4_mo_1, distant=>1);

 my $pedazur = person('Pedazur');
 my $gamliel = person('Gamliel'  , iv_mo_1=>1);
 rel ($pedazur, $gamliel);
 rel ($manasse, $pedazur, distant=>1);

 my $gideoni = person('Gideoni');
 my $abidan = person('Abidan'  , iv_mo_1=>1);
 rel ($gideoni, $abidan);
 rel ($benjamin, $gideoni, distant=>1);

 my $ammischadai = person('Ammischadai');
 my $achieser = person('Achieser'  , iv_mo_1=>1);
 rel ($ammischadai, $achieser);
 rel ($dan, $ammischadai, distant=>1);

 my $okran = person('Okrain');
 my $pagiel = person('Pagiel'  , iv_mo_1=>1);
 rel ($okran, $pagiel);
 rel ($asser, $okran, distant=>1);

 my $deghuel = person('(Deghuel/Reguel');
 my $eljasaph = person('Eljasaph'  , iv_mo_1=>1);
 rel ($deghuel, $eljasaph);
 rel ($gad, $deghuel, distant=>1);

 my $enan = person('Enan');
 my $achira = person('Achira'  , iv_mo_1=>1);
 rel ($enan, $achira);
 rel ($naphtali, $enan, distant=>1);


 #_}
 #_{ 4. Mo 3
 
   my $lael           = person('Lael');
   my $eljasaph_4mo_3 = person('Eljasaph', sonof=>$lael, rem=>'Fürst');
   rel ($gerson, $lael, distant=>1);

   my $abichail       = person('Abichail');
   my $zuriel         = person('Zuriel', sonof=>$abichail, rem=>'Fürst');
   rel ($merari, $abichail, distant=>1);

 rank(
      $aaron, $mose, $korah, $nepheg, $sichri, $misael, $elzaphan, $sitri, # 2mo-6-22
      $elizur, $schelumiel, $nachschon, $nethaneel, $eliab, $elischama, $gamliel, $abidan, $achieser, $pagiel, $eljasaph, $achira,
      $eljasaph_4mo_3, $zuriel
 );

 #_}

#_}

 #_{ 1. Chr 6:5 ff

 my $jachath = person('Jachath', i_chr_6_1_ff=>'5', i_chr_6_24_ff=>'28'); rel($libni  ,$jachath);
 my $simma   = person('Simma'  , i_chr_6_1_ff=>'5', i_chr_6_24_ff=>'27', rem=>'gen. Simei in 1. Chr 6:27', is_it=>'Simei 1. Chr 6:2'); rel($jachath, $simma);

 my $joach           = person('Joach'   , i_chr_6_1_ff=>'6', is_it => 'Ethan 1. Chr 6:27'); rel($simma, $joach);
 my $iddo_1chr_6_6   = person('Iddo'    , i_chr_6_1_ff=>'6', is_it => 'Adaja 1. Chr 6:26'); rel($joach, $iddo_1chr_6_6);
 my $serach_1chr_6_6 = person('Serach'  , i_chr_6_1_ff=>'6', is_it => 'Serach 1. Chr 6:24'); rel($iddo_1chr_6_6, $serach_1chr_6_6);
 my $jeathrai        = person('Jeathrai', i_chr_6_1_ff=>'6'); rel($serach_1chr_6_6, $jeathrai);

 my $assir_1_chr_6_7 = person('Assir'   , i_chr_6_1_ff=>'8', i_chr_6_18_ff=>'22'); rel($abiasaph, $assir_1_chr_6_7);

 my $tachath         = person('Tachath', i_chr_6_1_ff=>'9', i_chr_6_18_ff=>'22'); rel($assir_1_chr_6_7, $tachath);
 my $uriel           = person('Uriel'  , i_chr_6_1_ff=>'9'); rel($tachath, $uriel);
 my $ussija_1chr_6_9 = person('Ussija' , i_chr_6_1_ff=>'9'); rel($uriel, $ussija_1chr_6_9);
 my $saul_1chr_6_9   = person('Saul'   , i_chr_6_1_ff=>'9'); rel($ussija_1chr_6_9, $saul_1chr_6_9);

 #_}

 #_{ 1. Chr 6:18 ff

 my $zephanja_1chr_6_18 = person('Zephanja', i_chr_6_18_ff=>'21');
 my $asarja_1chr_6_18   = person('Asarja'  , i_chr_6_18_ff=>'21');
 my $joel_1chr_6_21     = person('Joel'    , i_chr_6_18_ff=>'21');
 my $elkana_1chr_6_21   = person('Elkana'  , i_chr_6_18_ff=>'21');

 rel($tachath, $zephanja_1chr_6_18);
 rel($zephanja_1chr_6_18, $asarja_1chr_6_18);
 rel($asarja_1chr_6_18, $joel_1chr_6_21);
 rel($joel_1chr_6_21, $elkana_1chr_6_21);

 my $amasai = person('Amasai', i_chr_6_18_ff=>'20');
 my $machath = person('Machat', i_chr_6_18_ff=>'20');
 my $elkana_1chr_6_20= person('Elkana', i_chr_6_18_ff=>'20');
 my $zuph = person('Zuph', i_chr_6_18_ff=>'20');

 rel($elkana_1chr_6_21, $amasai);
 rel($amasai, $machath);
 rel($machath, $elkana_1chr_6_20);
 rel($elkana_1chr_6_20, $zuph);

 my $toach = person('Toach', i_chr_6_18_ff=>'19');
 my $eliel = person('Eliel', i_chr_6_18_ff=>'19');
 my $jerocham = person('Jerocham', i_chr_6_18_ff=>'19');
 my $elkana_1chr_6_19 = person('Elkana', i_chr_6_18_ff=>'19');

 rel($zuph, $toach);
 rel($toach, $eliel);
 rel($eliel, $jerocham);
 rel($jerocham, $elkana_1chr_6_19);

 my $samuel_1chr_6_18 = person('Samuel', i_chr_6_18_ff=>'18');
 my $joel_1chr_6_18 = person('Joel', i_chr_6_18_ff=>'18');
 my $heman = person('Heman', i_chr_6_18_ff=>'18', rem=>'Der Sänger');

 rel($elkana_1chr_6_19, $samuel_1chr_6_18);
 rel($samuel_1chr_6_18, $joel_1chr_6_18);
 rel($joel_1chr_6_18, $heman);

 #_}
 #
 #_{ 1. Chr 6:24 ff
 
 my $ethan = person('Ethan', i_chr_6_24_ff=>'27', is_it=>'Joach 1. Chr 6:6');
 rel($simma, $ethan);

 my $adaja_1chr_6_26 = person('Adaja', i_chr_6_24_ff=>'26', is_it=>'Iddo 1. Chr 6:6');
 my $serach_1chr_6_26 = person('Serach', i_chr_6_24_ff=>'26', is_it => 'Serach 1. Chr 6:6');
 my $ethni_1chr_6_26 = person('Ethni', i_chr_6_24_ff=>'26');

 rel($ethan, $adaja_1chr_6_26);
 rel($adaja_1chr_6_26, $serach_1chr_6_26);
 rel($serach_1chr_6_26, $ethni_1chr_6_26);

 my $malkija_1_chr_6_25 = person('Malkija', i_chr_6_24_ff=>'25');
 my $baaseja = person('Baaseja', i_chr_6_24_ff=>'25');
 my $michael = person('Michael', i_chr_6_24_ff=>'25');

 rel($ethni_1chr_6_26, $malkija_1_chr_6_25);
 rel($malkija_1_chr_6_25, $baaseja);
 rel($baaseja, $michael);

 my $schimea = person('Schimea', i_chr_6_24_ff=>'24');
 my $berekja_1chr_6_24 = person('Berekja', i_chr_6_24_ff=>'24');
 my $asaph_1chr_6_24 = person('Asaph', i_chr_6_24_ff=>'24', rem=>'Stand zur Rechten');

 rel($michael, $schimea);
 rel($schimea, $berekja_1chr_6_24);
 rel($berekja_1chr_6_24, $asaph_1chr_6_24);


 #_}

 #_{ 1. Chr 6:29 ff
 #_{ 1. Chr 6:32 ff
 
 my $machli_1_chr_6_32 = person('Machli', i_chr_6_29_ff=>'32');

 rel($muschi, $machli_1_chr_6_32);
 
 #_}
 #_{ 1. Chr 6:31 ff
 
 my $schemer        = person('Schemer', i_chr_6_29_ff=>'31');
 my $bani_1chr_6_31 = person('Bani', i_chr_6_29_ff=>'31');
 my $amzi_1chr_6_31 = person('Amzi', i_chr_6_29_ff=>'31');

 rel($machli_1_chr_6_32, $schemer);
 rel($schemer, $bani_1chr_6_31);
 rel($bani_1chr_6_31, $amzi_1chr_6_31);
 
 #_}
 #_{ 1. Chr 6:30 ff
 
 my $hilkija_1chr_6_30   = person('Hilkija'  , i_chr_6_29_ff=>'30');
 my $amazja_1chr_6_30    = person('Amazja'   , i_chr_6_29_ff=>'30');
 my $haschabja_1chr_6_30 = person('Haschabja', i_chr_6_29_ff=>'30', is_it => 'Hasabja Neh 12:21');

 rel($amzi_1chr_6_31, $hilkija_1chr_6_30);
 rel($hilkija_1chr_6_30, $amazja_1chr_6_30);
 rel($amazja_1chr_6_30, $haschabja_1chr_6_30);
 
 #_}
 #_{ 1. Chr 6:29 ff
 
 my $malluk = person('Malluk', i_chr_6_29_ff=>'29');
 my $abdi   = person('Abdi'  , i_chr_6_29_ff=>'29');
 my $kischi = person('Kischi', i_chr_6_29_ff=>'29');
 my $etan   = person('Etan'  , i_chr_6_29_ff=>'29', rem=>'Stand zur Linken');

 rel($haschabja_1chr_6_30, $malluk);
 rel($malluk, $abdi);
 rel($abdi, $kischi);
 rel($kischi, $etan);
 
 #_}
 #_}
 #_{ 1. Chr 5:30 ff
 
 my $abischua            = person('Abischua', i_chr_5_27_ff=>'30', i_chr_6_35_ff=>'35', esr_7_1_ff=>'5'); rel($pinehas, $abischua);
 my $bukki               = person('Bukki'   , i_chr_5_27_ff=>'31', i_chr_6_35_ff=>'36', esr_7_1_ff=>'4'); rel($abischua, $bukki);
 my $ussi_1chr_5_32      = person('Ussi'    , i_chr_5_27_ff=>'31', i_chr_6_35_ff=>'36', esr_7_1_ff=>'4'); rel($bukki, $ussi_1chr_5_32    );
 my $serachja            = person('Serachja', i_chr_5_27_ff=>'32', i_chr_6_35_ff=>'36', esr_7_1_ff=>'4'); rel($ussi_1chr_5_32, $serachja);
 my $merajoth_1chr_5_32  = person('Merajoth', i_chr_5_27_ff=>'32', i_chr_6_35_ff=>'37', esr_7_1_ff=>'3'); rel($serachja, $merajoth_1chr_5_32);
 
 #  Einschub aus Esra 7:3
#my $asarja_esr_7_3 = person('Asarja', verse=>'Esr 7:3', rem=>'Fehlt in 1 Chr 5:33 ff');
#rel($merajoth_1chr_5_32, $asarja_esr_7_3);
# rel($asarja_esr_7_3, $amarja); #

 my $amarja              = person('Amarja'  , i_chr_5_27_ff=>'33', i_chr_6_35_ff=>'37');  rel($merajoth_1chr_5_32, $amarja);
 my $ahitub_1chr_5_33    = person('Ahitub'  , i_chr_5_27_ff=>'33', i_chr_6_35_ff=>'37'); rel($amarja, $ahitub_1chr_5_33);
 my $zadok_1chr_5_34     = person('Zadok'   , i_chr_5_27_ff=>'34', i_chr_6_35_ff=>'38'); rel($ahitub_1chr_5_33, $zadok_1chr_5_34);
 my $achimaaz            = person('Achimaaz', i_chr_5_27_ff=>'34', i_chr_6_35_ff=>'38'); rel($zadok_1chr_5_34, $achimaaz);
 my $asarja_1chr_5_35    = person('Asarja'  , i_chr_5_27_ff=>'35'); rel($achimaaz, $asarja_1chr_5_35);
 my $jochanan            = person('Jochanan', i_chr_5_27_ff=>'35'); rel($asarja_1chr_5_35, $jochanan);
 my $asarja_1chr_5_36    = person('Asarja'  , i_chr_5_27_ff=>'36', esr_7_1_ff=>'3', add=>'Priester in Salomos Tempel'); rel($jochanan, $asarja_1chr_5_36);
 my $amarja_1chr_5_37    = person('Amarja'  , i_chr_5_27_ff=>'37', esr_7_1_ff=>'3'); rel($asarja_1chr_5_36, $amarja_1chr_5_37);
 my $ahitub_1chr_5_37    = person('Ahitub'  , i_chr_5_27_ff=>'37', i_chr_6_35_ff=>'37', i_chr_9_11=>1, esr_7_1_ff=>'2', neh_11_11=>1, is_it=>'Ahitub 1. Chr 9:11'); rel($amarja_1chr_5_37, $ahitub_1chr_5_37);

 my $merajoth_1chr_9_11  = person('Merajoth', i_chr_9_11=>1, neh_11_11=>1, rem=>'fehlt in 1. Chr 5:33ff/1. Chr 6:25ff/ Esr 7:1ff'); rel($ahitub_1chr_5_37, $merajoth_1chr_9_11);

 my $zadok_1chr_5_38     = person('Zadok'    , i_chr_5_27_ff=>'38', i_chr_9_11=>1, neh_11_11=>1, is_it=>'Zadok 1. Chr 9:11', esr_7_1_ff=>'2'); rel($merajoth_1chr_9_11, $zadok_1chr_5_38); # rel($ahitub_1chr_5_37, $zadok_1chr_5_38);
 my $schallum_1chr_5_38  = person('Schallum' , i_chr_5_27_ff=>'38', i_chr_9_11=>1, neh_11_11=>1, esr_7_1_ff=>'2', verse =>'1. Chr 9:11', is_it=>'Meschullam 1. Chr 9:11', rem=>'gen. Meschallum in  1. Chr 9:11'); rel($zadok_1chr_5_38, $schallum_1chr_5_38);
 my $hilkija_1chr_5_39   = person('Hilkija'  , i_chr_5_27_ff=>'39', i_chr_9_11=>1, neh_11_11=>1, esr_7_1_ff=>'1', is_it=>'Hilkija 1. Chr 9:11'); rel($schallum_1chr_5_38, $hilkija_1chr_5_39);
 my $asarja_1chr_5_39    = person('Asarja'   , i_chr_5_27_ff=>'39', esr_7_1_ff=>'1', is_it=>'Seraja'); rel($hilkija_1chr_5_39, $asarja_1chr_5_39);
 my $seraja_1chr_5_40    = person('Seraja'   , i_chr_5_27_ff=>'40', i_chr_9_11=>1, neh_11_11=>1, add=>'Oberaufseher d. H. Gottes', rem=>'gen. Asarja in 1. Chr 9:11', is_it=>'Asarja'); rel($asarja_1chr_5_39, $seraja_1chr_5_40); 
 my $jehozadak           = person('Jehozadak', i_chr_5_27_ff=>'41', add=>'Ging nach Babel'); rel($seraja_1chr_5_40, $jehozadak);


 
 #_}
 
  rank($heman, $etan, $asaph_1chr_6_24); # Sänger Heman, Etan zur Linken, Asaph zur Rechten

#print $dot "  {rank=same 
#  $heman $etan $asaph_1chr_6_24  // Sänger Heman, Etan zur Linken, Asaph zur Rechten
#}
#";


 #_{ 1. Chronik 9
 #_{ 1. Chr 9:4
my $bani    = person('Bani'   , verse => '1. Chr 9:4');
my $imri    = person('Imri'   , verse => '1. Chr 9:4');
my $omri    = person('Omri'   , verse => '1. Chr 9:4');
my $ammihud = person('Ammihud', verse => '1. Chr 9:4');
my $uthai   = person('Uthai'  , verse => '1. Chr 9:4');

rel($perez   , $bani   , distant=>1);
rel($bani    , $imri   , distant=>1);
rel($imri    , $omri   , distant=>1);
rel($omri    , $ammihud, distant=>1);
rel($ammihud , $uthai  , distant=>1);
 #_}
 #_{ 1. Chr 9:5
my $asaja   = person('Asaja', verse=>'1. Chr 9:5');

rel($schela, $asaja, distant=>1);
 #_}
 #_{ 1. Chr 9:6
my $jeghuel = person('Jeghuel', verse=>'1. Chr 9:6');
rel($serach, $jeghuel, distant=>1);
 #_}
 #_{ 1. Chr 9:7
my $sallu                  = person('Sallu', verse=>'1. Chr 9:7', is_it => 'Sallu Neh 11:7');
my $meschullam_1_chr_9_7   = person('Meschullam', verse=>'1. Chr 9:7', is_it => 'Meschullam Neh 11:7');
my $hodawja                = person('Hodawja', verse=>'1. Chr 9:7');
my $hassenua               = person('Hassenua', verse=>'1. Chr 9:7', is_it=>'Hassenua Neh 11:9');

rel($benjamin            , $hassenua            , distant => 1);
rel($hassenua            , $hodawja             , distant => 1);
rel($hodawja             , $meschullam_1_chr_9_7, distant => 1);
rel($meschullam_1_chr_9_7, $sallu               , distant => 1);

my $jibneja               = person('Jibneja');
my $jerocham_1chr_9_8     = person('Jerocham 1. Chr 9:8');
 #_}
 #_{ 1. Chr 9:8
rel($benjamin  , $jerocham_1chr_9_8, distant => 1);
rel($jerocham_1chr_9_8  , $jibneja , distant => 1);

my $ela          = person('Ela');
my $ussi_1chr_9_8         = person('Ussi 1. Chr 9:8');
my $mikri        = person('Mikri');

rel($benjamin  , $mikri, distant => 1);
rel($mikri     , $ussi_1chr_9_8 , distant => 1);
rel($ussi_1chr_9_8      , $ela  , distant => 1);
 #_}

my $meschullam_1_chr_9_8   = person('Meschullam 1. Chr 9:8');
my $schephatja             = person('Schephatja');
my $reguel                 = person('Reguel'    );
my $jibnija                = person('Jibnija'   );

rel($benjamin           , $jibnija             , distant => 1);
rel($jibnija            , $reguel              , distant => 1);
rel($reguel             , $schephatja          , distant => 1);
rel($schephatja         , $meschullam_1_chr_9_8, distant => 1);

my $jedaja    = person('Jedaja'   , add=>'Priester', verse=>'1. Chr 9:10');
my $jehojarib = person('Jehojarib', add=>'Priester', rem=>'Jojarib in Neh 11:10', verse=>'1. Chr 9:10');
my $jachin    = person('Jachin'   , add=>'Priester', verse=>'1. Chr 9:10');

# rel($aaron, $jedaja, distant => 1);
rel($aaron, $jehojarib, distant => 1);
rel($jehojarib, $jedaja);
rel($aaron, $jachin, distant => 1);

rel($jehozadak, $jedaja, invisible => 1);

 #_{ 1. Chr 9:11
# my $asarja_1chr_9_11                 = person('Asarja', add=>'Priester, Oberaufseher', verse=>'1. Chr 9:11', rem=>'gen. Seraja in Neh 11:11');
# my $hilkija                = person('Hilkija', verse=>'1. Chr 9:11');
# my $meschullam_1_chr_9_11  = person('Meschullam', verse=>'1. Chr 9:11');
# my $zadok                  = person('Zadok', verse=>'1. Chr 9:11');
# my $merajoth               = person('Merajoth', verse=>'1. Chr 9:11');
# my $ahitub                 = person('Ahitub', verse=>'1. Chr 9:11');

# rel($aaron                , $ahitub                , distant => 1);
# rel($ahitub               , $merajoth              , distant => 1);
# rel($merajoth             , $zadok                 , distant => 1);
# rel($zadok                , $meschullam_1_chr_9_11 , distant => 1);
# rel($meschullam_1_chr_9_11, $hilkija               , distant => 1);
# rel($hilkija              , $asarja_1chr_9_11                , distant => 1);
# rel($hilkija_1chr_5_39    , $asarja_1chr_9_11                , distant => 1);


# print $dot "  {rank=same $ahitub, $ahitub_1chr_5_37     } // Priesterlinie\n";
# print $dot "  {rank=same $zadok, $zadok_1chr_5_38     } // Priesterlinie\n";
# print $dot "  {rank=same $meschullam_1_chr_9_11, $schallum_1chr_5_38     } // Priesterlinie\n";
# print $dot "  {rank=same $hilkija, $hilkija_1chr_5_39                    } // Priesterlinie\n";
# print $dot "  {rank=same $asarja_1chr_9_11 $asarja_1chr_5_39             } // Priesterlinie\n";

 #_}
 #_{ 1. Chr 9:12
my $adaja                   = person('Adaja'   , add=>'Priester', verse=>'1. Chr 9:12');
my $jerocham_1chr_9_12      = person('Jerocham', verse=>'1. Chr 9:12');
my $paschchur               = person('Paschchur', verse=>'1. Chr 9:12');
my $malkija                 = person('Malkija', verse=>'1. Chr 9:12');

rel($aaron, $malkija, distant => 1);
rel($malkija, $paschchur, distant => 1);
rel($paschchur, $jerocham_1chr_9_12, distant => 1);
rel($jerocham_1chr_9_12, $adaja, distant => 1);
 #_}
 #_{ 1. Chr 9:13
my $masai                   = person('Masai', add=>'Priester', verse=>'1. Chr 9:13');
my $adiel                   = person('Adiel', verse=>'1. Chr 9:13');
my $jachsera                = person('Jachsera', verse=>'1. Chr 9:13');
my $meschullam_1_chr_9_12   = person('Meschullam', verse=>'1. Chr 9:13');
my $meschillemith           = person('Meschillemith', verse=>'1. Chr 9:13');
my $immer                   = person('Immer'        , verse=>'1. Chr 9:13');

rel($levi, $immer, distant=>1);
rel($immer, $meschillemith, distant=>1);
rel($meschillemith, $meschullam_1_chr_9_12, distant=>1);
rel($meschullam_1_chr_9_12, $jachsera, distant=>1);
rel($jachsera, $adiel, distant=>1);
rel($adiel, $masai, distant=>1);
 #_}
 #_{ 1. Chr 9:14

my $schemaja = person('Schemaja');
my $haschub  = person('Haschub');
my $asrikam  = person('Asrikam');
my $haschabja= person('Haschabja');

rel($merari, $haschabja, distant => 1);
rel($haschabja, $asrikam, distant => 1);
rel($asrikam, $haschub, distant => 1);
rel($haschub, $schemaja, distant => 1);

#_}
 #_{ 1. Chr 9:15

 my $bakbakkar = person('Bakbakkar', add => 'Levit');
 my $heresch   = person('Heresch', add => 'Levit');
 my $galal     = person('Galal', add => 'Levit');
 my $mattanja  = person('Mattanja', add => 'Levit');
 my $micha     = person('Micha');
 my $sichri_1chr_9_15    = person('Sichri', verse => '1. Chr 9:15');
 my $asaph     = person('Asaph');

 rel($asaph , $sichri_1chr_9_15, distant => 1);
 rel($sichri_1chr_9_15, $micha , distant => 1);
 rel($micha , $mattanja , distant => 1);
 #_}
 #_{ 1. Chr 9:16
 
 my $obadja             = person('Objadja', add=>'Levit');
 my $schemaja_1chr_9_16 = person('Schemaja 1. Chr 9:16');
 my $gallal = person('Gallal');
 my $jeduthun = person('Jeduthun');

 rel($jeduthun, $gallal, distant => 1);
 rel($gallal, $schemaja_1chr_9_16, distant => 1);
 rel($schemaja_1chr_9_16, $obadja, distant => 1);

 my $berekja = person('Berekja', add=>'Wohnt in D.d. Netophatiter');
 my $asa     = person('Asa');
 my $elkana_1chr_9_16  = person('Elkana', verse=>'1. Chr 9:16');

 rel($elkana_1chr_9_16, $asa, distant => 1);
 rel($asa, $berekja, distant => 1);

 #_}
 #_{ 1. Chr 9:17
 
 my $schallum = person('Schallum', add=>'Torhüter (Haupt)', verse=>'1. Chr 9:17');
 my $akkub    = person('Akkub'   , add=>'Torhüter', verse=>'1. Chr 9:17', rem=>'Wohl genannt Ater in Esr 2:42');
 my $talmon   = person('Talmon'  , add=>'Torhüter', verse=>'1. Chr 9:17');
 my $achiman  = person('Achiman' , add=>'Torhüter', verse=>'1. Chr 9:17');
 
 #_}
 #_{ 1. Chr 9:19
 
 my $schallum_1chr_9_19 = person('Schallum 1. Chr 9:19', add=>'Hüter d. Schwellen d. Zeltes');
 my $kore               = person('Kore', is_it => 'Kore 2. Chr 31:14');
 my $ebjasaph           = person('Ebjasaph');
 my $korah_1chr_9_19    = person('Korah', verse=>'1. Chr 9:19');

 rel($kore, $schallum_1chr_9_19, distant => 1);
 rel($ebjasaph, $kore, distant => 1);
 rel($korah_1chr_9_19, $ebjasaph, distant => 1);

 #_}

# _}
# _{ 1. Chronik 23

  my $gersom  = person('Gersom' , sonof=>$mose, add=>'1. Chr 23:14');
  my $elieser = person('Elieser', sonof=>$mose, add=>'1. Chr 23:14');

  my $schebuel = person('Schebuel', sonof=>$gersom, rem=>'Das Haupt', add=>'1. Chr 23:16');
  my $rechabja = person('Rechabja', sonof=>$elieser, rem=>'Das Haupt, einziger Sohn von Elieser, viele Söhne', add=>'1. Chr 23:17');

  my $schelomith = person('Schelomith', sonof=>$jitzhar, rem=>'Das Haupt, nur in 1. Chr 23:18 erwähnt', add=>'1. Chr 23:18');

  my $jerija    = person('Jerija', sonof=>$hebron, rem=>'Das Haupt', add=>'1. Chr 23:19');
  my $amarja_1chr_23= person('Amarja', sonof=>$hebron, rem=>'Der zweite', add=>'1. Chr 23:19');
  my $jachasiel = person('Jachasiel', sonof=>$hebron,rem=>'Der dritte', add=>'1. Chr 23:19'); 
  my $jekamam   = person('Jekamam', sonof=>$hebron,rem=>'Der vierte', add=>'1. Chr 23:19'); 

  my $eleasar_machli = person('Eleasar', sonof=>$machli, add=>'1. Chr 23:21'); 
  my $kis_machli     = person('Kis'    , sonof=>$machli, add=>'1. Chr 23:21', rem=>'nur Töchter'); 

  my $eder           = person('Eder'    , sonof=>$muschi, add=>'1. Chr 23:23'); 
  my $jeremoth       = person('Jeremoth', sonof=>$muschi, add=>'1. Chr 23:23'); 



# _}
 #_{ Esra

 #_{ Esr 7:1-5

 my $esra = person('Esra', esr_7_1_ff=>'1');

 rel($seraja_1chr_5_40, $esra);
 #_}
 #_}
 #_{ Nehemia

 #_{ Nehema 11
 #_{ Neh 11:4
 my $athaja = person('Athaja', verse=>'Neh 11:4');
 my $ussija_neh_11_4 = person('Ussija', verse=>'Neh 11:4');
 my $sekarja = person('Sekarja', verse=>'Neh 11:4');
 my $amarja_neh_11_4 = person('Amarja', verse=>'Neh 11:4');
 my $schephatja_neh_11_4 = person('Schephatja', verse=>'Neh 11:4');
 my $mahalel_neh_11_4 = person('Mahalel', verse=>'Neh 11:4');

 rel($perez, $mahalel_neh_11_4, distant => 1);
 rel($mahalel_neh_11_4, $schephatja_neh_11_4, distant => 1);
 rel($schephatja_neh_11_4, $amarja_neh_11_4, distant => 1);
 rel($amarja_neh_11_4, $sekarja, distant => 1);
 rel($sekarja, $ussija_neh_11_4, distant => 1);
 rel($ussija_neh_11_4, $athaja, distant => 1);
 #_}
 #_{ Neh 11:5
 
 my $sekarja_neh_11_5 = person('Sekarja', verse=>'Neh 11:5');
 my $jojarib = person('Jojarib', verse=>'Neh 11:5');
 my $adaja_neh_11_5 = person('Adaja', verse=>'Neh 11:5');
 my $hasaja = person('Hasaja', verse=>'Neh 11:5');
 my $kol_hose=person('Kol-Hose', verse=>'Neh 11:5');
 my $baruk = person('Baruk', verse=>'Neh 11:5');
 my $maaseja = person('Maaseja', verse=>'Neh 11:5');

 rel($schela, $sekarja_neh_11_5, distant => 1);
 rel($sekarja_neh_11_5, $jojarib, distant => 1);
 rel($jojarib, $adaja_neh_11_5, distant => 1);
 rel($adaja_neh_11_5, $hasaja, distant => 1);
 rel($hasaja, $kol_hose, distant => 1);
 rel($kol_hose, $baruk, distant => 1);
 rel($baruk, $maaseja, distant => 1);

 #_}
 #_{ Neh 11:7
 
 my $jesaja_neh_11_7 = person('Jesaja', verse => 'Neh 11:7');
 my $ithiel = person('Ithiel', verse => 'Neh 11:7');
 my $maaseja_neh_11_7 = person('Maaseja', verse => 'Neh 11:7');
 my $kolaja = person('Kolaja', verse => 'Neh 11:7');
 my $pedaja = person('Pedaja', verse => 'Neh 11:7');
 my $joed = person('Joed', verse => 'Neh 11:7');
 my $meschullam_1_neh_11_7 = person('Meschullam', verse => 'Neh 11:7', is_it => 'Meschullam 1. Chr 9:7');
 my $sallu_neh_11_7 = person('Sallu', verse => 'Neh 11:7', is_it => 'Sallu 1. Chr 9:7');

 rel($benjamin, $jesaja_neh_11_7, distant=>1);
 rel($jesaja_neh_11_7, $ithiel, distant=>1);
 rel($ithiel, $maaseja_neh_11_7, distant=>1);
 rel($maaseja_neh_11_7, $kolaja, distant=>1);
 rel($kolaja, $pedaja, distant=>1);
 rel($pedaja, $joed, distant=>1);
 rel($joed, $meschullam_1_neh_11_7, distant=>1);
 rel($meschullam_1_neh_11_7, $sallu_neh_11_7, distant=>1);

 #_}
 #_{ Neh 11:8
 
 my $gabbai_sallai = person('Gabbai-Sallai', verse => 'Neh 11:8');
 rel($benjamin, $gabbai_sallai, distant=>1);
 #_}
 #_{ Neh 11:9
 
 my $joel_neh_11_9  = person('Joel', add=>'Aufseher über sie', verse => 'Neh 11:9');
 my $sichri_neh_11_9= person('Sichri', verse => 'Neh 11:9');
 rel($benjamin, $sichri_neh_11_9, distant=>1);
 rel($sichri_neh_11_9, $joel_neh_11_9, distant=>1);

 my $juda_neh_11_9 = person('Juda', add=>'2. Aufseher', verse => 'Neh 11:9');
 my $hassenua_neh_11_9  = person('Hassenua', verse => 'Neh 11:9', is_it=>'Hassenua 1. Chr 9:7');
 rel($benjamin, $hassenua_neh_11_9, verse => 'Neh 11:9', distant=>1);
 rel($hassenua_neh_11_9, $juda_neh_11_9, , distant=>1);

 #_}
 #_}
 #_}
 #_{ Rank Nehemia / Esra
 
 rank(
 $esra,
 $uthai , $asaja , $jeghuel , $sallu , $jibneja , $ela , $meschullam_1_chr_9_8 , $jedaja,
 # , $jehojarib 
 $jachin, # asarja_1chr_9_11 
 $adaja , $masai , $schemaja,
 $bakbakkar , $heresch , $galal , $mattanja, # 9:15
 $obadja , $berekja,
 $schallum , $akkub , $talmon , $achiman,
 $schallum_1chr_9_19,
 $athaja , $maaseja , $sallu_neh_11_7 , $gabbai_sallai , $joel_neh_11_9 , $juda_neh_11_9
 );

 
# print $dot "  {rank=same 
# $esra
# $uthai $asaja $jeghuel $sallu $jibneja $ela $meschullam_1_chr_9_8 $jedaja 
# // $jehojarib 
# $jachin // asarja_1chr_9_11 
# $adaja $masai $schemaja
# $bakbakkar $heresch $galal $mattanja  /* 9:15 */
# $obadja $berekja
# $schallum $akkub $talmon $achiman
# $schallum_1chr_9_19
# $athaja $maaseja $sallu_neh_11_7 $gabbai_sallai $joel_neh_11_9 $juda_neh_11_9
# } /* 1. Chr 9 - Nehemia  */\n";
#  #_}

} #_}
 
for my $person (@person_order) { #_{


#  if (my $generation=delete $person->{generation}) {
#     $persons{$id}{generation} = $generation;
#  }
 
#  if ($person->{sonof}) {
#    rel($person->{sonof}, $id);
#    delete $person->{sonof};
#  }
 
   my $tr_add = '';
   if ($persons{$person}->{add}) {
     $tr_add = "\n    <tr><td align=\"left\">$persons{$person}->{add}</td></tr>";
     delete $persons{$person}->{add};
   }
   my $tr_verse='';
   if ($persons{$person}->{verse}) {
     $tr_verse = "\n    <tr><td align=\"left\"><font color=\"blue\">$persons{$person}->{verse}</font></td></tr>";
     delete $persons{$person}->{verse};
   }
 
 
   my $tr_is_it="";
   if ($persons{$person}->{is_it}) {
     $tr_is_it = "\n    <tr><td align=\"left\"><font color=\"#ff7700\"><i>$persons{$person}->{is_it}?</i></font></td></tr>";
     delete $persons{$person}->{is_it};
   }
   my $tr_rem="";
   if ($persons{$person}->{rem}) {
     $tr_rem = "\n    <tr><td align=\"left\"><font color=\"#229933\">$persons{$person}->{rem}</font></td></tr>";
     delete $persons{$person}->{rem};
   }
   my $tr_ii_mo_46_ff="";
   if ($persons{$person}->{ii_mo_46_ff}) {
     my $ii_mo_46_ff = '1. Mo 46:' . $persons{$person}->{ii_mo_46_ff};
     $tr_ii_mo_46_ff = "\n    <tr><td align=\"left\"><font color=\"#992266\">$ii_mo_46_ff</font></td></tr>";
     $persons{$person}{ii_mo_46_ff} = $persons{$person}->{ii_mo_46_ff}; # Ausnahme!
     delete $persons{$person}->{ii_mo_46_ff};
   }
   my $tr_iv_mo_1="";
   if ($persons{$person}->{iv_mo_1}) {
     my $iv_mo_1 = '4. Mo:1';
     $tr_iv_mo_1 = "\n    <tr><td align=\"left\"><font color=\"#ee4422\">$iv_mo_1</font></td></tr>";
 #   $persons{$id}{iv_mo_1} = $persons{$person}->{iv_mo_1}; # Ausnahme!
     delete $persons{$person}->{iv_mo_1};
   }
   my $tr_i_chr_5_27_ff="";
   if ($persons{$person}->{i_chr_5_27_ff}) {
     my $i_chr_5_27_ff_txt = '1. Chr 5:' . $persons{$person}->{i_chr_5_27_ff};
     $tr_i_chr_5_27_ff = "\n    <tr><td align=\"left\"><font color=\"#775544\">$i_chr_5_27_ff_txt</font></td></tr>";
     delete $persons{$person}->{i_chr_5_27_ff};
   }
   my $tr_i_chr_6_1_ff="";
   if ($persons{$person}->{i_chr_6_1_ff}) {
     my $i_chr_6_1_ff_txt = '1. Chr 6:' . $persons{$person}->{i_chr_6_1_ff};
     $tr_i_chr_6_1_ff = "\n    <tr><td align=\"left\"><font color=\"#336699\">$i_chr_6_1_ff_txt</font></td></tr>";
     delete $persons{$person}->{i_chr_6_1_ff};
   }
   my $tr_i_chr_6_18_ff="";
   if ($persons{$person}->{i_chr_6_18_ff}) {
     my $i_chr_6_18_ff_txt = '1. Chr 6:' . $persons{$person}->{i_chr_6_18_ff};
     $tr_i_chr_6_18_ff = "\n    <tr><td align=\"left\"><font color=\"#3377cc\">$i_chr_6_18_ff_txt</font></td></tr>";
     delete $persons{$person}->{i_chr_6_18_ff};
   }
   my $tr_i_chr_6_24_ff="";
   if ($persons{$person}->{i_chr_6_24_ff}) {
     my $i_chr_6_24_ff_txt = '1. Chr 6:' . $persons{$person}->{i_chr_6_24_ff};
     $tr_i_chr_6_24_ff = "\n    <tr><td align=\"left\"><font color=\"#337722\">$i_chr_6_24_ff_txt</font></td></tr>";
     delete $persons{$person}->{i_chr_6_24_ff};
   }
   my $tr_i_chr_6_29_ff="";
   if ($persons{$person}->{i_chr_6_29_ff}) {
     my $i_chr_6_29_ff_txt = '1. Chr 6:' . $persons{$person}->{i_chr_6_29_ff};
     $tr_i_chr_6_29_ff = "\n    <tr><td align=\"left\"><font color=\"#884488\">$i_chr_6_29_ff_txt</font></td></tr>";
     delete $persons{$person}->{i_chr_6_29_ff};
   }
   my $tr_i_chr_6_35_ff="";
   if ($persons{$person}->{i_chr_6_35_ff}) {
     my $i_chr_6_35_ff_txt = '1. Chr 6:' . $persons{$person}->{i_chr_6_35_ff};
     $tr_i_chr_6_35_ff = "\n    <tr><td align=\"left\"><font color=\"#994433\">$i_chr_6_35_ff_txt</font></td></tr>";
     delete $persons{$person}->{i_chr_6_35_ff};
   }
   my $tr_i_chr_9_11="";
   if ($persons{$person}->{i_chr_9_11}) {
     my $i_chr_9_11_txt = '1. Chr 9:11';
     $tr_i_chr_9_11 = "\n    <tr><td align=\"left\"><font color=\"#6229c4\">$i_chr_9_11_txt</font></td></tr>";
     delete $persons{$person}->{i_chr_9_11};
   }
   my $tr_esr_7_1_ff="";
   if ($persons{$person}->{esr_7_1_ff}) {
     my $esr_7_1_ff_txt = 'Esr 7:' . $persons{$person}->{esr_7_1_ff};
     $tr_esr_7_1_ff = "\n    <tr><td align=\"left\"><font color=\"#bb7718\">$esr_7_1_ff_txt</font></td></tr>";
     delete $persons{$person}->{esr_7_1_ff};
   }
   my $tr_neh_11_11="";
   if ($persons{$person}->{neh_11_11}) {
     my $neh_11_11_txt = 'Neh 11:11';
     $tr_neh_11_11 = "\n    <tr><td align=\"left\"><font color=\"#77aa26\">$neh_11_11_txt</font></td></tr>";
     delete $persons{$person}->{neh_11_11};
   }
   my $tr_mt="";
   if ($persons{$person}->{mt}) {
     my $mt_txt = "Mt 1:$persons{$person}->{mt}";
     $tr_mt = "\n    <tr><td align=\"left\"><font color=\"#aa2677\">$mt_txt</font></td></tr>";
     delete $persons{$person}->{mt};
   }

   my $tab_bgcolor = '';
   if (delete $persons{$person}->{anc_lord}) {
     $tab_bgcolor = ' bgcolor="#ffeeee"';
   }
 
   my $name = delete $persons{$person}->{name};
 
   my $tr_generation = '';
   if (exists $persons{$person}{generation}) {
     my $generation = delete $persons{$person}{generation};
     $tr_generation .= "<tr><td align='left'>$generation. Generation</td></tr>";
   }
   die join " - ", keys %{$persons{$person}} if %{$persons{$person}};

   my $text = <<T;
  [ label=<
    <table border="1" cellborder="0" cellspacing="1"$tab_bgcolor>
      <tr><td align="left"><b>$name</b></td></tr>$tr_generation$tr_add$tr_is_it$tr_rem$tr_verse$tr_ii_mo_46_ff$tr_iv_mo_1$tr_i_chr_5_27_ff$tr_i_chr_6_1_ff$tr_i_chr_6_18_ff$tr_i_chr_6_24_ff$tr_i_chr_6_29_ff$tr_i_chr_6_35_ff$tr_i_chr_9_11$tr_esr_7_1_ff$tr_neh_11_11$tr_mt
    </table>> ];
T





  print $dot " $person $text " if is_person_outputted($person);

} #_}

for my $rel (@rels) { #_{

  if (is_person_outputted($rel->{father}) and
      is_person_outputted($rel->{child }) ) {
    print $dot "$rel->{father} -> $rel->{child} [$rel->{add}];\n";
  }
} #_}

for my $rank (@ranks) { #_{
  my @persons_outputed = grep { is_person_outputted($_) } @$rank;

  if (@persons_outputed) {
    print $dot "  {rank=same  " . (join " ", @persons_outputed) . "}\n";
  }
} #_}



print $dot "}\n";
close $dot;


#dot('png');
#dot('gif');
dot('pdf');
#dot('jpg');
#dot('vml');
#dot('vrml');
#dot('bmp');
#dot('plain');
#dot('svg');
#dot('x11');
#dot('gd');
#dot('eps');
#dot('ps');
#dot('tiff');

sub person { #_{
  my $name = shift;

  my %opts = @_;

  state %ids_seen;


  my $id = lc($name) .
    ($opts{verse        } // '') .
    ($opts{ii_mo_46_ff  } // '') .
    ($opts{iv_mo_1      } // '') .
    ($opts{i_chr_5_27_ff} // '') .
    ($opts{i_chr_6_1_ff } // '') .
    ($opts{i_chr_6_18_ff} // '') .
    ($opts{i_chr_6_24_ff} // '') .
    ($opts{i_chr_6_29_ff} // '') .
    ($opts{i_chr_6_35_ff} // '') .
    ($opts{mt           } // '')
  ;
  $id =~ s/[.\- :\/()]//g;
  die "$name $id" if exists $ids_seen{$id};
  $ids_seen{$id}=undef;




  $persons{$id} = \%opts;
  $persons{$id}->{name} = $name;

 
  if ($opts{sonof}) {
    rel($opts{sonof}, $id);
    delete $opts{sonof};
  }


  push @person_order, $id;

  return $id;
  
} #_}

sub rel { #_{
  my $father = shift;
  my $child  = shift;
  
  my %opts = @_;

  my $add='';
  if ($opts{invisible}) {
    $add .= ' color=invis';
  }
  if ($opts{distant}) {
    $add .= ' style=dashed';
  }
  else {
    if (exists $persons{$father}{generation}) {
      $persons{$child}{generation} = $persons{$father}{generation} + 1;
    }
  }

  push @rels, {father=>$father, child=>$child, add=>$add};

} #_}

sub rank { #_{
  push @ranks, \@_;
} #_}

sub dot { #_{
  my $format = shift;
  system "dot Personen.dot -T$format -oPersonen.$format";
} #_}

sub is_person_outputted { #_{
  my $person_id = shift;

  if ($output_range eq 'up to Jakob') { #_{

    if ( ($persons{$person_id}{generation} // 1000) <= 22) {
       print "$person_id is outputted ", ($persons{$person_id}{generation} // 1000), "\n";
       return 1;
    }
       print "$person_id is not outputted\n";
    return 0;

  } #_}
  if ($output_range eq '1. Mo. 46') { #_{

    if (($persons{$person_id}{generation} //    0) >= 22 and
        ($persons{$person_id}{generation} // 1000) <= 23) {
       return 1;
    }
    if (defined $persons{$person_id}{ii_mo_46_ff}) {
       return 1;
    }
    return 0;
  } #_}
  
  return 1;
} #_}
