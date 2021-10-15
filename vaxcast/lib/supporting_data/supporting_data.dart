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
          covid_19,
          diphtheria,
          ebola,
          hepa,
          hepb,
          hib,
          hpv,
          influenza,
          japanese_encephalitis,
          measles,
          meningococcal_b,
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
          yellow_fever,
          zoster,
        ],
        scheduleSupportingData: scheduleSupportingData,
      );
}
