import 'enums.dart';

String? enumToString(Enum? value) {
  if(value == null){
    return null;
  }
  switch (value.runtimeType) {
    case Binary:
      return binaryEnumToString[value];

    case ConditionType:
      return conditionTypeEnumToString[value];

    case Cvx:
      return cvxEnumToStringMap[value];

    case DoseCountLogic:
      return doseCountLogicEnumToString[value];

    case DoseNumber:
      return doseNumberEnumToString[value];

    case DoseType:
      return doseTypeEnumToString[value];

    case EquivalentSeriesGroups:
      return equivalentSeriesGroupsEnumToString[value];

    case FromPrevious:
      return fromPreviousEnumToString[value];

    case FromTarget:
      return fromTargetEnumToString[value];

    case Gender:
      return genderEnumToString[value];

    case Obs:
      return obsEnumToStringMap[value];

    case SeriesGroup:
      return seriesGroupEnumToString[value];

    case SeriesGroupName:
      return seriesGroupNameEnumToString[value];

    case SeriesPreference:
      return seriesPreferenceEnumToString[value];

    case SeriesPriority:
      return seriesPriorityEnumToString[value];

    case SeriesType:
      return seriesTypeEnumToString[value];

    case SkipContext:
      return skipContextEnumToString[value];

    case TargetDisease:
      return targetDiseaseEnumToString[value];

    case VaccineGroupName:
      return vaccineGroupNameEnumToString[value];

    default:
      return value.toString().split('.').last;
  }
}
