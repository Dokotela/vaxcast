import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vaxcast/supporting_data/export_supporting_data.dart';
import 'package:vaxcast/supporting_data/files/files.dart';

part 'supporting_data.freezed.dart';
part 'supporting_data.g.dart';

@freezed
class SupportingData with _$SupportingData {
  SupportingData._();
  factory SupportingData({
    List<AntigenSupportingData?>? antigenSupportingData,
    ScheduleSupportingData? scheduleSupportingData,
  }) = _SupportingData;

  factory SupportingData.fromJson(Map<String, dynamic> json) =>
      _$SupportingDataFromJson(json);

  factory SupportingData.fromFile() => SupportingData(
        antigenSupportingData: [
          cholera,
          covid19,
          diphtheria,
          ebola,
          hepa,
          hepb,
          hib,
          hpv,
          influenza,
          japaneseEncephalitis,
          measles,
          meningococcalB,
          meningococcal,
          mumps,
          pertussis,
          pneumococcal,
          polio,
          rabies,
          rubella,
          tetanus,
          typhoid,
          varicella,
          yellowFever,
          zoster,
        ],
        scheduleSupportingData: scheduleSupportingData,
      );
}
