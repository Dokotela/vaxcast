// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vax_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaxSet _$_$_VaxSetFromJson(Map<String, dynamic> json) {
  return _$_VaxSet(
    setID: json['setID'] as String?,
    setDescription: json['setDescription'] as String?,
    effectiveDate: json['effectiveDate'] as String?,
    cessationDate: json['cessationDate'] as String?,
    conditionLogic: json['conditionLogic'] as String?,
    condition: (json['condition'] as List<dynamic>?)
        ?.map((e) => Condition.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_VaxSetToJson(_$_VaxSet instance) => <String, dynamic>{
      'setID': instance.setID,
      'setDescription': instance.setDescription,
      'effectiveDate': instance.effectiveDate,
      'cessationDate': instance.cessationDate,
      'conditionLogic': instance.conditionLogic,
      'condition': instance.condition,
    };
