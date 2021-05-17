// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vaccine _$_$_VaccineFromJson(Map<String, dynamic> json) {
  return _$_Vaccine(
    vaccineType: json['vaccineType'] as String?,
    cvx: _$enumDecodeNullable(_$CvxEnumMap, json['cvx']),
    beginAge: json['beginAge'] as String?,
    endAge: json['endAge'] as String?,
    tradeName: json['tradeName'] as String?,
    mvx: json['mvx'] as String?,
    volume: json['volume'] as String?,
    forecastVaccineType: json['forecastVaccineType'] as String?,
  );
}

Map<String, dynamic> _$_$_VaccineToJson(_$_Vaccine instance) =>
    <String, dynamic>{
      'vaccineType': instance.vaccineType,
      'cvx': _$CvxEnumMap[instance.cvx],
      'beginAge': instance.beginAge,
      'endAge': instance.endAge,
      'tradeName': instance.tradeName,
      'mvx': instance.mvx,
      'volume': instance.volume,
      'forecastVaccineType': instance.forecastVaccineType,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$CvxEnumMap = {
  Cvx.code01: '01',
  Cvx.code02: '02',
  Cvx.code03: '03',
  Cvx.code04: '04',
  Cvx.code05: '05',
  Cvx.code06: '06',
  Cvx.code07: '07',
  Cvx.code08: '08',
  Cvx.code09: '09',
  Cvx.code10: '10',
  Cvx.code11: '11',
  Cvx.code15: '15',
  Cvx.code16: '16',
  Cvx.code17: '17',
  Cvx.code18: '18',
  Cvx.code19: '19',
  Cvx.code20: '20',
  Cvx.code21: '21',
  Cvx.code22: '22',
  Cvx.code25: '25',
  Cvx.code26: '26',
  Cvx.code28: '28',
  Cvx.code31: '31',
  Cvx.code32: '32',
  Cvx.code33: '33',
  Cvx.code35: '35',
  Cvx.code37: '37',
  Cvx.code38: '38',
  Cvx.code39: '39',
  Cvx.code40: '40',
  Cvx.code41: '41',
  Cvx.code42: '42',
  Cvx.code43: '43',
  Cvx.code44: '44',
  Cvx.code45: '45',
  Cvx.code46: '46',
  Cvx.code47: '47',
  Cvx.code48: '48',
  Cvx.code49: '49',
  Cvx.code50: '50',
  Cvx.code51: '51',
  Cvx.code53: '53',
  Cvx.code52: '52',
  Cvx.code62: '62',
  Cvx.code74: '74',
  Cvx.code75: '75',
  Cvx.code83: '83',
  Cvx.code84: '84',
  Cvx.code85: '85',
  Cvx.code88: '88',
  Cvx.code89: '89',
  Cvx.code90: '90',
  Cvx.code91: '91',
  Cvx.code94: '94',
  Cvx.code100: '100',
  Cvx.code101: '101',
  Cvx.code102: '102',
  Cvx.code103: '103',
  Cvx.code104: '104',
  Cvx.code106: '106',
  Cvx.code107: '107',
  Cvx.code108: '108',
  Cvx.code109: '109',
  Cvx.code110: '110',
  Cvx.code111: '111',
  Cvx.code112: '112',
  Cvx.code113: '113',
  Cvx.code114: '114',
  Cvx.code115: '115',
  Cvx.code116: '116',
  Cvx.code118: '118',
  Cvx.code119: '119',
  Cvx.code120: '120',
  Cvx.code121: '121',
  Cvx.code122: '122',
  Cvx.code125: '125',
  Cvx.code129: '129',
  Cvx.code130: '130',
  Cvx.code132: '132',
  Cvx.code133: '133',
  Cvx.code134: '134',
  Cvx.code135: '135',
  Cvx.code136: '136',
  Cvx.code137: '137',
  Cvx.code138: '138',
  Cvx.code139: '139',
  Cvx.code140: '140',
  Cvx.code141: '141',
  Cvx.code142: '142',
  Cvx.code144: '144',
  Cvx.code146: '146',
  Cvx.code147: '147',
  Cvx.code148: '148',
  Cvx.code149: '149',
  Cvx.code150: '150',
  Cvx.code151: '151',
  Cvx.code152: '152',
  Cvx.code153: '153',
  Cvx.code155: '155',
  Cvx.code158: '158',
  Cvx.code161: '161',
  Cvx.code162: '162',
  Cvx.code163: '163',
  Cvx.code164: '164',
  Cvx.code165: '165',
  Cvx.code166: '166',
  Cvx.code167: '167',
  Cvx.code168: '168',
  Cvx.code169: '169',
  Cvx.code170: '170',
  Cvx.code171: '171',
  Cvx.code172: '172',
  Cvx.code173: '173',
  Cvx.code174: '174',
  Cvx.code175: '175',
  Cvx.code176: '176',
  Cvx.code177: '177',
  Cvx.code178: '178',
  Cvx.code179: '179',
  Cvx.code182: '182',
  Cvx.code183: '183',
  Cvx.code184: '184',
  Cvx.code185: '185',
  Cvx.code186: '186',
  Cvx.code187: '187',
  Cvx.code188: '188',
  Cvx.code189: '189',
  Cvx.code190: '190',
  Cvx.code191: '191',
  Cvx.code192: '192',
  Cvx.code193: '193',
  Cvx.code194: '194',
  Cvx.code195: '195',
  Cvx.code196: '196',
  Cvx.code198: '198',
};