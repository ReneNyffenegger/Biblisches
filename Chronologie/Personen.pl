#!/usr/bin/perl
use warnings;
use strict;
use 5.10.0;


#    <tr><td align="left"><font color="red">todo</font></td></tr>

open (my $dot, '>', 'Personen.dot') or die;

print $dot <<DOT;
digraph P {
//node [shape=plaintext fontname="Sans serif" fontsize="8"];
  node [shape=plaintext fontname="Open Sans" fontsize="8"];

DOT

  my $adam       = person('Adam');

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

  my $seth       = person('Seth'       , sonof=>$adam       , verse=>'1. Mo 5:3');
  my $enos       = person('Enos'       , sonof=>$seth       , verse=>'1. Mo 5:6');
  my $kenan      = person('Kenan'      , sonof=>$enos       , verse=>'1. Mo 5:9');
  my $mahalel    = person('Mahalel'    , sonof=>$kenan      , verse=>'1. Mo 5:12');
  my $jered      = person('Jered'      , sonof=>$mahalel    , verse=>'1. Mo 5:15');
  my $henoch     = person('Henoch'     , sonof=>$jered      , verse=>'1. Mo 5:18');
  my $methusalah = person('Methusalah' , sonof=>$henoch     , verse=>'1. Mo 5:21');
  my $lamech     = person('Lamech'     , sonof=>$methusalah , verse=>'1. Mo 5:25');
  my $noah       = person('Noah'       , sonof=>$lamech     , verse=>'1. Mo 5:29');

  my $sem        = person('Sem'        , sonof=>$noah      , verse=>'1. Mo 5:32', add=>'ältester Bruder Japhets');
  my $ham        = person('Ham'        , sonof=>$noah      , verse=>'1. Mo 5:32');
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
  my $arpaksad   = person('Arpaksad'  , sonof=>$sem    , verse=>'1. Mo 10:22');
  my $lud        = person('Lud'       , sonof=>$sem    , verse=>'1. Mo 10:22');
  my $aram       = person('Aram'      , sonof=>$sem    , verse=>'1. Mo 10:22');

  my $uz         = person('Uz'        , sonof=>$aram   , verse=>'1. Mo 10:23');
  my $hul        = person('Hul'       , sonof=>$aram   , verse=>'1. Mo 10:23');
  my $gether     = person('Gether'    , sonof=>$aram   , verse=>'1. Mo 10:23');
  my $masch      = person('Masch'     , sonof=>$aram   , verse=>'1. Mo 10:23');

  my $schelach   = person('Schelach'  , sonof=>$arpaksad, verse=>'1. Mo 10:24');
  my $heber      = person('Heber'     , sonof=>$schelach, verse=>'1. Mo 10:24');
  my $peleg      = person('Peleg'     , sonof=>$heber   , verse=>'1. Mo 10:25', add=>'Erdteilung');
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

  my $reghu       = person('Reghu'      , sonof=>$peleg   , verse=>'1. Mo 11:18');
  my $serug       = person('Serug'      , sonof=>$reghu   , verse=>'1. Mo 11:20');
  my $nahor       = person('Nahor'      , sonof=>$serug   , verse=>'1. Mo 11:22');
  my $tarah       = person('Tarah'      , sonof=>$nahor   , verse=>'1. Mo 11:24');

  my $abraham     = person('Abraham'    , sonof=>$tarah   , verse=>'1. Mo 11:26');
  my $nahor_2     = person('Nahor'      , sonof=>$tarah   , verse=>'1. Mo 11:26');
  my $haran       = person('Haran'      , sonof=>$tarah   , verse=>'1. Mo 11:26');

#_}

  my $isaak    = person('Isaak', sonof=>$abraham, verse => '1. Mo 21:3');

  my $jakob    = person('Jakob', sonof=>$isaak  , verse => '1. Mo 25:26');

  my $lea      = person('Lea'  );
  my $rahel    = person('Rahel');

  print $dot "  {rank=same  $jakob $lea $rahel}\n";

  my $ruben    = person('Ruben');
  my $simeon   = person('Simeon');
  my $levi     = person('Levi', i_chr_5_27_ff=>'27', i_chr_6_1_ff=>'1', i_chr_6_18_ff=>'23', i_chr_6_24_ff=>'28', i_chr_6_29_ff=>'32');
  my $juda     = person('Juda');
  my $joseph   = person('Joseph');
  my $benjamin = person('Benjamin');

  rel($lea  , $ruben);
  rel($lea  , $simeon);
  rel($lea  , $levi);
  rel($lea  , $juda);

  rel($rahel, $benjamin);
  rel($rahel, $joseph);

print $dot "  {rank=same  $ruben $simeon $levi $juda $joseph $benjamin } /* Söhne Jakobs  */\n";




# 1mo-46-11 _{ vgl  2mo 6 16
my $gerson  = person('Gerson', i_chr_5_27_ff=>'27', i_chr_6_1_ff=>'1', i_chr_6_24_ff=>'28', rem=>'gen. Gersom in 1. Chr 5:27/6:1');
my $kahat   = person('Kahat' , i_chr_5_27_ff=>'27', i_chr_6_1_ff=>'1', i_chr_6_18_ff=>'23');
my $merari  = person('Merari', i_chr_5_27_ff=>'27', i_chr_6_1_ff=>'1', i_chr_6_29_ff=>'32');

rel($levi, $gerson);
rel($levi, $kahat);
rel($levi, $merari);
 #_}
# 1mo-46-12 _{
# my $gher =
# my $onan =
my $schela = person('Schela');
my $perez  = person('Perez' );
my $serach = person('Serach');

rel($juda, $schela);
rel($juda, $perez );
rel($juda, $serach);


# _}

print $dot "  {rank=same  
  $gerson $kahat $merari
  $schela $perez $serach } /* 1. Generation nach Söhnen Jakobs  */\n";

#_{ 2. Mo 

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
 
print $dot "  {rank=same  
  $libni $simei
  $amram $jitzhar $hebron $ussiel
  $machli $muschi

  } /* 2. Generation nach Söhnen Jakobs  */\n";

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
 
 my $misael   = person('Misael'  , verse=>'2. Mo 6:22');
 my $elzaphan = person('Elzaphan', verse=>'2. Mo 6:22');
 my $sitri    = person('Sitri'   , verse=>'2. Mo 6:22');

 rel($ussiel, $misael);
 rel($ussiel, $elzaphan);
 rel($ussiel, $sitri);
 

 
 #_}
print $dot "  {rank=same  
  $aaron $mose
  $korah $nepheg $sichri
  $misael $elzaphan $sitri

  } /* 3. Generation nach Söhnen Jakobs  */\n";




 #_}
 #_{ 2. Mo 6:23
 
 my $nadab   = person('Nadab', i_chr_5_27_ff=>'29');
 my $abihu   = person('Abihu', i_chr_5_27_ff=>'29');
 my $eleasar = person('Eleasar', i_chr_5_27_ff=>'29', i_chr_6_35_ff=>'35', esr_7_1_ff=>'5');
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
 #
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
 
print $dot "  {rank=same 
  $heman $etan $asaph_1chr_6_24  // Sänger Heman, Etan zur Linken, Asaph zur Rechten
}
";


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

my $jedaja = person('Jedaja'   , add=>'Priester', verse=>'1. Chr 9:10');
my $jehojarib = person('Jehojarib', add=>'Priester', rem=>'Jojarib in Neh 11:10', verse=>'1. Chr 9:10');
my $jachin = person('Jachin'   , add=>'Priester', verse=>'1. Chr 9:10');

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
print $dot "  {rank=same 
$esra
$uthai $asaja $jeghuel $sallu $jibneja $ela $meschullam_1_chr_9_8 $jedaja 
// $jehojarib 
$jachin // asarja_1chr_9_11 
$adaja $masai $schemaja
$bakbakkar $heresch $galal $mattanja  /* 9:15 */
$obadja $berekja
$schallum $akkub $talmon $achiman
$schallum_1chr_9_19
$athaja $maaseja $sallu_neh_11_7 $gabbai_sallai $joel_neh_11_9 $juda_neh_11_9
} /* 1. Chr 9 - Nehemia  */\n";
 #_}
 
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

  my $id = lc($name) . ($opts{verse} // '') . ($opts{i_chr_5_27_ff} // '') .($opts{i_chr_6_1_ff} // '') . ( $opts{i_chr_6_18_ff} // '') . ( $opts{i_chr_6_24_ff} // '') . ( $opts{i_chr_6_29_ff} // ''). ($opts{i_chr_6_35_ff} // '');
  $id =~ s/[.\- :\/()]//g;
  die "$name $id" if exists $ids_seen{$id};
  $ids_seen{$id}=undef;

  if ($opts{sonof}) {
    rel($opts{sonof}, $id);
    delete $opts{sonof};
  }

  my $tr_add = ''; # "\n   <tr><td>&nbsp;</td></tr>";
  if ($opts{add}) {
    $tr_add = "\n    <tr><td align=\"left\">$opts{add}</td></tr>";
    delete $opts{add};
  }
  my $tr_verse='';
  if ($opts{verse}) {
    $tr_verse = "\n    <tr><td align=\"left\"><font color=\"blue\">$opts{verse}</font></td></tr>";
    delete $opts{verse};
  }
  my $tr_is_it="";
  if ($opts{is_it}) {
    $tr_is_it = "\n    <tr><td align=\"left\"><font color=\"#ff7700\"><i>$opts{is_it}?</i></font></td></tr>";
    delete $opts{is_it};
  }
  my $tr_rem="";
  if ($opts{rem}) {
    $tr_rem = "\n    <tr><td align=\"left\"><font color=\"#229933\">$opts{rem}</font></td></tr>";
    delete $opts{rem};
  }
  my $tr_i_chr_5_27_ff="";
  if ($opts{i_chr_5_27_ff}) {
    my $i_chr_5_27_ff_txt = '1. Chr 5:' . $opts{i_chr_5_27_ff};
    $tr_i_chr_5_27_ff = "\n    <tr><td align=\"left\"><font color=\"#775544\">$i_chr_5_27_ff_txt</font></td></tr>";
    delete $opts{i_chr_5_27_ff};
  }
  my $tr_i_chr_6_1_ff="";
  if ($opts{i_chr_6_1_ff}) {
    my $i_chr_6_1_ff_txt = '1. Chr 6:' . $opts{i_chr_6_1_ff};
    $tr_i_chr_6_1_ff = "\n    <tr><td align=\"left\"><font color=\"#336699\">$i_chr_6_1_ff_txt</font></td></tr>";
    delete $opts{i_chr_6_1_ff};
  }
  my $tr_i_chr_6_18_ff="";
  if ($opts{i_chr_6_18_ff}) {
    my $i_chr_6_18_ff_txt = '1. Chr 6:' . $opts{i_chr_6_18_ff};
    $tr_i_chr_6_18_ff = "\n    <tr><td align=\"left\"><font color=\"#3377cc\">$i_chr_6_18_ff_txt</font></td></tr>";
    delete $opts{i_chr_6_18_ff};
  }
  my $tr_i_chr_6_24_ff="";
  if ($opts{i_chr_6_24_ff}) {
    my $i_chr_6_24_ff_txt = '1. Chr 6:' . $opts{i_chr_6_24_ff};
    $tr_i_chr_6_24_ff = "\n    <tr><td align=\"left\"><font color=\"#337722\">$i_chr_6_24_ff_txt</font></td></tr>";
    delete $opts{i_chr_6_24_ff};
  }
  my $tr_i_chr_6_29_ff="";
  if ($opts{i_chr_6_29_ff}) {
    my $i_chr_6_29_ff_txt = '1. Chr 6:' . $opts{i_chr_6_29_ff};
    $tr_i_chr_6_29_ff = "\n    <tr><td align=\"left\"><font color=\"#884488\">$i_chr_6_29_ff_txt</font></td></tr>";
    delete $opts{i_chr_6_29_ff};
  }
  my $tr_i_chr_6_35_ff="";
  if ($opts{i_chr_6_35_ff}) {
    my $i_chr_6_35_ff_txt = '1. Chr 6:' . $opts{i_chr_6_35_ff};
    $tr_i_chr_6_35_ff = "\n    <tr><td align=\"left\"><font color=\"#994433\">$i_chr_6_35_ff_txt</font></td></tr>";
    delete $opts{i_chr_6_35_ff};
  }
  my $tr_i_chr_9_11="";
  if ($opts{i_chr_9_11}) {
    my $i_chr_9_11_txt = '1. Chr 9:11';
    $tr_i_chr_9_11 = "\n    <tr><td align=\"left\"><font color=\"#6229c4\">$i_chr_9_11_txt</font></td></tr>";
    delete $opts{i_chr_9_11};
  }
  my $tr_esr_7_1_ff="";
  if ($opts{esr_7_1_ff}) {
    my $esr_7_1_ff_txt = 'Esr 7:' . $opts{esr_7_1_ff};
    $tr_esr_7_1_ff = "\n    <tr><td align=\"left\"><font color=\"#bb7718\">$esr_7_1_ff_txt</font></td></tr>";
    delete $opts{esr_7_1_ff};
  }
  my $tr_neh_11_11="";
  if ($opts{neh_11_11}) {
    my $neh_11_11_txt = 'Neh 11:11';
    $tr_neh_11_11 = "\n    <tr><td align=\"left\"><font color=\"#77aa26\">$neh_11_11_txt</font></td></tr>";
    delete $opts{neh_11_11};
  }

  die join " - ", keys %opts if %opts;

  print $dot <<"DOT";

  $id [ label=<
  <table border="1" cellborder="0" cellspacing="1">
    <tr><td align="left"><b>$name</b></td></tr>$tr_add$tr_is_it$tr_rem$tr_verse$tr_i_chr_5_27_ff$tr_i_chr_6_1_ff$tr_i_chr_6_18_ff$tr_i_chr_6_24_ff$tr_i_chr_6_29_ff$tr_i_chr_6_35_ff$tr_i_chr_9_11$tr_esr_7_1_ff$tr_neh_11_11
  </table>>];

DOT

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

  print $dot "  $father -> $child [$add]\n";
} #_}

sub dot {
  my $format = shift;
  system "dot Personen.dot -T$format -oPersonen.$format";
}
