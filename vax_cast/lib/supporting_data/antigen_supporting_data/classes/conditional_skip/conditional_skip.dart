import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enums/skip_context_enum.dart';
import '../vax_set/vax_set.dart';

part 'conditional_skip.freezed.dart';
part 'conditional_skip.g.dart';

@freezed
class ConditionalSkip with _$ConditionalSkip {
  factory ConditionalSkip({
    SkipContext? context,
    String? setLogic,
    @JsonKey(name: 'set') List<VaxSet>? set_,
  }) = _ConditionalSkip;

  factory ConditionalSkip.fromJson(Map<String, dynamic> json) =>
      _$ConditionalSkipFromJson(json);
}
