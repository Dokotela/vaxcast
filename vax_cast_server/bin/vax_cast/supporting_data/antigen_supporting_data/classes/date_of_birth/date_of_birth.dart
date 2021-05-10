import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../vax_cast.dart';

part 'date_of_birth.freezed.dart';
part 'date_of_birth.g.dart';

@freezed
class DateOfBirth with _$DateOfBirth {
  factory DateOfBirth({
    String? immunityBirthDate,
    String? birthCountry,
    List<Exclusion>? exclusion,
  }) = _DateOfBirth;

  factory DateOfBirth.fromJson(Map<String, dynamic> json) =>
      _$DateOfBirthFromJson(json);
}
