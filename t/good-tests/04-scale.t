#!/usr/bin/env perl6
# Test Geo::Ellipsoid scale

use v6;
use Test;
use lib './lib';
use lib '../lib';

use Geo::Ellipsoid;

plan 180;

my $e = Geo::Ellipsoid.new(units => 'degrees');
my ($xs, $ys);

($ys, $xs) = $e.scales(0);
is_approx($xs, 111319.490793274);
is_approx($ys, 110574.275821594);

($ys, $xs) = $e.scales(1);
is_approx($xs, 111302.649769732);
is_approx($ys, 110574.614016816);

($ys, $xs) = $e.scales(2);
is_approx($xs, 111252.131520103);
is_approx($ys, 110575.628200778);

($ys, $xs) = $e.scales(3);
is_approx($xs, 111167.950506731);
is_approx($ys, 110577.317168814);

($ys, $xs) = $e.scales(4);
is_approx($xs, 111050.130831399);
is_approx($ys, 110579.678914611);

($ys, $xs) = $e.scales(5);
is_approx($xs, 110898.706232127);
is_approx($ys, 110582.710632409);

($ys, $xs) = $e.scales(6);
is_approx($xs, 110713.720078689);
is_approx($ys, 110586.408720072);

($ys, $xs) = $e.scales(7);
is_approx($xs, 110495.225366811);
is_approx($ys, 110590.768783042);

($ys, $xs) = $e.scales(8);
is_approx($xs, 110243.284711052);
is_approx($ys, 110595.785639154);

($ys, $xs) = $e.scales(9);
is_approx($xs, 109957.970336344);
is_approx($ys, 110601.453324332);

($ys, $xs) = $e.scales(10);
is_approx($xs, 109639.364068153);
is_approx($ys, 110607.765099137);

($ys, $xs) = $e.scales(11);
is_approx($xs, 109287.557321245);
is_approx($ys, 110614.713456187);

($ys, $xs) = $e.scales(12);
is_approx($xs, 108902.651087025);
is_approx($ys, 110622.290128422);

($ys, $xs) = $e.scales(13);
is_approx($xs, 108484.755919402);
is_approx($ys, 110630.486098225);

($ys, $xs) = $e.scales(14);
is_approx($xs, 108033.991919153);
is_approx($ys, 110639.291607378);

($ys, $xs) = $e.scales(15);
is_approx($xs, 107550.488716736);
is_approx($ys, 110648.696167862);

($ys, $xs) = $e.scales(16);
is_approx($xs, 107034.385453513);
is_approx($ys, 110658.688573475);

($ys, $xs) = $e.scales(17);
is_approx($xs, 106485.830761325);
is_approx($ys, 110669.256912276);

($ys, $xs) = $e.scales(18);
is_approx($xs, 105904.982740377);
is_approx($ys, 110680.388579831);

($ys, $xs) = $e.scales(19);
is_approx($xs, 105292.008935377);
is_approx($ys, 110692.070293263);

($ys, $xs) = $e.scales(20);
is_approx($xs, 104647.086309862);
is_approx($ys, 110704.288106085);

($ys, $xs) = $e.scales(21);
is_approx($xs, 103970.401218673);
is_approx($ys, 110717.027423818);

($ys, $xs) = $e.scales(22);
is_approx($xs, 103262.149378494);
is_approx($ys, 110730.273020361);

($ys, $xs) = $e.scales(23);
is_approx($xs, 102522.535836412);
is_approx($ys, 110744.00905512);

($ys, $xs) = $e.scales(24);
is_approx($xs, 101751.774936417);
is_approx($ys, 110758.21909087);

($ys, $xs) = $e.scales(25);
is_approx($xs, 100950.090283789);
is_approx($ys, 110772.88611234);

($ys, $xs) = $e.scales(26);
is_approx($xs, 100117.714707292);
is_approx($ys, 110787.992545504);

($ys, $xs) = $e.scales(27);
is_approx($xs, 99254.890219118);
is_approx($ys, 110803.520277558);

($ys, $xs) = $e.scales(28);
is_approx($xs, 98361.8679724994);
is_approx($ys, 110819.450677574);

($ys, $xs) = $e.scales(29);
is_approx($xs, 97438.9082169266);
is_approx($ys, 110835.764617804);

($ys, $xs) = $e.scales(30);
is_approx($xs, 96486.2802508965);
is_approx($ys, 110852.442495617);

($ys, $xs) = $e.scales(31);
is_approx($xs, 95504.2623721221);
is_approx($ys, 110869.464256056);

($ys, $xs) = $e.scales(32);
is_approx($xs, 94493.1418251297);
is_approx($ys, 110886.809414981);

($ys, $xs) = $e.scales(33);
is_approx($xs, 93453.2147461739);
is_approx($ys, 110904.457082788);

($ys, $xs) = $e.scales(34);
is_approx($xs, 92384.7861053995);
is_approx($ys, 110922.385988675);

($ys, $xs) = $e.scales(35);
is_approx($xs, 91288.1696461796);
is_approx($ys, 110940.574505431);

($ys, $xs) = $e.scales(36);
is_approx($xs, 90163.6878215616);
is_approx($ys, 110959.000674728);

($ys, $xs) = $e.scales(37);
is_approx($xs, 89011.6717277532);
is_approx($ys, 110977.642232884);

($ys, $xs) = $e.scales(38);
is_approx($xs, 87832.461034582);
is_approx($ys, 110996.476637075);

($ys, $xs) = $e.scales(39);
is_approx($xs, 86626.4039128637);
is_approx($ys, 111015.481091969);

($ys, $xs) = $e.scales(40);
is_approx($xs, 85393.8569586184);
is_approx($ys, 111034.632576751);

($ys, $xs) = $e.scales(41);
is_approx($xs, 84135.1851140718);
is_approx($ys, 111053.907872507);

($ys, $xs) = $e.scales(42);
is_approx($xs, 82850.7615853864);
is_approx($ys, 111073.283589948);

($ys, $xs) = $e.scales(43);
is_approx($xs, 81540.9677570662);
is_approx($ys, 111092.736197432);

($ys, $xs) = $e.scales(44);
is_approx($xs, 80206.1931029833);
is_approx($ys, 111112.242049253);

($ys, $xs) = $e.scales(45);
is_approx($xs, 78846.8350939781);
is_approx($ys, 111131.777414176);

($ys, $xs) = $e.scales(46);
is_approx($xs, 77463.2991019873);
is_approx($ys, 111151.318504168);

($ys, $xs) = $e.scales(47);
is_approx($xs, 76055.9983006586);
is_approx($ys, 111170.841503309);

($ys, $xs) = $e.scales(48);
is_approx($xs, 74625.3535624143);
is_approx($ys, 111190.322596824);

($ys, $xs) = $e.scales(49);
is_approx($xs, 73171.7933519306);
is_approx($ys, 111209.738000236);

($ys, $xs) = $e.scales(50);
is_approx($xs, 71695.753616003);
is_approx($ys, 111229.063988562);

($ys, $xs) = $e.scales(51);
is_approx($xs, 70197.6776697733);
is_approx($ys, 111248.276925556);

($ys, $xs) = $e.scales(52);
is_approx($xs, 68678.0160792985);
is_approx($ys, 111267.353292927);

($ys, $xs) = $e.scales(53);
is_approx($xs, 67137.2265404469);
is_approx($ys, 111286.269719523);

($ys, $xs) = $e.scales(54);
is_approx($xs, 65575.7737541096);
is_approx($ys, 111305.003010423);

($ys, $xs) = $e.scales(55);
is_approx($xs, 63994.1292977257);
is_approx($ys, 111323.530175906);

($ys, $xs) = $e.scales(56);
is_approx($xs, 62392.7714931183);
is_approx($ys, 111341.828460265);

($ys, $xs) = $e.scales(57);
is_approx($xs, 60772.1852706498);
is_approx($ys, 111359.875370412);

($ys, $xs) = $e.scales(58);
is_approx($xs, 59132.8620297075);
is_approx($ys, 111377.64870425);

($ys, $xs) = $e.scales(59);
is_approx($xs, 57475.2994955351);
is_approx($ys, 111395.12657876);

($ys, $xs) = $e.scales(60);
is_approx($xs, 55800.0015724362);
is_approx($ys, 111412.287457779);

($ys, $xs) = $e.scales(61);
is_approx($xs, 54107.4781933752);
is_approx($ys, 111429.110179413);

($ys, $xs) = $e.scales(62);
is_approx($xs, 52398.2451660134);
is_approx($ys, 111445.573983052);

($ys, $xs) = $e.scales(63);
is_approx($xs, 50672.8240152185);
is_approx($ys, 111461.65853596);

($ys, $xs) = $e.scales(64);
is_approx($xs, 48931.7418220956);
is_approx($ys, 111477.343959384);

($ys, $xs) = $e.scales(65);
is_approx($xs, 47175.5310595919);
is_approx($ys, 111492.610854148);

($ys, $xs) = $e.scales(66);
is_approx($xs, 45404.7294247327);
is_approx($ys, 111507.440325702);

($ys, $xs) = $e.scales(67);
is_approx($xs, 43619.8796675553);
is_approx($ys, 111521.814008585);

($ys, $xs) = $e.scales(68);
is_approx($xs, 41821.5294168082);
is_approx($ys, 111535.714090256);

($ys, $xs) = $e.scales(69);
is_approx($xs, 40010.2310024944);
is_approx($ys, 111549.12333427);

($ys, $xs) = $e.scales(70);
is_approx($xs, 38186.5412753387);
is_approx($ys, 111562.025102756);

($ys, $xs) = $e.scales(71);
is_approx($xs, 36351.0214232683);
is_approx($ys, 111574.403378166);

($ys, $xs) = $e.scales(72);
is_approx($xs, 34504.2367849983);
is_approx($ys, 111586.242784253);

($ys, $xs) = $e.scales(73);
is_approx($xs, 32646.7566608212);
is_approx($ys, 111597.52860626);

($ys, $xs) = $e.scales(74);
is_approx($xs, 30779.1541207048);
is_approx($ys, 111608.246810274);

($ys, $xs) = $e.scales(75);
is_approx($xs, 28902.0058098066);
is_approx($ys, 111618.38406172);

($ys, $xs) = $e.scales(76);
is_approx($xs, 27015.8917515192);
is_approx($ys, 111627.927742966);

($ys, $xs) = $e.scales(77);
is_approx($xs, 25121.3951481649);
is_approx($ys, 111636.865970013);

($ys, $xs) = $e.scales(78);
is_approx($xs, 23219.1021794639);
is_approx($ys, 111645.187608236);

($ys, $xs) = $e.scales(79);
is_approx($xs, 21309.6017989022);
is_approx($ys, 111652.882287157);

($ys, $xs) = $e.scales(80);
is_approx($xs, 19393.4855281322);
is_approx($ys, 111659.940414223);

($ys, $xs) = $e.scales(81);
is_approx($xs, 17471.3472495414);
is_approx($ys, 111666.35318757);

($ys, $xs) = $e.scales(82);
is_approx($xs, 15543.7829971289);
is_approx($ys, 111672.112607742);

($ys, $xs) = $e.scales(83);
is_approx($xs, 13611.3907458309);
is_approx($ys, 111677.211488361);

($ys, $xs) = $e.scales(84);
is_approx($xs, 11674.7701994437);
is_approx($ys, 111681.64346572);

($ys, $xs) = $e.scales(85);
is_approx($xs, 9734.52257729095);
is_approx($ys, 111685.403007281);

($ys, $xs) = $e.scales(86);
is_approx($xs, 7791.25039978636);
is_approx($ys, 111688.485419075);

($ys, $xs) = $e.scales(87);
is_approx($xs, 5845.55727304685);
is_approx($ys, 111690.886851982);

($ys, $xs) = $e.scales(88);
is_approx($xs, 3898.04767271025);
is_approx($ys, 111692.604306881);

($ys, $xs) = $e.scales(89);
is_approx($xs, 1949.32672711493);
is_approx($ys, 111693.635638667);

