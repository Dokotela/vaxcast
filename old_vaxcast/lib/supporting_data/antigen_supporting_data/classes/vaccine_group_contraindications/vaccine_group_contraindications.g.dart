// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_group_contraindications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccineGroupContraindications _$_$_VaccineGroupContraindicationsFromJson(
    Map<String, dynamic> json) {
  return _$_VaccineGroupContraindications(
    contraindication: (json['contraindication'] as List)
        ?.map((e) => e == null
            ? null
            : GroupContraindication.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_VaccineGroupContraindicationsToJson(
        _$_VaccineGroupContraindications instance) =>
    <String, dynamic>{
      'contraindication': instance.contraindication,
    };

_$_GroupContraindication _$_$_GroupContraindicationFromJson(
    Map<String, dynamic> json) {
  return _$_GroupContraindication(
    observationCode:
        _$enumDecodeNullable(_$ObsEnumMap, json['observationCode']),
    observationTitle: json['observationTitle'] as String,
    contraindicationText: json['contraindicationText'] as String,
    contraindicationGuidance: json['contraindicationGuidance'] as String,
    beginAge: json['beginAge'] as String,
    endAge: json['endAge'] as String,
  );
}

Map<String, dynamic> _$_$_GroupContraindicationToJson(
        _$_GroupContraindication instance) =>
    <String, dynamic>{
      'observationCode': _$ObsEnumMap[instance.observationCode],
      'observationTitle': instance.observationTitle,
      'contraindicationText': instance.contraindicationText,
      'contraindicationGuidance': instance.contraindicationGuidance,
      'beginAge': instance.beginAge,
      'endAge': instance.endAge,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$ObsEnumMap = {
  Obs.code001: '001',
  Obs.code002: '002',
  Obs.code003: '003',
  Obs.code004: '004',
  Obs.code005: '005',
  Obs.code006: '006',
  Obs.code007: '007',
  Obs.code008: '008',
  Obs.code009: '009',
  Obs.code010: '010',
  Obs.code011: '011',
  Obs.code012: '012',
  Obs.code013: '013',
  Obs.code014: '014',
  Obs.code015: '015',
  Obs.code016: '016',
  Obs.code017: '017',
  Obs.code018: '018',
  Obs.code019: '019',
  Obs.code020: '020',
  Obs.code021: '021',
  Obs.code022: '022',
  Obs.code023: '023',
  Obs.code024: '024',
  Obs.code025: '025',
  Obs.code026: '026',
  Obs.code027: '027',
  Obs.code028: '028',
  Obs.code029: '029',
  Obs.code030: '030',
  Obs.code031: '031',
  Obs.code032: '032',
  Obs.code033: '033',
  Obs.code034: '034',
  Obs.code035: '035',
  Obs.code036: '036',
  Obs.code037: '037',
  Obs.code038: '038',
  Obs.code039: '039',
  Obs.code040: '040',
  Obs.code041: '041',
  Obs.code042: '042',
  Obs.code043: '043',
  Obs.code044: '044',
  Obs.code045: '045',
  Obs.code046: '046',
  Obs.code047: '047',
  Obs.code048: '048',
  Obs.code049: '049',
  Obs.code050: '050',
  Obs.code051: '051',
  Obs.code052: '052',
  Obs.code053: '053',
  Obs.code054: '054',
  Obs.code055: '055',
  Obs.code056: '056',
  Obs.code057: '057',
  Obs.code058: '058',
  Obs.code059: '059',
  Obs.code060: '060',
  Obs.code061: '061',
  Obs.code062: '062',
  Obs.code063: '063',
  Obs.code064: '064',
  Obs.code065: '065',
  Obs.code066: '066',
  Obs.code068: '068',
  Obs.code069: '069',
  Obs.code070: '070',
  Obs.code071: '071',
  Obs.code072: '072',
  Obs.code073: '073',
  Obs.code074: '074',
  Obs.code075: '075',
  Obs.code076: '076',
  Obs.code077: '077',
  Obs.code078: '078',
  Obs.code079: '079',
  Obs.code080: '080',
  Obs.code081: '081',
  Obs.code082: '082',
  Obs.code083: '083',
  Obs.code084: '084',
  Obs.code085: '085',
  Obs.code086: '086',
  Obs.code087: '087',
  Obs.code088: '088',
  Obs.code089: '089',
  Obs.code090: '090',
  Obs.code091: '091',
  Obs.code092: '092',
  Obs.code093: '093',
  Obs.code094: '094',
  Obs.code095: '095',
  Obs.code096: '096',
  Obs.code097: '097',
  Obs.code098: '098',
  Obs.code099: '099',
  Obs.code100: '100',
  Obs.code101: '101',
  Obs.code102: '102',
  Obs.code103: '103',
  Obs.code104: '104',
  Obs.code105: '105',
  Obs.code106: '106',
  Obs.code107: '107',
  Obs.code108: '108',
  Obs.code109: '109',
  Obs.code110: '110',
  Obs.code111: '111',
  Obs.code112: '112',
  Obs.code113: '113',
  Obs.code114: '114',
  Obs.code115: '115',
  Obs.code116: '116',
  Obs.code117: '117',
  Obs.code118: '118',
  Obs.code119: '119',
  Obs.code120: '120',
  Obs.code121: '121',
  Obs.code125: '125',
  Obs.code126: '126',
  Obs.code127: '127',
  Obs.code128: '128',
  Obs.code129: '129',
  Obs.code130: '130',
  Obs.code131: '131',
  Obs.code132: '132',
  Obs.code133: '133',
  Obs.code134: '134',
  Obs.code135: '135',
  Obs.code136: '136',
  Obs.code137: '137',
  Obs.code138: '138',
  Obs.code139: '139',
  Obs.code140: '140',
  Obs.code141: '141',
  Obs.code142: '142',
  Obs.code143: '143',
  Obs.code144: '144',
  Obs.code145: '145',
  Obs.code146: '146',
  Obs.code147: '147',
  Obs.code148: '148',
  Obs.code149: '149',
  Obs.code150: '150',
  Obs.code151: '151',
  Obs.code152: '152',
  Obs.code153: '153',
  Obs.code154: '154',
  Obs.code155: '155',
  Obs.code156: '156',
  Obs.code157: '157',
  Obs.code158: '158',
  Obs.code159: '159',
  Obs.code160: '160',
  Obs.code161: '161',
  Obs.code162: '162',
  Obs.code163: '163',
  Obs.code164: '164',
  Obs.code165: '165',
  Obs.code166: '166',
  Obs.code167: '167',
  Obs.code168: '168',
  Obs.code169: '169',
  Obs.code170: '170',
  Obs.code171: '171',
  Obs.code172: '172',
  Obs.code173: '173',
  Obs.code174: '174',
};
