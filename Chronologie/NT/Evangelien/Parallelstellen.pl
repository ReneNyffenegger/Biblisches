#!/usr/bin/perl
use warnings;
use strict;

use utf8;

use Grid::Layout;
use Grid::Layout::Render;


my $gl = Grid::Layout->new();

my $joh_tut_busse       = $gl->add_vertical_line();
# my $gap_0               = $gl->add_vertical_track();

my $teufel_zeigt_reiche = $gl->add_vertical_line(); #  mt-4-8
# my $gap_teufel          = $gl->add_vertical_track();

my $jesus_tut_busse     = $gl->add_vertical_line(); # mt-4-17

my $jesus_predigt_reich_start = $gl->add_vertical_line(); # mt-4-23

my $bergpredigt_start   = $gl->add_vertical_line(); # mt-5-1

my $glueckselig         = $gl->add_vertical_line();
my $glueckselig_2       = $gl->add_vertical_line();
my $gerechtigkeit       = $gl->add_vertical_line();
my $betet               = $gl->add_vertical_line();
my $trachtet_zuerst     = $gl->add_vertical_line();
my $herr_herr           = $gl->add_vertical_line();

my $bergpredigt_ende    = $gl->add_vertical_track();
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

my $sprecht_reich_nahe       = $gl->add_vertical_line(); # mt-10-7

my $wehe       = $gl->add_vertical_line(); # mt-11-21

my $pharisaeer_ueberlegen_ermordung       = $gl->add_vertical_line(); # mt-12-14


$gap = $gl->add_vertical_track();
my $reich_nahe          = $gl->add_vertical_line(); # mt-12-28
# $gap = $gl->add_vertical_track();

my $kein_zeichen       = $gl->add_vertical_line(); # mt-12-39

my $gleichnisse_start   = $gl->add_vertical_line(); # mt-13-1

my $ihr_versteht_gleichnisse = $gl->add_vertical_line(); # mt-13-11
my $wort_vom_reich = $gl->add_vertical_line(); # mt-13-19

my $reich_der_himmel_gleich_menschen = $gl->add_vertical_line(); # mt-13-24
my $reich_der_himmel_gleich_senfkorn = $gl->add_vertical_line(); # mt-13-31
my $reich_der_himmel_gleich_sauerteig = $gl->add_vertical_line(); # mt-13-33
my $reich_der_himmel_gleich_schatz = $gl->add_vertical_line(); # mt-13-44
my $reich_der_himmel_gleich_kaufmann = $gl->add_vertical_line(); # mt-13-45
my $reich_der_himmel_gleich_netz = $gl->add_vertical_line(); # mt-13-47

my $gleichnisse_ende    = $gl->add_vertical_line();

my $kein_zeichen_2     = $gl->add_vertical_line(); # mt-16-4

$gap = $gl->add_vertical_track();
my $petrus_schluessel    = $gl->add_vertical_line(); # mt-16-19

$gap = $gl->add_vertical_track();
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

# $gap = $gl->add_vertical_track();

my $verschliest_reich            = $gl->add_vertical_line();

my $endzeitrede_start            = $gl->add_vertical_line();
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

my $grober_ablauf       = $gl->add_horizontal_track();
my $v_gap_1             = $gl->add_horizontal_track();
my $reich_big_pict      = $gl->add_horizontal_track();
my $v_gap_2             = $gl->add_horizontal_track();

my $tr_reich_1               = $gl->add_horizontal_track();
my $tr_reich_2               = $gl->add_horizontal_track();
my $tr_reich_3               = $gl->add_horizontal_track();

my $v_gap_3             = $gl->add_horizontal_track();
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

my
$area = $tr_reich_1        ->area($joh_tut_busse      , $joh_tut_busse->next_line(9)      );
$area ->{text} = 'J.d.T: Tut Busse, Reich Nahe';
$area->{point_in_time} = 1;


$area = $tr_reich_2        ->area($teufel_zeigt_reiche, $teufel_zeigt_reiche->next_line(7)         );
$area ->{text} = 'Teufel zeigt Reiche';
$area ->{point_in_time} = 1;

$area = $tr_reich_3        ->area($jesus_tut_busse, $jesus_tut_busse->next_line(12));
$area ->{text} = 'Jesus: Tut Busse, Reich Nahe (Mt 4:17)';
$area ->{point_in_time} = 1;

$tr_gleichnis_1->area($bergpredigt_start, $bergpredigt_ende )->{text} = 'Bergpredigt (Mt 5-7)';

$area  = $tr_gleichnis_2->area($glueckselig, $glueckselig->next_line(10));
$area ->{text} = 'Glückselig, … denn ihrer ist das Reich (Mt 5:3)';
$area ->{point_in_time} = 1;

$area  = $tr_gleichnis_3->area($glueckselig_2, $glueckselig_2->next_line(9));
$area ->{text} = 'Glückselig, … denn ihrer ist das Reich (Mt 5:10)';
$area ->{point_in_time} = 1;

$area  = $tr_gleichnis_4->area($gerechtigkeit, $gerechtigkeit->next_line(9));
$area ->{text} = 'Gerechtigkeit (Mt 5:20)';
$area ->{point_in_time} = 1;

$area  = $tr_gleichnis_5->area($betet, $betet->next_line(10));
$area ->{text} = 'Betet: R. komme (Mt 6:9) … Denn dein ist das Reich (6:13) ';
$area ->{point_in_time} = 1;

$area  = $tr_gleichnis_6->area($trachtet_zuerst, $trachtet_zuerst->next_line(9));
$area ->{text} = 'Trachtet zuerst nach R.G. (Mt 6:33)';
$area ->{point_in_time} = 1;

$area  = $tr_gleichnis_7->area($herr_herr, $herr_herr->next_line(5));
$area ->{text} = 'nicht jeder, der Herr, Herr sagt … (Mt 7:21)';
$area ->{point_in_time} = 1;

$area  = $tr_reich_1        ->area($sprecht_reich_nahe, $sprecht_reich_nahe->next_line(16)); ### Note: next_line(4)
$area ->{text} = 'Aussendung der 12. Sprecht: Reich nahe. Heilt, reinigt, auferweckt, treibt aus … (Mt 10:7 ff)';
$area ->{point_in_time} = 1;

$area  = $tr_todo        ->area($wehe, $wehe->next_line(3)); ### Note: next_line(3)
$area ->{text} = 'Wehe Chorazin … (Mt 11:21 ff)';
$area ->{point_in_time} = 1;

$area  = $tr_todo_2      ->area($pharisaeer_ueberlegen_ermordung, $pharisaeer_ueberlegen_ermordung->next_line(3));
$area ->{text} = 'Pharisäer überlegen Ermordung (Mt 12:14)';
$area ->{point_in_time} = 1;

$area = $tr_reich_2        ->area($reich_nahe, $reich_nahe->next_line(5));
$area ->{text} = 'Wenn ich … austreibe, … Reich nahe (Mt 12:28)';
$area ->{point_in_time} = 1;

$area = $tr_heilung_1        ->area($kein_zeichen, $kein_zeichen->next_line(3));
$area ->{text} = 'Kein Zeichen ausser Jonas\' (Mt 12:39)';
$area ->{point_in_time} = 1;

$area = $tr_heilung_1        ->area($kein_zeichen_2, $kein_zeichen_2->next_line(3));
$area ->{text} = 'Kein Zeichen ausser Jonas\' (Mt 16:4)';
$area ->{point_in_time} = 1;

$area = $tr_reich_1        ->area($petrus_schluessel, $petrus_schluessel->next_line(3));
$area ->{text} = 'Petrus erhält die Schl. d. R. (Mt 16:19)';
$area ->{point_in_time} = 1;

$area = $tr_reich_2        ->area($koenig_rechnet_ab, $koenig_rechnet_ab->next_line(3));
$area ->{text} = 'R. einem König gl. gew., der mit seinem Knechten abrechnet (Mt 18:23)';
$area ->{point_in_time} = 1;

$area = $tr_reich_3        ->area($kindlein, $kindlein->next_line(3));
$area ->{text} = 'Lasst die Kindlein zu mir kommen… ihrer ist das Reich Gottes. (Mt 19:14)';
$area ->{point_in_time} = 1;

$area = $tr_reich_1        ->area($reicher_reich, $reicher_reich->next_line(3));
$area ->{text} = 'Ein Reicher kommt schwer ins Reich d. Himmer (Mt 19:23)';
$area ->{point_in_time} = 1;

$area = $tr_gleichnis_4        ->area($reich_weggenommen, $reich_weggenommen->next_line(6)); #### Note next_line(6)
$area ->{text} = 'R. wird weggenommen und Nation gegeben, die Früchte bringt (Mt 21:43)';
$area ->{point_in_time} =1;

$area = $tr_reich_2        ->area($reich_auf_erdkreis_gepredigt, $reich_auf_erdkreis_gepredigt->next_line(3));
$area ->{text} = 'Reich wird auf ganzem Erdkreis gepredigt, dann Ende (Mt 24:14)';
$area ->{point_in_time} = 1;

$area = $tr_gleichnis_2 ->area($gleichnis_2_kinder, $gleichnis_2_kinder->next_line(5));
$area-> {text} = 'Gleichnis: 2 Kinder, Weinberg (Mt 21:28-32)';
$area ->{point_in_time} = 1;

$area = $tr_gleichnis_3->area($weingaertner_toeten_sohn, $weingaertner_toeten_sohn->next_line(5));
$area-> {text} = 'Gleichnis: Weingärtner töten Sohn (Mt 21:33-42) (Beachte die Früchte in Mt 21:34/41/43)';
$area-> {point_in_time} = 1;

$area = $tr_heilung_1 ->area($aussaetziger_wird_geheilt, $aussaetziger_wird_geheilt->next_line(3));
$area -> {text} = 'Aussätziger wird geheilt (Mt 8:2-4)';
$area -> {point_in_time} = 1;

$area = $tr_heilung_2 ->area($hauptmann_start, $hauptmann_start->next_line(5));
$area -> {text} = 'Knecht des Hauptmanns wird geheilt (Mt 8:5-13)';
$area ->{point_in_time} = 1;

$area = $tr_glaube_1->area($glaube_in_isreal, $glaube_in_isreal->next_line(5));
$area->{text}='In Israel nicht solchen Glauben gefunden (Mt 8:10)';
$area->{point_in_time} = 1;

$area = $tr_glaube_2->area($gelaehmter_glaubt_suenden_vergeben, $gelaehmter_glaubt_suenden_vergeben->next_line(5)); ## Note next_line(5)
$area->{text}='Gelähmter glaubt, Sünden vergeben (Mt 9:2)';
$area->{point_in_time} = 1;

$area = $tr_todo->area($matthaeus, $matthaeus->next_line(5)); ## Note next_line(5)
$area->{text} = 'Matthäus, folge mir nach';
$area->{point_in_time} = 1;

$area = $tr_glaube_3->area($blutfluessige_frau, $blutfluessige_frau->next_line(5));
$area->{text} = 'Blutflüssige Frau, dein Glaube hat dich geheilt (Mt 9:22)';
$area->{point_in_time} = 1;

$area = $tr_glaube_1->area($blinde_glauben, $blinde_glauben->next_line(5));
$area->{text} = 'Blinden geschieht nach ihrem Glauben (Mt 9:28)';
$area->{point_in_time} = 1;

$area = $tr_todo_2->area($daemon_austreibung_niemals_israel, $daemon_austreibung_niemals_israel->next_line(5));
$area->{text} = 'Dämon ausgetrieben, niemals in Israel gesehen (Mt 9:33)';
$area->{point_in_time} = 1;

$area = $tr_todo_3->area($ernte_gross_wenige_arbeiter, $ernte_gross_wenige_arbeiter->next_line(5));
$area->{text} = 'Ernte gross, aber wenig Arbeiter (Mt 9:37)';
$area->{point_in_time} = 1;

$reich_big_pict->area($jesus_predigt_reich_start, $jesus_predigt_reich_ende)->{text} =
  'Und Jesus zog … umher, lehrte in ihren Synagogen und predigte das Evangelium des Reiches und heilte jede Krankheit und jedes Gebrechen … . (Mt 4:23 und 9:35)';

$area = $tr_gleichnis_1->area($feigenbaum_ohne_frucht, $feigenbaum_ohne_frucht->next_line(7));
$area -> {text} = 'Feigenbaum ohne Frucht (Mt 21:19-43, Vgl Mt 24:32)';
$area -> {point_in_time} = 1;

$tr_gleichnis_1->area($gleichnisse_start, $gleichnisse_ende )->{text} = 'Gleichnisse (Mt 13)';

$area = $tr_gleichnis_2->area($ihr_versteht_gleichnisse, $ihr_versteht_gleichnisse->next_line(10));
$area->{text} = 'Ihr versteht Gleichnisse (Mt 13:11)';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_3->area($wort_vom_reich, $wort_vom_reich->next_line(10));
$area->{text} = 'So oft jemand das Wort vom Reich hört (Mt 13:19)';
$area->{point_in_time} = 1;


$area = $tr_gleichnis_4->area($reich_der_himmel_gleich_menschen, $reich_der_himmel_gleich_menschen->next_line(9));
$area->{text} = '… gleich einem säenden Menschen (Mt 13:24)';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_5->area($reich_der_himmel_gleich_senfkorn, $reich_der_himmel_gleich_senfkorn->next_line(9));
$area->{text} = '… einem Senfkorn (Mt 13:31)';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_6->area($reich_der_himmel_gleich_sauerteig, $reich_der_himmel_gleich_sauerteig->next_line(5));
$area->{text} = '… Sauerteig (Mt 13:33)';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_7->area($reich_der_himmel_gleich_schatz, $reich_der_himmel_gleich_schatz->next_line(5));
$area->{text} = '… Sauerteig (Mt 13:44)';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_8->area($reich_der_himmel_gleich_kaufmann, $reich_der_himmel_gleich_kaufmann->next_line(5));
$area->{text} = '… Kaufmann (Mt 13:45)';
$area->{point_in_time} = 1;

$area = $tr_gleichnis_9->area($reich_der_himmel_gleich_netz, $reich_der_himmel_gleich_netz->next_line(5));
$area->{text} = '… Netz (Mt 13:47)';
$area->{point_in_time} = 1;



$grober_ablauf->area($endzeitrede_start, $endzeitrede_ende )->{text} = 'Endzeitrede (Mt 24:1-39)';
$area = $tr_todo ->area($verschliest_reich, $verschliest_reich->next_line(7) );
$area->{text} = 'Wehe, ihr verschliest das Reich';
$area->{point_in_time} = 1;

$area = $weiteres->area($feigenbaum_schlaegt_aus, $feigenbaum_schlaegt_aus->next_line(3) );
$area ->{text} = 'Feigenbaum schlägt aus (Mt 24:32, vgl Mt 21:19)';
$area ->{point_in_time} = 1;

$tr_gleichnis_1->area($gl_jungrauen_start, $gl_jungrauen_ende)->{text} = 'Reich d. Himmel gleich 10 Jungfrauen (Mt 25:1-13)';
$area = $tr_gleichnis_2->area($braeutigam_verzieht, $braeutigam_verzieht->next_line(4));
$area ->{text} = 'Als aber der Bräutigam verzog (Mt 25:5)';;
$area ->{point_in_time} = 1;

$area = $tr_gleichnis_3->area($wisst_weder_tag_noch_stunde, $wisst_weder_tag_noch_stunde->next_line(3));
$area ->{text} = 'Wisst weder Tag noch Stunde (Mt 25:13)';
$area ->{point_in_time} = 1;

$tr_gleichnis_4->area($gl_jungrauen_ende, $gl_knechte_talente_end)->{text} = 'Knechte erhalten Talente (Mt 25:14-30)';

$area = $tr_gleichnis_5->area($nach_langer_zeit, $nach_langer_zeit->next_line(5));
$area->{text} = 'Nach langer Zeit kommt der Herr und hält Rechnung (Mt 25:19)';
$area->{point_in_time} = 1;

$grober_ablauf->area($wenn_sohn_kommt_start, $wenn_sohn_kommt_ende)->{text} = 'Wenn aber der Sohn kommt … (Mt 25:31-46)';

$area=$reich_big_pict->area($ererbt_reich, $ererbt_reich->next_line(5));
$area->{text} = 'Ererbt Reich (Mt 25:34)';
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

        my $style = "border$left: 4px solid red";

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

</head>
<body style='width: 300%'>
<table class='border-collapse: collapse; border-spacing: 0' border=1>
$html
</table>
</body>
</html>";
close $out;
