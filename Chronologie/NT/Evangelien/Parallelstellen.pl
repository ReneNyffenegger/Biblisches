#!/usr/bin/perl
use warnings;
use strict;

use Grid::Layout;
use Grid::Layout::Render;


my $gl = Grid::Layout->new();

my $joh_tut_busse       = $gl->add_vertical_track(); # 
my $gap_0               = $gl->add_vertical_track();

my $teufel_zeigt_reiche = $gl->add_vertical_track(); #  mt-4-8
my $gap_teufel          = $gl->add_vertical_track();

my $jesus_tut_busse     = $gl->add_vertical_track(); # mt-4-17

my $jesus_predigt_reich_start = $gl->add_vertical_track(); # mt-4-23

my $bergpredigt_start   = $gl->add_vertical_track(); # mt-5-1

my $glueckselig         = $gl->add_vertical_track();

my $bergpredigt_ende    = $gl->add_vertical_track();
my
$gap = $gl->add_vertical_track();

my $aussaetziger_wird_geheilt = $gl->add_vertical_track();

my $hauptmann_start = $gl->add_vertical_track();
my $hauptmann_ende = $gl->add_vertical_track();

$gap = $gl->add_vertical_track();

my $jesus_predigt_reich_ende = $gl->add_vertical_track(); # mt-9-35

$gap = $gl->add_vertical_track();

my $sprecht_reich_nahe       = $gl->add_vertical_track(); # mt-10-7

$gap = $gl->add_vertical_track();
my $reich_nahe          = $gl->add_vertical_track(); # mt-12-28
$gap = $gl->add_vertical_track();


my $gleichnisse_start   = $gl->add_vertical_track(); # mt-13-1
my $gleichnisse_ende    = $gl->add_vertical_track();

$gap = $gl->add_vertical_track();
my $petrus_schluessel    = $gl->add_vertical_track();

$gap = $gl->add_vertical_track();
my $koenig_rechnet_ab    = $gl->add_vertical_track();

$gap = $gl->add_vertical_track();
my $kindlein    = $gl->add_vertical_track();

$gap = $gl->add_vertical_track();
my $reicher_reich    = $gl->add_vertical_track();

$gap = $gl->add_vertical_track();
my $feigenbaum_ohne_frucht= $gl->add_vertical_track();
my $gleichnis_2_kinder    = $gl->add_vertical_track();
my $weingaertner_toeten_sohn= $gl->add_vertical_track();
my $reich_weggenommen       = $gl->add_vertical_track();

$gap = $gl->add_vertical_track();
my $endzeitrede_start            = $gl->add_vertical_track();
my $reich_auf_erdkreis_gepredigt = $gl->add_vertical_track();
my $feigenbaum_schlaegt_aus      = $gl->add_vertical_track();
my $endzeitrede_ende             = $gl->add_vertical_track();

$gap = $gl->add_vertical_track();

my $gl_jungrauen_start           = $gl->add_vertical_track();
my $braeutigam_verzieht          = $gl->add_vertical_track();
my $wisst_weder_tag_noch_stunde  = $gl->add_vertical_track();
my $gl_jungrauen_ende            = $gl->add_vertical_track();

my $gl_knechte_talente_start     = $gl->add_vertical_track();
my $nach_langer_zeit             = $gl->add_vertical_track();
my $gl_knechte_talente_end       = $gl->add_vertical_track();

my $wenn_sohn_kommt_start        = $gl->add_vertical_track();
my $ererbt_reich                 = $gl->add_vertical_track();
my $wenn_sohn_kommt_ende         = $gl->add_vertical_track();

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


$tr_reich_1        ->area($joh_tut_busse      , $joh_tut_busse      )->{html} = 'J.d.T: Tut Busse, Reich Nahe';
$tr_reich_2        ->area($teufel_zeigt_reiche, $gap_teufel         )->{html} = 'Teufel zeigt Reiche';
$tr_reich_3        ->area($jesus_tut_busse, $jesus_tut_busse        )->{html} = 'Jesus: Tut Busse, Reich Nahe';
$tr_reich_1        ->area($glueckselig, $glueckselig)->{html} = 'Glückselig, … denn ihrer ist das Reich (Mt 5:3)';
$tr_reich_1        ->area($sprecht_reich_nahe, $sprecht_reich_nahe)->{html} = 'Sprecht: Reich nahe (Mt 10:7)';
$tr_reich_1        ->area($reich_nahe, $reich_nahe)->{html} = 'Wenn ich … austreibe, … Reich nahe (Mt 12:28)';
$tr_reich_1        ->area($petrus_schluessel, $petrus_schluessel)->{html} = 'Petrus erhält die Schl. d. R. (Mt 16:19)';
$tr_reich_1        ->area($koenig_rechnet_ab, $koenig_rechnet_ab)->{html} = 'R. einem König gl. gew., der mit seinem Knechten abrechnet (Mt 18:23)';
$tr_reich_1        ->area($kindlein, $kindlein)->{html} = 'Lasst die Kindlein zu mir kommen… ihrer ist das Reich Gottes. (Mt 19:14)';
$tr_reich_1        ->area($reicher_reich, $reicher_reich)->{html} = 'Ein Reicher kommt schwer ins Reich d. Himmer (Mt 19:23)';
$tr_reich_1        ->area($reich_weggenommen, $reich_weggenommen)->{html} = 'Das Reich wird weggenommen und anderer Nation gegeben, die Früchte bringt (Mt 21:43)';
$tr_reich_1        ->area($reich_auf_erdkreis_gepredigt, $reich_auf_erdkreis_gepredigt)->{html} = 'Reich wird auf ganzem Erdkreis gepredigt, dann Ende (Mt 24:14)';

$weiteres ->area($gleichnis_2_kinder, $gleichnis_2_kinder) -> {html} = 'Gleichnis: 2 Kinder, Weinberg (Mt 21:28-32)';
$weiteres ->area($weingaertner_toeten_sohn, $weingaertner_toeten_sohn) -> {html} = 'Gleichnis: Weingärtner töten Sohn (Mt 21:33-42)';

$weiteres ->area($aussaetziger_wird_geheilt, $aussaetziger_wird_geheilt)  -> {html} = 'Aussätziger wird geheilt (Mt 8:2-4)';
$weiteres ->area($hauptmann_start, $hauptmann_ende)  -> {html} = 'Knecht des Hauptmanns wird geheilt (Mt 8:5-13)';


$reich_big_pict->area($jesus_predigt_reich_start, $jesus_predigt_reich_ende)->{html} = 'Jesus predigt Reich (Mt 4:23-9:35)';
$reich_big_pict->area($feigenbaum_ohne_frucht, $reich_weggenommen) -> {html} = 'Feigenbaum ohne Frucht (Mt 21:19-43, Vgl Mt 24:32)';

$grober_ablauf->area($bergpredigt_start, $bergpredigt_ende )->{html} = 'Bergpredigt (Mt 5-7)';
$grober_ablauf->area($gleichnisse_start, $gleichnisse_ende )->{html} = 'Gleichnisse (Mt 13)';
$grober_ablauf->area($endzeitrede_start, $endzeitrede_ende )->{html} = 'Endzeitrede (Mt 24:1-39)';
$weiteres->area($feigenbaum_schlaegt_aus, $feigenbaum_schlaegt_aus )->{html} = 'Feigenbaum schlägt aus (Mt 24:32, vgl Mt 21:19)';

$grober_ablauf->area($gl_jungrauen_start, $gl_jungrauen_ende)->{html} = 'Reich d. Himmel gleich 10 Jungfrauen (Mt 25:1-13)';
$reich_big_pict->area($braeutigam_verzieht, $braeutigam_verzieht)->{html} = 'Als aber der Bräutigam verzog (Mt 25:5)';
$reich_big_pict->area($wisst_weder_tag_noch_stunde, $wisst_weder_tag_noch_stunde)->{html} = 'Wisst weder Tag noch Stunde (Mt 25:13)';

$grober_ablauf->area($gl_knechte_talente_start, $gl_knechte_talente_end)->{html} = 'Knechte erhalten Talente (Mt 25:14-30)';
$reich_big_pict->area($nach_langer_zeit, $nach_langer_zeit)->{html} = 'Nach langer Zeit kommt der Herr und hält Rechnung (Mt 25:19)';

$grober_ablauf->area($wenn_sohn_kommt_start, $wenn_sohn_kommt_ende)->{html} = 'Wenn aber der Sohn kommt … (Mt 25:34-46)';
$reich_big_pict->area($ererbt_reich, $ererbt_reich)->{html} = 'Ererbt Reich (Mt 25:34)';

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

        $html .= "<td colspan='$width' rowspan='$height' style='border:4px solid red'>";
        $html .= $area->{html};
#       $html .= $cell->x . '/' . $cell->y . ' (' . $width . 'x' . $height . ')';
        $html .= "</td>";
      }
    }
    else {
        $html .= "<td>";
        $html .= "&nbsp;";
#       $html .= $cell->x . '/' . $cell->y;
        $html .= "</td>";
    }
  },
  sub {
    
    $html .= "</tr>";
  }
);


open (my $out, '>', 'Parallelstellen.html') or die;
print $out "<html>
<head>
<title>Matthäusevangeilum / Reich Gottes</title>
</head>
<body style='width: 500%'>
<table class='border-collapse: collapse; border-spacing: 0' border=1>
$html
</table>
</body>
</html>";
close $out;
