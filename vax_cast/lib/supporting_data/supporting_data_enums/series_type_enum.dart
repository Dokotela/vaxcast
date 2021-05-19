import 'package:freezed_annotation/freezed_annotation.dart';

enum SeriesType {
  @JsonValue('Standard')
  standard,
  @JsonValue('Risk')
  risk,
}

const seriesTypeStringToEnum = {
  'Standard': SeriesType.standard,
  'Risk': SeriesType.risk,
};

const seriesTypeEnumToString = {
  SeriesType.standard: 'Standard',
  SeriesType.risk: 'Risk',
};
