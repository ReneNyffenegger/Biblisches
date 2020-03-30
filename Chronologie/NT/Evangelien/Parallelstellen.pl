#!/usr/bin/perl

use warnings;
use strict;

use utf8;

use Grid::Layout;
use Grid::Layout::Render;


my $gl = Grid::Layout->new();


my $kap_1 = $gl->line_x(0);

my $sohn_davids_abrahams  = $gl->add_vertical_line();

my $von_suenden_eretten  = $gl->add_vertical_line();

my $kap_2               = $gl->add_vertical_line();
my $wo_ist_der_koenig_der_juden  = $gl->add_vertical_line();

my $kap_3               = $gl->add_vertical_line();
my $joh_tut_busse       = $gl->add_vertical_line();

my $kap_4               = $gl->add_vertical_line();
# my $gap_0               = $gl->add_vertical_track();

my $teufel_zeigt_reiche = $gl->add_vertical_line(); #  mt-4-8
# my $gap_teufel          = $gl->add_vertical_track();

my $jesus_tut_busse     = $gl->add_vertical_line(); # mt-4-17

my $jesus_predigt_reich_start = $gl->add_vertical_line(); # mt-4-23

my $bergpredigt_kap_5_start   = $gl->add_vertical_line(); # mt-5-1

my $glueckselig         = $gl->add_vertical_line();
my $glueckselig_2       = $gl->add_vertical_line();
my $gerechtigkeit       = $gl->add_vertical_line();
my $betet               = $gl->add_vertical_line();
my $trachtet_zuerst     = $gl->add_vertical_line();
my $herr_herr           = $gl->add_vertical_line();

my $bergpredigt_kap_7_ende    = $gl->add_vertical_line();
# $gap = $gl->add_vertical_track();

my $aussaetziger_wird_geheilt = $gl->add_vertical_line();

my $hauptmann_start  = $gl->add_vertical_line();
my $glaube_in_isreal = $gl->add_vertical_line(); # mt-8-10
my $hauptmann_ende   = $gl->add_vertical_line();

my
$gap = $gl->add_vertical_track();

my $gelaehmter_glaubt_suenden_vergeben = $gl->add_vertical_line(); # mt-9-2

my $matthaeus = $gl->add_vertical_line(); # mt-9-9

my $blutfluessige_frau = $gl->add_vertical_line(); # mt-9-22

my $blinde_glauben = $gl->add_vertical_line(); # mt-9-28

my $daemon_austreibung_niemals_israel = $gl->add_vertical_line(); # mt-9-35

my $jesus_predigt_reich_ende = $gl->add_vertical_track(); # mt-9-35

my $ernte_gross_wenige_arbeiter = $gl->add_vertical_line(); # mt-9-37

$gap = $gl->add_vertical_track();

my $ende_kap_9 = $gl->add_vertical_line();

my $sprecht_reich_nahe       = $gl->add_vertical_line(); # mt-10-7
my $reich_ist_nahe_ende      = $gl->add_vertical_line();

my $kap_11_beginn = $gl->add_vertical_line();

my $wehe       = $gl->add_vertical_line(); # mt-11-21

my $pharisaeer_ueberlegen_ermordung       = $gl->add_vertical_line(); # mt-12-14


$gap = $gl->add_vertical_track();
my $reich_nahe          = $gl->add_vertical_line(); # mt-12-28
# $gap = $gl->add_vertical_track();

my $kein_zeichen       = $gl->add_vertical_line(); # mt-12-39

my $gleichnisse_kap_13_start   = $gl->add_vertical_line(); # mt-13-1

my $ihr_versteht_gleichnisse = $gl->add_vertical_line(); # mt-13-11
my $wort_vom_reich = $gl->add_vertical_line(); # mt-13-19

my $reich_der_himmel_gleich_menschen = $gl->add_vertical_line(); # mt-13-24
my $reich_der_himmel_gleich_senfkorn = $gl->add_vertical_line(); # mt-13-31
my $reich_der_himmel_gleich_sauerteig = $gl->add_vertical_line(); # mt-13-33
my $reich_der_himmel_gleich_schatz = $gl->add_vertical_line(); # mt-13-44
my $reich_der_himmel_gleich_kaufmann = $gl->add_vertical_line(); # mt-13-45
my $reich_der_himmel_gleich_netz = $gl->add_vertical_line(); # mt-13-47

my $gleichnisse_ende    = $gl->add_vertical_line();

my $gebt_ihr_zu_essen    = $gl->add_vertical_line();
my $petrus_auf_wasser    = $gl->add_vertical_line();
my $speisung_4000        = $gl->add_vertical_line();

my $kap_16             = $gl->add_vertical_line();
my $kein_zeichen_2     = $gl->add_vertical_line(); # mt-16-4

#$gap = $gl->add_vertical_track();
my $petrus_schluessel    = $gl->add_vertical_line();
my $ankuendigung_leiden_1    = $gl->add_vertical_line();

$gap = $gl->add_vertical_track();
my $kap_17             = $gl->add_vertical_line();
my $koenig_rechnet_ab    = $gl->add_vertical_line();

$gap = $gl->add_vertical_track();
my $kindlein    = $gl->add_vertical_line();

$gap = $gl->add_vertical_track();
my $reicher_reich    = $gl->add_vertical_line();

$gap = $gl->add_vertical_track();
my $feigenbaum_ohne_frucht= $gl->add_vertical_line();
my $gleichnis_2_kinder    = $gl->add_vertical_line();
my $weingaertner_toeten_sohn= $gl->add_vertical_line();
my $reich_weggenommen       = $gl->add_vertical_line();
# my $kap_22       = $gl->add_vertical_line();

# $gap = $gl->add_vertical_track();

my $kap_23                       = $gl->add_vertical_line();
my $verschliesst_reich           = $gl->add_vertical_line();

my $endzeitrede_start            = $gl->add_vertical_line();
my $kriege_nicht_ende            = $gl->add_vertical_line ();
my $reich_auf_erdkreis_gepredigt = $gl->add_vertical_line ();
my $feigenbaum_schlaegt_aus      = $gl->add_vertical_line();
my $endzeitrede_ende             = $gl->add_vertical_line();

# $gap = $gl->add_vertical_track();

my $gl_jungrauen_start           = $gl->add_vertical_line ();
my $braeutigam_verzieht          = $gl->add_vertical_line ();
my $wisst_weder_tag_noch_stunde  = $gl->add_vertical_line ();
my $gl_jungrauen_ende            = $gl->add_vertical_line ();

my $gl_knechte_talente_start     = $gl->add_vertical_line ();
my $nach_langer_zeit             = $gl->add_vertical_line ();
my $gl_knechte_talente_end       = $gl->add_vertical_line ();

my $wenn_sohn_kommt_start        = $gl->add_vertical_line ();
my $ererbt_reich                 = $gl->add_vertical_line ();
my $wenn_sohn_kommt_ende         = $gl->add_vertical_line ();

my $end_1                        = $gl->add_vertical_line ();
my $end_2                        = $gl->add_vertical_line ();
my $end_3                        = $gl->add_vertical_line ();

my $gap_2               = $gl->add_vertical_track();

my $tr_kapitel          = $gl->add_horizontal_track();
my $grober_ablauf       = $gl->add_horizontal_track();
my $v_gap_1             = $gl->add_horizontal_track();
my $reich_big_pict      = $gl->add_horizontal_track();

my $tr_reich_1               = $gl->add_horizontal_track();
my $tr_reich_2               = $gl->add_horizontal_track();
my $tr_reich_3               = $gl->add_horizontal_track();

my $weiteres            = $gl->add_horizontal_track();

my $tr_heilung_1        = $gl->add_horizontal_track();
my $tr_heilung_2        = $gl->add_horizontal_track();

my $tr_glaube_1        = $gl->add_horizontal_track();
my $tr_glaube_2        = $gl->add_horizontal_track();
my $tr_glaube_3        = $gl->add_horizontal_track();

my $tr_gleichnis_1        = $gl->add_horizontal_track();
my $tr_gleichnis_2        = $gl->add_horizontal_track();
my $tr_gleichnis_3        = $gl->add_horizontal_track();
my $tr_gleichnis_4        = $gl->add_horizontal_track();
my $tr_gleichnis_5        = $gl->add_horizontal_track();
my $tr_gleichnis_6        = $gl->add_horizontal_track();
my $tr_gleichnis_7        = $gl->add_horizontal_track();
my $tr_gleichnis_8        = $gl->add_horizontal_track();
my $tr_gleichnis_9        = $gl->add_horizontal_track();

my $tr_todo            = $gl->add_horizontal_track();
my $tr_todo_2          = $gl->add_horizontal_track();
my $tr_todo_3          = $gl->add_horizontal_track();

my $area;

$area = $tr_kapitel->area($kap_1, $kap_2);
$area ->{text}="Kap 1";

$area = $tr_kapitel->area($kap_2, $kap_3);
$area ->{text}="Kap 2";

$area = $tr_kapitel->area($kap_3, $kap_4);
$area ->{text}="Kap 3";

$area = $tr_kapitel->area($kap_4, $bergpredigt_kap_5_start);
$area ->{text}="Kap 4";

$area = $tr_kapitel->area($bergpredigt_kap_5_start, $bergpredigt_kap_7_ende);
$area ->{text}="5-7 (Predigt d. Reiches)";

$area = $tr_kapitel->area($bergpredigt_kap_7_ende, $ende_kap_9);
$area ->{text}="8-9 (Glaube u. Unglaube)";

$area = $tr_kapitel->area($ende_kap_9, $kap_11_beginn);
$area ->{text}="10: Aussendung Apostel";

$area = $tr_kapitel->area($kap_11_beginn, $gleichnisse_kap_13_start);
$area ->{text}="11-12 Verschärfung";

$tr_kapitel->area($gleichnisse_kap_13_start, $gleichnisse_ende )->{text} = '13: Gleichnisse';

$tr_kapitel->area($gleichnisse_ende, $kap_16)->{text} = '14-15: Jünger lernen Glauben';
$tr_kapitel->area($kap_16, $kap_17)->{text} = '16';

$area = $tr_reich_1        ->area($joh_tut_busse      , $joh_tut_busse->next_line(20)      );
$area ->{text} = 'J.d.T: Tut Busse, Reich Nahe';
$area->{point_in_time} = 1;

$area = $weiteres->area($sohn_davids_abrahams, $sohn_davids_abrahams->next_line(25));
$area->{text} = 'Des Sohnes Davids, des Sohnes Abrahams <span class="kap">1:1</span>';
$area->{point_in_time} = 1;

$area = $v_gap_1->area($von_suenden_eretten, $von_suenden_eretten->next_line(25));
$area->{text} = 'Er wird Sein Volk von ihren Sünden eretten <span class="kap">1:21</span>';
$area->{point_in_time} = 1;

$area = $tr_todo_2->area($kap_2, $kap_2->next_line(18));
$area->{text} = 'In Tagen Herodes, des Königs, geboren <span class="kap">2:1</span>';
$area->{point_in_time} = 1;

$area = $tr_todo_3->area($wo_ist_der_koenig_der_juden, $wo_ist_der_koenig_der_juden->next_line(15));
$area->{text} = 'Magier: Wo ist König d. Juden <span class="kap">2:2</span>';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_1        ->area($teufel_zeigt_reiche, $teufel_zeigt_reiche->next_line(15));
$area ->{text} = 'Teufel zeigt Reiche <span class="kap">4:8</span>';
$area ->{point_in_time} = 1;

$area = $tr_reich_3        ->area($jesus_tut_busse, $jesus_tut_busse->next_line(32));
$area ->{text} = 'Jesus: Tut Busse, Reich Nahe <span class="kap">4:17), vgl Mk 1:15, Lk 5:32';
$area ->{point_in_time} = 1;


$area  = $tr_gleichnis_2->area($glueckselig, $glueckselig->next_line(25));
$area ->{text} = 'Glückselig, … denn ihrer ist das Reich <span class="kap">5:3</span>';
$area ->{point_in_time} = 1;

$area  = $tr_gleichnis_3->area($glueckselig_2, $glueckselig_2->next_line(20));
$area ->{text} = 'Glückselig, … denn ihrer ist das Reich <span class="kap">5:10</span>';
$area ->{point_in_time} = 1;

$area  = $tr_gleichnis_4->area($gerechtigkeit, $gerechtigkeit->next_line(13));
$area ->{text} = 'Gerechtigkeit <span class="kap">5:20</span>';
$area ->{point_in_time} = 1;

$area  = $tr_gleichnis_5->area($betet, $betet->next_line(25));
$area ->{text} = 'Betet: R. komme <span class="kap">6:9) … Denn dein ist das Reich (6:13) ';
$area ->{point_in_time} = 1;

$area  = $tr_gleichnis_6->area($trachtet_zuerst, $trachtet_zuerst->next_line(20));
$area ->{text} = 'Trachtet zuerst nach R.G. <span class="kap">6:33)';
$area ->{point_in_time} = 1;

$area  = $tr_gleichnis_7->area($herr_herr, $herr_herr->next_line(20));
$area ->{text} = 'nicht jeder, der Herr, Herr sagt … <span class="kap">7:21</span>';
$area ->{point_in_time} = 1;

$area  = $tr_reich_1        ->area($sprecht_reich_nahe, $sprecht_reich_nahe->next_line(16)); ### Note: next_line(4)
$area ->{text} = 'Sprecht: Reich nahe.  … <span class="kap">10:7 ff</span>';
$area ->{point_in_time} = 1;

$area  = $tr_todo        ->area($wehe, $wehe->next_line(20));
$area ->{text} = 'Wehe Chorazin … <span class="kap">11:21 ff</span>';
$area ->{point_in_time} = 1;

$area  = $tr_todo_2      ->area($pharisaeer_ueberlegen_ermordung, $pharisaeer_ueberlegen_ermordung->next_line(25));
$area ->{text} = 'Pharis. überlegen Ermordung <span class="kap">12:14</span>';
$area ->{point_in_time} = 1;

$area = $grober_ablauf        ->area($reich_nahe, $reich_nahe->next_line(25));
$area ->{text} = 'Wenn ich … austreibe, … Reich <i>ist</i> gekommen <span class="kap">12:28</span>';
$area ->{point_in_time} = 1;

$reich_big_pict->area($kein_zeichen, $kein_zeichen_2)->{text} =
  'Nur Jonas\' Zeichen <span class="kap">12:39/16:4</span></span>';


$area = $v_gap_1        ->area($petrus_schluessel, $petrus_schluessel->next_line(20));
$area ->{text} = 'Petrus erhält die Schl. d. R. <span class="kap">16:19</span>';
$area ->{point_in_time} = 1;

$area = $reich_big_pict->area($ankuendigung_leiden_1, $ankuendigung_leiden_1->next_line(10));
$area ->{text} = 'Ankündigung des Leidens <span class="kap">16:21/17:12/17:22/20:17</span>';
$area ->{point_in_time} = 1;

$area = $tr_reich_2        ->area($koenig_rechnet_ab, $koenig_rechnet_ab->next_line(12));
$area ->{text} = 'R. einem König gl. gew., der mit seinem Knechten abrechnet <span class="kap">18:23</span>';
$area ->{point_in_time} = 1;

$area = $tr_reich_3        ->area($kindlein, $kindlein->next_line(20));
$area ->{text} = 'Lasst die Kindlein zu mir kommen… ihrer ist das R. Gottes. <span class="kap">19:14</span>';
$area ->{point_in_time} = 1;

$area = $tr_reich_1        ->area($reicher_reich, $reicher_reich->next_line(20));
$area ->{text} = 'Ein Reicher kommt schwer ins R. d. Himmel <span class="kap">19:23</span>';
$area ->{point_in_time} = 1;

$area = $tr_glaube_2        ->area($reich_weggenommen, $reich_weggenommen->next_line(16));
$area ->{text} = 'R. wird genommen und Nation gegeben, d. Früchte bringt <span class="kap">21:43</span>';
$area ->{point_in_time} =1;

$area = $grober_ablauf        ->area($kriege_nicht_ende, $kriege_nicht_ende->next_line(10));
$area ->{text} = 'Kriege nicht das Ende <span class="kap">24:6</span>';
$area ->{point_in_time} = 1;

$area = $reich_big_pict        ->area($reich_auf_erdkreis_gepredigt, $reich_auf_erdkreis_gepredigt->next_line(10));
$area ->{text} = 'R. wird auf ganzer Erde gepredigt, dann Ende <span class="kap">24:14</span>';
$area ->{point_in_time} = 1;

$area = $tr_heilung_2 ->area($gleichnis_2_kinder, $gleichnis_2_kinder->next_line(20));
$area-> {text} = 'Gleichnis: 2 Kinder, Weinberg <span class="kap">21:28-32</span>';
$area ->{point_in_time} = 1;

$area = $tr_glaube_1->area($weingaertner_toeten_sohn, $weingaertner_toeten_sohn->next_line(20));
$area-> {text} = 'Gln: Weingärtner töten Sohn <span class="kap">21:33-42</span>. Beachte Früchte in Mt 21:34/41/43';
$area-> {point_in_time} = 1;

$area = $tr_heilung_1 ->area($aussaetziger_wird_geheilt, $aussaetziger_wird_geheilt->next_line(20));
$area -> {text} = 'Aussätziger wird geheilt <span class="kap">8:2-4</span>';
$area -> {point_in_time} = 1;

$area = $tr_heilung_2 ->area($hauptmann_start, $hauptmann_start->next_line(20));
$area -> {text} = 'Knecht des Hauptmanns wird geheilt <span class="kap">8:5-13<span>';
$area ->{point_in_time} = 1;

$area = $tr_glaube_1->area($glaube_in_isreal, $glaube_in_isreal->next_line(20));
$area->{text}='In Israel nicht solchen Glauben gefunden <span class="kap">8:10</span>';
$area->{point_in_time} = 1;

$area = $tr_glaube_2->area($gelaehmter_glaubt_suenden_vergeben, $gelaehmter_glaubt_suenden_vergeben->next_line(20));
$area->{text}='Gelähmter glaubt, Sünden vergeben <span class="Kap">Mt 9:2</span>';
$area->{point_in_time} = 1;

$area = $tr_todo->area($matthaeus, $matthaeus->next_line(11));
$area->{text} = 'Matthäus, folge mir nach';
$area->{point_in_time} = 1;

$area = $tr_glaube_3->area($blutfluessige_frau, $blutfluessige_frau->next_line(24));
$area->{text} = 'Blutfl. Frau, dein Glaube hat dich geheilt <span class="kap">9:22</span>';
$area->{point_in_time} = 1;

$area = $tr_glaube_2->area($gebt_ihr_zu_essen, $gebt_ihr_zu_essen->next_line(16));
$area->{text} = 'Speisung der  <span class="kap">14:15 ff</span>';
$area->{point_in_time} = 1;

$area = $tr_glaube_3->area($petrus_auf_wasser, $petrus_auf_wasser->next_line(16));
$area->{text} = 'Petrus auf dem Wasser <span class="kap">14:28</span>';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_1->area($speisung_4000, $speisung_4000->next_line(16));
$area->{text} = 'Speisung d. 4000 <span class="kap">15:33</span>';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_1->area($blinde_glauben, $blinde_glauben->next_line(23));
$area->{text} = 'Blinden geschieht nach ihrem Glauben <span class="kap">9:28</span>';
$area->{point_in_time} = 1;

$area = $weiteres->area($daemon_austreibung_niemals_israel, $daemon_austreibung_niemals_israel->next_line(25));
$area->{text} = 'Dämon ausgetrieben, nie Israel gesehen <span class="kap">9:33</span>';
$area->{point_in_time} = 1;

$area = $tr_todo_3->area($ernte_gross_wenige_arbeiter, $ernte_gross_wenige_arbeiter->next_line(20));
$area->{text} = 'Ernte gross, aber wenig Arbeiter <span class="kap">9:37</span>';
$area->{point_in_time} = 1;

$reich_big_pict->area($jesus_predigt_reich_start, $jesus_predigt_reich_ende)->{text} =
  'Jesus zog … umher, lehrte in ihren Synagogen, predigte das Evangelium des R. und heilte jede Krankheit … . <span class="kap">4:23 und 9:35</span>';

$area = $tr_heilung_1->area($feigenbaum_ohne_frucht, $feigenbaum_ohne_frucht->next_line(20));
$area -> {text} = 'Feigenbaum ohne Frucht <span class="kap">21:19-43</span>, Vgl Mt 24:32';
$area -> {point_in_time} = 1;


$area = $tr_gleichnis_2->area($ihr_versteht_gleichnisse, $ihr_versteht_gleichnisse->next_line(25));
$area->{text} = 'Ihr versteht Gleichnisse <span class="kap">13:11</span>';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_3->area($wort_vom_reich, $wort_vom_reich->next_line(28));
$area->{text} = 'So oft jemand das Wort vom R. hört <span class="kap">13:19</span>';
$area->{point_in_time} = 1;


$area = $tr_gleichnis_4->area($reich_der_himmel_gleich_menschen, $reich_der_himmel_gleich_menschen->next_line(25));
$area->{text} = '… säender Mensch <span class="kap">13:24</span>';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_5->area($reich_der_himmel_gleich_senfkorn, $reich_der_himmel_gleich_senfkorn->next_line(20));
$area->{text} = '… Senfkorn <span class="kap">13:31</span>';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_6->area($reich_der_himmel_gleich_sauerteig, $reich_der_himmel_gleich_sauerteig->next_line(20));
$area->{text} = '… Sauerteig <span class="kap">13:33</span>';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_7->area($reich_der_himmel_gleich_schatz, $reich_der_himmel_gleich_schatz->next_line(20));
$area->{text} = '… Schatz im Acker <span class="kap">13:44</span>';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_8->area($reich_der_himmel_gleich_kaufmann, $reich_der_himmel_gleich_kaufmann->next_line(20));
$area->{text} = '… Kaufmann <span class="kap">13:45)';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_9->area($reich_der_himmel_gleich_netz, $reich_der_himmel_gleich_netz->next_line(20));
$area->{text} = '… Netz <span class="kap">13:47)';
$area->{point_in_time} = 1;


$grober_ablauf->area($kap_3, $reich_ist_nahe_ende)->{text} = 'Reich ist nahe';

$tr_kapitel->area($feigenbaum_ohne_frucht, $kap_23 )->{text} = '21:19ff / 22: Frucht? And. Nation'; 



$tr_kapitel->area($kap_23, $endzeitrede_start )->{text} = '23: Urteil ü. Pharisäer';
$tr_kapitel->area($endzeitrede_start, $endzeitrede_ende )->{text} = '24: Endzeitrede';
$tr_kapitel->area($endzeitrede_ende, $gap_2)->{text} = '25: Reich d. Himmel/Dienst';
$area = $tr_todo ->area($verschliesst_reich, $verschliesst_reich->next_line(10) );
$area->{text} = 'Wehe, ihr verschliesst das Reich <span class="kap">23:13</span>';
$area->{point_in_time} = 1;

$area = $weiteres->area($feigenbaum_schlaegt_aus, $feigenbaum_schlaegt_aus->next_line(15) );
$area ->{text} = 'Feigenbaum schlägt aus <span class="kap">24:32</span> vgl Mt 21:19)';
$area ->{point_in_time} = 1;

$tr_reich_2->area($gl_jungrauen_start, $gl_jungrauen_ende)->{text} = 'gleich 10 Jungfrauen <span class="kap">25:1-13</span>';
$area = $tr_gleichnis_2->area($braeutigam_verzieht, $braeutigam_verzieht->next_line(10));
$area ->{text} = 'Als aber der Bräutigam verzog <span class="kap">25:5</span>';
$area ->{point_in_time} = 1;

$area = $tr_gleichnis_3->area($wisst_weder_tag_noch_stunde, $wisst_weder_tag_noch_stunde->next_line(10));
$area ->{text} = 'Wisst nicht Tag/Stunde <span class="kap">25:13</span>';
$area ->{point_in_time} = 1;


$area = $gl->area(
    $nach_langer_zeit,
    $tr_gleichnis_3->line_beneath(1),
    $nach_langer_zeit->next_line(8),
    $tr_gleichnis_3->line_beneath(4)->next_line(4)
);
# $area = $tr_gleichnis_1->area($nach_langer_zeit, $nach_langer_zeit->next_line(8));
$area->{text} = 'Nach langer Zeit kommt der Herr und hält Rechnung <span class="kap">25:19</span>';
$area->{point_in_time} = 1;

$tr_reich_2->area($gl_jungrauen_ende, $gl_knechte_talente_end)->{text} = 'Knechte erhalten Talente <span class="kap">25:14-30</span>';


$grober_ablauf->area($wenn_sohn_kommt_start, $wenn_sohn_kommt_ende)->{text} = 'Wenn d. Sohn kommt … <span class="kap">25:31-46</span>';

$area=$reich_big_pict->area($ererbt_reich, $ererbt_reich->next_line(5));
$area->{text} = 'Ererbt Reich <span class="kap">25:34</span>';
$area->{point_in_time} = 1;

my $html = '';
Grid::Layout::Render::top_to_bottom_left_to_right (
  $gl,
  sub {
    my $track_h = shift;
    $html .= "<tr>";
  },
  sub {
    my $cell = shift;


    if (my $area = $cell->{area}) {

      if ($area->x_from == $cell->x and $area->y_from == $cell->y) {
        my $width  = $area->width;
        my $height = $area->height;

        my $left = '';
        if ($area->{point_in_time}) {
           $left = '-left';
        }

        my $style = "border$left: 1px solid red";

        $html .= "<td colspan='$width' rowspan='$height' style='$style'>";
        $html .= $area->{text};
        $html .= "</td>";
      }
    }
    else {
        $html .= "<td>";
        $html .= "&nbsp;";
        $html .= "</td>";
    }
  },
  sub {
    
    $html .= "</tr>";
  }
);


open (my $out, '>:encoding(utf8)', 'Parallelstellen.html') or die;
print $out "<html>
<head>
<title>Matthäusevangeilum / Reich Gottes</title>
<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>

  <style>
     *   {font-size: 12px}
    .kap {font-size: 10px}
  </style>

</head>
<body style='width: 100%'>
<table class='border-collapse: collapse; border-spacing: 0' border=0>
$html
</table>
</body>
</html>";
close $out;
