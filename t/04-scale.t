# Test Geo::Ellipsoid scale

use v6;
use Test;
use lib <./lib ../lib ../../lib>;

use Geo::Ellipsoid;

# This original Perl 5 test used the following test functions (the
# resulting Perl 6 versions are shown after the fat comma):
#
#   delta_ok => is-approx($a, $b, :$rel-tol)
#
#  From the Perl 5 test file:
#    use Test::Number::Delta relative => 1e-6;
#  which translates to:
my $rel-tol = 1e-6;

plan 180;

my $e = Geo::Ellipsoid.new(units => 'degrees');
my ($xs, $ys);

($ys, $xs) = $e.scales(0);
is-approx($xs, 111319.490793274, :$abs-tol);
is-approx($ys, 110574.275821594, :$abs-tol);

($ys, $xs) = $e.scales(1);
is-approx($xs, 111302.649769732, :$abs-tol);
is-approx($ys, 110574.614016816, :$abs-tol);

($ys, $xs) = $e.scales(2);
is-approx($xs, 111252.131520103, :$abs-tol);
is-approx($ys, 110575.628200778, :$abs-tol);

($ys, $xs) = $e.scales(3);
is-approx($xs, 111167.950506731, :$abs-tol);
is-approx($ys, 110577.317168814, :$abs-tol);

($ys, $xs) = $e.scales(4);
is-approx($xs, 111050.130831399, :$abs-tol);
is-approx($ys, 110579.678914611, :$abs-tol);

($ys, $xs) = $e.scales(5);
is-approx($xs, 110898.706232127, :$abs-tol);
is-approx($ys, 110582.710632409, :$abs-tol);

($ys, $xs) = $e.scales(6);
is-approx($xs, 110713.720078689, :$abs-tol);
is-approx($ys, 110586.408720072, :$abs-tol);

($ys, $xs) = $e.scales(7);
is-approx($xs, 110495.225366811, :$abs-tol);
is-approx($ys, 110590.768783042, :$abs-tol);

($ys, $xs) = $e.scales(8);
is-approx($xs, 110243.284711052, :$abs-tol);
is-approx($ys, 110595.785639154, :$abs-tol);

($ys, $xs) = $e.scales(9);
is-approx($xs, 109957.970336344, :$abs-tol);
is-approx($ys, 110601.453324332, :$abs-tol);

($ys, $xs) = $e.scales(10);
is-approx($xs, 109639.364068153, :$abs-tol);
is-approx($ys, 110607.765099137, :$abs-tol);

($ys, $xs) = $e.scales(11);
is-approx($xs, 109287.557321245, :$abs-tol);
is-approx($ys, 110614.713456187, :$abs-tol);

($ys, $xs) = $e.scales(12);
is-approx($xs, 108902.651087025, :$abs-tol);
is-approx($ys, 110622.290128422, :$abs-tol);

($ys, $xs) = $e.scales(13);
is-approx($xs, 108484.755919402, :$abs-tol);
is-approx($ys, 110630.486098225, :$abs-tol);

($ys, $xs) = $e.scales(14);
is-approx($xs, 108033.991919153, :$abs-tol);
is-approx($ys, 110639.291607378, :$abs-tol);

($ys, $xs) = $e.scales(15);
is-approx($xs, 107550.488716736, :$abs-tol);
is-approx($ys, 110648.696167862, :$abs-tol);

($ys, $xs) = $e.scales(16);
is-approx($xs, 107034.385453513, :$abs-tol);
is-approx($ys, 110658.688573475, :$abs-tol);

($ys, $xs) = $e.scales(17);
is-approx($xs, 106485.830761325, :$abs-tol);
is-approx($ys, 110669.256912276, :$abs-tol);

($ys, $xs) = $e.scales(18);
is-approx($xs, 105904.982740377, :$abs-tol);
is-approx($ys, 110680.388579831, :$abs-tol);

($ys, $xs) = $e.scales(19);
is-approx($xs, 105292.008935377, :$abs-tol);
is-approx($ys, 110692.070293263, :$abs-tol);

($ys, $xs) = $e.scales(20);
is-approx($xs, 104647.086309862, :$abs-tol);
is-approx($ys, 110704.288106085, :$abs-tol);

($ys, $xs) = $e.scales(21);
is-approx($xs, 103970.401218673, :$abs-tol);
is-approx($ys, 110717.027423818, :$abs-tol);

($ys, $xs) = $e.scales(22);
is-approx($xs, 103262.149378494, :$abs-tol);
is-approx($ys, 110730.273020361, :$abs-tol);

($ys, $xs) = $e.scales(23);
is-approx($xs, 102522.535836412, :$abs-tol);
is-approx($ys, 110744.00905512, :$abs-tol);

($ys, $xs) = $e.scales(24);
is-approx($xs, 101751.774936417, :$abs-tol);
is-approx($ys, 110758.21909087, :$abs-tol);

($ys, $xs) = $e.scales(25);
is-approx($xs, 100950.090283789, :$abs-tol);
is-approx($ys, 110772.88611234, :$abs-tol);

($ys, $xs) = $e.scales(26);
is-approx($xs, 100117.714707292, :$abs-tol);
is-approx($ys, 110787.992545504, :$abs-tol);

($ys, $xs) = $e.scales(27);
is-approx($xs, 99254.890219118, :$abs-tol);
is-approx($ys, 110803.520277558, :$abs-tol);

($ys, $xs) = $e.scales(28);
is-approx($xs, 98361.8679724994, :$abs-tol);
is-approx($ys, 110819.450677574, :$abs-tol);

($ys, $xs) = $e.scales(29);
is-approx($xs, 97438.9082169266, :$abs-tol);
is-approx($ys, 110835.764617804, :$abs-tol);

($ys, $xs) = $e.scales(30);
is-approx($xs, 96486.2802508965, :$abs-tol);
is-approx($ys, 110852.442495617, :$abs-tol);

($ys, $xs) = $e.scales(31);
is-approx($xs, 95504.2623721221, :$abs-tol);
is-approx($ys, 110869.464256056, :$abs-tol);

($ys, $xs) = $e.scales(32);
is-approx($xs, 94493.1418251297, :$abs-tol);
is-approx($ys, 110886.809414981, :$abs-tol);

($ys, $xs) = $e.scales(33);
is-approx($xs, 93453.2147461739, :$abs-tol);
is-approx($ys, 110904.457082788, :$abs-tol);

($ys, $xs) = $e.scales(34);
is-approx($xs, 92384.7861053995, :$abs-tol);
is-approx($ys, 110922.385988675, :$abs-tol);

($ys, $xs) = $e.scales(35);
is-approx($xs, 91288.1696461796, :$abs-tol);
is-approx($ys, 110940.574505431, :$abs-tol);

($ys, $xs) = $e.scales(36);
is-approx($xs, 90163.6878215616, :$abs-tol);
is-approx($ys, 110959.000674728, :$abs-tol);

($ys, $xs) = $e.scales(37);
is-approx($xs, 89011.6717277532, :$abs-tol);
is-approx($ys, 110977.642232884, :$abs-tol);

($ys, $xs) = $e.scales(38);
is-approx($xs, 87832.461034582, :$abs-tol);
is-approx($ys, 110996.476637075, :$abs-tol);

($ys, $xs) = $e.scales(39);
is-approx($xs, 86626.4039128637, :$abs-tol);
is-approx($ys, 111015.481091969, :$abs-tol);

($ys, $xs) = $e.scales(40);
is-approx($xs, 85393.8569586184, :$abs-tol);
is-approx($ys, 111034.632576751, :$abs-tol);

($ys, $xs) = $e.scales(41);
is-approx($xs, 84135.1851140718, :$abs-tol);
is-approx($ys, 111053.907872507, :$abs-tol);

($ys, $xs) = $e.scales(42);
is-approx($xs, 82850.7615853864, :$abs-tol);
is-approx($ys, 111073.283589948, :$abs-tol);

($ys, $xs) = $e.scales(43);
is-approx($xs, 81540.9677570662, :$abs-tol);
is-approx($ys, 111092.736197432, :$abs-tol);

($ys, $xs) = $e.scales(44);
is-approx($xs, 80206.1931029833, :$abs-tol);
is-approx($ys, 111112.242049253, :$abs-tol);

($ys, $xs) = $e.scales(45);
is-approx($xs, 78846.8350939781, :$abs-tol);
is-approx($ys, 111131.777414176, :$abs-tol);

($ys, $xs) = $e.scales(46);
is-approx($xs, 77463.2991019873, :$abs-tol);
is-approx($ys, 111151.318504168, :$abs-tol);

($ys, $xs) = $e.scales(47);
is-approx($xs, 76055.9983006586, :$abs-tol);
is-approx($ys, 111170.841503309, :$abs-tol);

($ys, $xs) = $e.scales(48);
is-approx($xs, 74625.3535624143, :$abs-tol);
is-approx($ys, 111190.322596824, :$abs-tol);

($ys, $xs) = $e.scales(49);
is-approx($xs, 73171.7933519306, :$abs-tol);
is-approx($ys, 111209.738000236, :$abs-tol);

($ys, $xs) = $e.scales(50);
is-approx($xs, 71695.753616003, :$abs-tol);
is-approx($ys, 111229.063988562, :$abs-tol);

($ys, $xs) = $e.scales(51);
is-approx($xs, 70197.6776697733, :$abs-tol);
is-approx($ys, 111248.276925556, :$abs-tol);

($ys, $xs) = $e.scales(52);
is-approx($xs, 68678.0160792985, :$abs-tol);
is-approx($ys, 111267.353292927, :$abs-tol);

($ys, $xs) = $e.scales(53);
is-approx($xs, 67137.2265404469, :$abs-tol);
is-approx($ys, 111286.269719523, :$abs-tol);

($ys, $xs) = $e.scales(54);
is-approx($xs, 65575.7737541096, :$abs-tol);
is-approx($ys, 111305.003010423, :$abs-tol);

($ys, $xs) = $e.scales(55);
is-approx($xs, 63994.1292977257, :$abs-tol);
is-approx($ys, 111323.530175906, :$abs-tol);

($ys, $xs) = $e.scales(56);
is-approx($xs, 62392.7714931183, :$abs-tol);
is-approx($ys, 111341.828460265, :$abs-tol);

($ys, $xs) = $e.scales(57);
is-approx($xs, 60772.1852706498, :$abs-tol);
is-approx($ys, 111359.875370412, :$abs-tol);

($ys, $xs) = $e.scales(58);
is-approx($xs, 59132.8620297075, :$abs-tol);
is-approx($ys, 111377.64870425, :$abs-tol);

($ys, $xs) = $e.scales(59);
is-approx($xs, 57475.2994955351, :$abs-tol);
is-approx($ys, 111395.12657876, :$abs-tol);

($ys, $xs) = $e.scales(60);
is-approx($xs, 55800.0015724362, :$abs-tol);
is-approx($ys, 111412.287457779, :$abs-tol);

($ys, $xs) = $e.scales(61);
is-approx($xs, 54107.4781933752, :$abs-tol);
is-approx($ys, 111429.110179413, :$abs-tol);

($ys, $xs) = $e.scales(62);
is-approx($xs, 52398.2451660134, :$abs-tol);
is-approx($ys, 111445.573983052, :$abs-tol);

($ys, $xs) = $e.scales(63);
is-approx($xs, 50672.8240152185, :$abs-tol);
is-approx($ys, 111461.65853596, :$abs-tol);

($ys, $xs) = $e.scales(64);
is-approx($xs, 48931.7418220956, :$abs-tol);
is-approx($ys, 111477.343959384, :$abs-tol);

($ys, $xs) = $e.scales(65);
is-approx($xs, 47175.5310595919, :$abs-tol);
is-approx($ys, 111492.610854148, :$abs-tol);

($ys, $xs) = $e.scales(66);
is-approx($xs, 45404.7294247327, :$abs-tol);
is-approx($ys, 111507.440325702, :$abs-tol);

($ys, $xs) = $e.scales(67);
is-approx($xs, 43619.8796675553, :$abs-tol);
is-approx($ys, 111521.814008585, :$abs-tol);

($ys, $xs) = $e.scales(68);
is-approx($xs, 41821.5294168082, :$abs-tol);
is-approx($ys, 111535.714090256, :$abs-tol);

($ys, $xs) = $e.scales(69);
is-approx($xs, 40010.2310024944, :$abs-tol);
is-approx($ys, 111549.12333427, :$abs-tol);

($ys, $xs) = $e.scales(70);
is-approx($xs, 38186.5412753387, :$abs-tol);
is-approx($ys, 111562.025102756, :$abs-tol);

($ys, $xs) = $e.scales(71);
is-approx($xs, 36351.0214232683, :$abs-tol);
is-approx($ys, 111574.403378166, :$abs-tol);

($ys, $xs) = $e.scales(72);
is-approx($xs, 34504.2367849983, :$abs-tol);
is-approx($ys, 111586.242784253, :$abs-tol);

($ys, $xs) = $e.scales(73);
is-approx($xs, 32646.7566608212, :$abs-tol);
is-approx($ys, 111597.52860626, :$abs-tol);

($ys, $xs) = $e.scales(74);
is-approx($xs, 30779.1541207048, :$abs-tol);
is-approx($ys, 111608.246810274, :$abs-tol);

($ys, $xs) = $e.scales(75);
is-approx($xs, 28902.0058098066, :$abs-tol);
is-approx($ys, 111618.38406172, :$abs-tol);

($ys, $xs) = $e.scales(76);
is-approx($xs, 27015.8917515192, :$abs-tol);
is-approx($ys, 111627.927742966, :$abs-tol);

($ys, $xs) = $e.scales(77);
is-approx($xs, 25121.3951481649, :$abs-tol);
is-approx($ys, 111636.865970013, :$abs-tol);

($ys, $xs) = $e.scales(78);
is-approx($xs, 23219.1021794639, :$abs-tol);
is-approx($ys, 111645.187608236, :$abs-tol);

($ys, $xs) = $e.scales(79);
is-approx($xs, 21309.6017989022, :$abs-tol);
is-approx($ys, 111652.882287157, :$abs-tol);

($ys, $xs) = $e.scales(80);
is-approx($xs, 19393.4855281322, :$abs-tol);
is-approx($ys, 111659.940414223, :$abs-tol);

($ys, $xs) = $e.scales(81);
is-approx($xs, 17471.3472495414, :$abs-tol);
is-approx($ys, 111666.35318757, :$abs-tol);

($ys, $xs) = $e.scales(82);
is-approx($xs, 15543.7829971289, :$abs-tol);
is-approx($ys, 111672.112607742, :$abs-tol);

($ys, $xs) = $e.scales(83);
is-approx($xs, 13611.3907458309, :$abs-tol);
is-approx($ys, 111677.211488361, :$abs-tol);

($ys, $xs) = $e.scales(84);
is-approx($xs, 11674.7701994437, :$abs-tol);
is-approx($ys, 111681.64346572, :$abs-tol);

($ys, $xs) = $e.scales(85);
is-approx($xs, 9734.52257729095, :$abs-tol);
is-approx($ys, 111685.403007281, :$abs-tol);

($ys, $xs) = $e.scales(86);
is-approx($xs, 7791.25039978636, :$abs-tol);
is-approx($ys, 111688.485419075, :$abs-tol);

($ys, $xs) = $e.scales(87);
is-approx($xs, 5845.55727304685, :$abs-tol);
is-approx($ys, 111690.886851982, :$abs-tol);

($ys, $xs) = $e.scales(88);
is-approx($xs, 3898.04767271025, :$abs-tol);
is-approx($ys, 111692.604306881, :$abs-tol);

($ys, $xs) = $e.scales(89);
is-approx($xs, 1949.32672711493, :$abs-tol);
is-approx($ys, 111693.635638667, :$abs-tol);
