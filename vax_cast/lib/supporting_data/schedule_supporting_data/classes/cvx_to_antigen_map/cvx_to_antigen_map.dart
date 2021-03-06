import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../vax_cast.dart';

part 'cvx_to_antigen_map.freezed.dart';
part 'cvx_to_antigen_map.g.dart';

@freezed
class CvxToAntigenMap with _$CvxToAntigenMap {
  factory CvxToAntigenMap({
    List<CvxMap>? cvxMap,
  }) = _CvxToAntigenMap;

  factory CvxToAntigenMap.fromJson(Map<String, dynamic> json) =>
      _$CvxToAntigenMapFromJson(json);
}

@freezed
class CvxMap with _$CvxMap {
  factory CvxMap({
    Cvx? cvx,
    String? shortDescription,
    List<Association>? association,
  }) = _CvxMap;

  factory CvxMap.fromJson(Map<String, dynamic> json) => _$CvxMapFromJson(json);
}

@freezed
class Association with _$Association {
  factory Association({
    TargetDisease? antigen,
    String? associationBeginAge,
    String? associationEndAge,
  }) = _Association;

  factory Association.fromJson(Map<String, dynamic> json) =>
      _$AssociationFromJson(json);
}
