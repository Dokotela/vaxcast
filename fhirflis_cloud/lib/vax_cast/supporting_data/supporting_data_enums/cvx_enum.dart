import 'package:freezed_annotation/freezed_annotation.dart';

enum Cvx {
  @JsonValue('01')
  code01,
  @JsonValue('02')
  code02,
  @JsonValue('03')
  code03,
  @JsonValue('04')
  code04,
  @JsonValue('05')
  code05,
  @JsonValue('06')
  code06,
  @JsonValue('07')
  code07,
  @JsonValue('08')
  code08,
  @JsonValue('09')
  code09,
  @JsonValue('10')
  code10,
  @JsonValue('11')
  code11,
  @JsonValue('15')
  code15,
  @JsonValue('16')
  code16,
  @JsonValue('17')
  code17,
  @JsonValue('18')
  code18,
  @JsonValue('19')
  code19,
  @JsonValue('20')
  code20,
  @JsonValue('21')
  code21,
  @JsonValue('22')
  code22,
  @JsonValue('25')
  code25,
  @JsonValue('26')
  code26,
  @JsonValue('28')
  code28,
  @JsonValue('31')
  code31,
  @JsonValue('32')
  code32,
  @JsonValue('33')
  code33,
  @JsonValue('35')
  code35,
  @JsonValue('37')
  code37,
  @JsonValue('38')
  code38,
  @JsonValue('39')
  code39,
  @JsonValue('40')
  code40,
  @JsonValue('41')
  code41,
  @JsonValue('42')
  code42,
  @JsonValue('43')
  code43,
  @JsonValue('44')
  code44,
  @JsonValue('45')
  code45,
  @JsonValue('46')
  code46,
  @JsonValue('47')
  code47,
  @JsonValue('48')
  code48,
  @JsonValue('49')
  code49,
  @JsonValue('50')
  code50,
  @JsonValue('51')
  code51,
  @JsonValue('53')
  code53,
  @JsonValue('52')
  code52,
  @JsonValue('62')
  code62,
  @JsonValue('74')
  code74,
  @JsonValue('75')
  code75,
  @JsonValue('83')
  code83,
  @JsonValue('84')
  code84,
  @JsonValue('85')
  code85,
  @JsonValue('88')
  code88,
  @JsonValue('89')
  code89,
  @JsonValue('90')
  code90,
  @JsonValue('91')
  code91,
  @JsonValue('94')
  code94,
  @JsonValue('100')
  code100,
  @JsonValue('101')
  code101,
  @JsonValue('102')
  code102,
  @JsonValue('103')
  code103,
  @JsonValue('104')
  code104,
  @JsonValue('106')
  code106,
  @JsonValue('107')
  code107,
  @JsonValue('108')
  code108,
  @JsonValue('109')
  code109,
  @JsonValue('110')
  code110,
  @JsonValue('111')
  code111,
  @JsonValue('112')
  code112,
  @JsonValue('113')
  code113,
  @JsonValue('114')
  code114,
  @JsonValue('115')
  code115,
  @JsonValue('116')
  code116,
  @JsonValue('118')
  code118,
  @JsonValue('119')
  code119,
  @JsonValue('120')
  code120,
  @JsonValue('121')
  code121,
  @JsonValue('122')
  code122,
  @JsonValue('125')
  code125,
  @JsonValue('129')
  code129,
  @JsonValue('130')
  code130,
  @JsonValue('132')
  code132,
  @JsonValue('133')
  code133,
  @JsonValue('134')
  code134,
  @JsonValue('135')
  code135,
  @JsonValue('136')
  code136,
  @JsonValue('137')
  code137,
  @JsonValue('138')
  code138,
  @JsonValue('139')
  code139,
  @JsonValue('140')
  code140,
  @JsonValue('141')
  code141,
  @JsonValue('142')
  code142,
  @JsonValue('144')
  code144,
  @JsonValue('146')
  code146,
  @JsonValue('147')
  code147,
  @JsonValue('148')
  code148,
  @JsonValue('149')
  code149,
  @JsonValue('150')
  code150,
  @JsonValue('151')
  code151,
  @JsonValue('152')
  code152,
  @JsonValue('153')
  code153,
  @JsonValue('155')
  code155,
  @JsonValue('158')
  code158,
  @JsonValue('161')
  code161,
  @JsonValue('162')
  code162,
  @JsonValue('163')
  code163,
  @JsonValue('164')
  code164,
  @JsonValue('165')
  code165,
  @JsonValue('166')
  code166,
  @JsonValue('167')
  code167,
  @JsonValue('168')
  code168,
  @JsonValue('169')
  code169,
  @JsonValue('170')
  code170,
  @JsonValue('171')
  code171,
  @JsonValue('172')
  code172,
  @JsonValue('173')
  code173,
  @JsonValue('174')
  code174,
  @JsonValue('175')
  code175,
  @JsonValue('176')
  code176,
  @JsonValue('177')
  code177,
  @JsonValue('178')
  code178,
  @JsonValue('179')
  code179,
  @JsonValue('182')
  code182,
  @JsonValue('183')
  code183,
  @JsonValue('184')
  code184,
  @JsonValue('185')
  code185,
  @JsonValue('186')
  code186,
  @JsonValue('187')
  code187,
  @JsonValue('188')
  code188,
  @JsonValue('189')
  code189,
  @JsonValue('190')
  code190,
  @JsonValue('191')
  code191,
  @JsonValue('192')
  code192,
  @JsonValue('193')
  code193,
  @JsonValue('194')
  code194,
  @JsonValue('195')
  code195,
  @JsonValue('196')
  code196,
  @JsonValue('198')
  code198,
}

int cvxToInt(Cvx cvx) => int.parse(cvx.toString().split('code')[1]);
