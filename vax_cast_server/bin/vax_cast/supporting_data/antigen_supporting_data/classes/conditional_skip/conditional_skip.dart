import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../vax_cast.dart';

part 'conditional_skip.freezed.dart';
part 'conditional_skip.g.dart';

@freezed
abstract class ConditionalSkip with _$ConditionalSkip {
  factory ConditionalSkip({
    SkipContext context,
    String setLogic,
    @JsonKey(name: 'set') List<VaxSet> set_,
  }) = _ConditionalSkip;

  factory ConditionalSkip.fromJson(Map<String, dynamic> json) =>
      _$ConditionalSkipFromJson(json);
}
