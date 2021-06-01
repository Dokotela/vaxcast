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
  @JsonValue('197')
  code197,
  @JsonValue('198')
  code198,
  @JsonValue('200')
  code200,
  @JsonValue('201')
  code201,
  @JsonValue('202')
  code202,
  @JsonValue('203')
  code203,
  @JsonValue('204')
  code204,
  @JsonValue('205')
  code205,
  @JsonValue('207')
  code207,
  @JsonValue('208')
  code208,
  @JsonValue('212')
  code212,
  @JsonValue('213')
  code213,
}

int cvxToInt(Cvx cvx) => int.parse(cvx.toString().split('code')[1]);

const cvxStringToEnumMap = {
  '01': Cvx.code01,
  '02': Cvx.code02,
  '03': Cvx.code03,
  '04': Cvx.code04,
  '05': Cvx.code05,
  '06': Cvx.code06,
  '07': Cvx.code07,
  '08': Cvx.code08,
  '09': Cvx.code09,
  '10': Cvx.code10,
  '11': Cvx.code11,
  '15': Cvx.code15,
  '16': Cvx.code16,
  '17': Cvx.code17,
  '18': Cvx.code18,
  '19': Cvx.code19,
  '20': Cvx.code20,
  '21': Cvx.code21,
  '22': Cvx.code22,
  '25': Cvx.code25,
  '26': Cvx.code26,
  '28': Cvx.code28,
  '31': Cvx.code31,
  '32': Cvx.code32,
  '33': Cvx.code33,
  '35': Cvx.code35,
  '37': Cvx.code37,
  '38': Cvx.code38,
  '39': Cvx.code39,
  '40': Cvx.code40,
  '41': Cvx.code41,
  '42': Cvx.code42,
  '43': Cvx.code43,
  '44': Cvx.code44,
  '45': Cvx.code45,
  '46': Cvx.code46,
  '47': Cvx.code47,
  '48': Cvx.code48,
  '49': Cvx.code49,
  '50': Cvx.code50,
  '51': Cvx.code51,
  '53': Cvx.code53,
  '52': Cvx.code52,
  '62': Cvx.code62,
  '74': Cvx.code74,
  '75': Cvx.code75,
  '83': Cvx.code83,
  '84': Cvx.code84,
  '85': Cvx.code85,
  '88': Cvx.code88,
  '89': Cvx.code89,
  '90': Cvx.code90,
  '91': Cvx.code91,
  '94': Cvx.code94,
  '100': Cvx.code100,
  '101': Cvx.code101,
  '102': Cvx.code102,
  '103': Cvx.code103,
  '104': Cvx.code104,
  '106': Cvx.code106,
  '107': Cvx.code107,
  '108': Cvx.code108,
  '109': Cvx.code109,
  '110': Cvx.code110,
  '111': Cvx.code111,
  '112': Cvx.code112,
  '113': Cvx.code113,
  '114': Cvx.code114,
  '115': Cvx.code115,
  '116': Cvx.code116,
  '118': Cvx.code118,
  '119': Cvx.code119,
  '120': Cvx.code120,
  '121': Cvx.code121,
  '122': Cvx.code122,
  '125': Cvx.code125,
  '129': Cvx.code129,
  '130': Cvx.code130,
  '132': Cvx.code132,
  '133': Cvx.code133,
  '134': Cvx.code134,
  '135': Cvx.code135,
  '136': Cvx.code136,
  '137': Cvx.code137,
  '138': Cvx.code138,
  '139': Cvx.code139,
  '140': Cvx.code140,
  '141': Cvx.code141,
  '142': Cvx.code142,
  '144': Cvx.code144,
  '146': Cvx.code146,
  '147': Cvx.code147,
  '148': Cvx.code148,
  '149': Cvx.code149,
  '150': Cvx.code150,
  '151': Cvx.code151,
  '152': Cvx.code152,
  '153': Cvx.code153,
  '155': Cvx.code155,
  '158': Cvx.code158,
  '161': Cvx.code161,
  '162': Cvx.code162,
  '163': Cvx.code163,
  '164': Cvx.code164,
  '165': Cvx.code165,
  '166': Cvx.code166,
  '167': Cvx.code167,
  '168': Cvx.code168,
  '169': Cvx.code169,
  '170': Cvx.code170,
  '171': Cvx.code171,
  '172': Cvx.code172,
  '173': Cvx.code173,
  '174': Cvx.code174,
  '175': Cvx.code175,
  '176': Cvx.code176,
  '177': Cvx.code177,
  '178': Cvx.code178,
  '179': Cvx.code179,
  '182': Cvx.code182,
  '183': Cvx.code183,
  '184': Cvx.code184,
  '185': Cvx.code185,
  '186': Cvx.code186,
  '187': Cvx.code187,
  '188': Cvx.code188,
  '189': Cvx.code189,
  '190': Cvx.code190,
  '191': Cvx.code191,
  '192': Cvx.code192,
  '193': Cvx.code193,
  '194': Cvx.code194,
  '195': Cvx.code195,
  '196': Cvx.code196,
  '197': Cvx.code197,
  '198': Cvx.code198,
  '200': Cvx.code200,
  '201': Cvx.code201,
  '202': Cvx.code202,
  '203': Cvx.code203,
  '204': Cvx.code204,
  '205': Cvx.code205,
  '207': Cvx.code207,
  '208': Cvx.code208,
  '212': Cvx.code212,
  '213': Cvx.code213,
};
