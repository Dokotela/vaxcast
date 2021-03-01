import 'package:freezed_annotation/freezed_annotation.dart';

enum EvalStatus {
  @JsonValue('extraneous')
  extraneous,
  @JsonValue('notValid')
  notValid,
  @JsonValue('subStandard')
  subStandard,
  @JsonValue('valid')
  valid,
  @JsonValue('notEvaluated')
  notEvaluated,
}

enum EvalReason {
  @JsonValue('expired')
  expired,
  @JsonValue('tooYoung')
  tooYoung,
  @JsonValue('gracePeriod')
  gracePeriod,
  @JsonValue('inappropriate')
  inappropriate,
  @JsonValue('tooSoon')
  tooSoon,
  @JsonValue('productConflict')
  productConflict,
  @JsonValue('quantity')
  quantity,
  @JsonValue('recall')
  recall,
  @JsonValue('storage')
  storage,
  @JsonValue('notEvaluated')
  notEvaluated,
  @JsonValue('inadvertent')
  inadvertent,
  @JsonValue('tooOld')
  tooOld,
  @JsonValue('valid')
  valid,
}

enum TargetStatus {
  @JsonValue('notSatisfied')
  notSatisfied,
  @JsonValue('satisfied')
  satisfied,
  @JsonValue('skipped')
  skipped,
}

enum SeriesStatus {
  @JsonValue('complete')
  complete,
  @JsonValue('notComplete')
  notComplete,
  @JsonValue('notRecommended')
  notRecommended,
  @JsonValue('immune')
  immune,
  @JsonValue('contraindicated')
  contraindicated,
  @JsonValue('agedOut')
  agedOut,
  @JsonValue('conditional')
  conditional,
}

enum ForecastReason {
  @JsonValue('complete')
  complete,
  @JsonValue('notRecommended')
  notRecommended,
  @JsonValue('maximumAge')
  maximumAge,
  @JsonValue('seasonalPast')
  seasonalPast,
  @JsonValue('seasonalComplete')
  seasonalComplete,
}
