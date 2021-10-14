// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vax_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaxSet _$$_VaxSetFromJson(Map<String, dynamic> json) => _$_VaxSet(
      setID: json['setID'] as String?,
      setDescription: json['setDescription'] as String?,
      effectiveDate: json['effectiveDate'] as String?,
      cessationDate: json['cessationDate'] as String?,
      conditionLogic: json['conditionLogic'] as String?,
      condition: (json['condition'] as List<dynamic>?)
          ?.map((e) => Condition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VaxSetToJson(_$_VaxSet instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('setID', instance.setID);
  writeNotNull('setDescription', instance.setDescription);
  writeNotNull('effectiveDate', instance.effectiveDate);
  writeNotNull('cessationDate', instance.cessationDate);
  writeNotNull('conditionLogic', instance.conditionLogic);
  writeNotNull(
      'condition', instance.condition?.map((e) => e.toJson()).toList());
  return val;
}
