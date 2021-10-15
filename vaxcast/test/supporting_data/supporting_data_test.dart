import 'package:collection/collection.dart';
import 'package:test/test.dart';
import 'package:vaxcast/supporting_data/files/files.dart';
import 'package:vaxcast/vaxcast.dart';

void main() {
  final fromFile = SupportingData.fromFile();
  final fromJson = SupportingData.fromJson({
    "antigenSupportingData": [
      cholera.toJson(),
      covid_19.toJson(),
      diphtheria.toJson(),
      ebola.toJson(),
      hepa.toJson(),
      hepb.toJson(),
      hib.toJson(),
      hpv.toJson(),
      influenza.toJson(),
      japanese_encephalitis.toJson(),
      measles.toJson(),
      meningococcal_b.toJson(),
      meningococcal.toJson(),
      mumps.toJson(),
      pertussis.toJson(),
      pneumococcal.toJson(),
      polio.toJson(),
      rabies.toJson(),
      rubella.toJson(),
      tetanus.toJson(),
      typhoid.toJson(),
      varicella.toJson(),
      yellow_fever.toJson(),
      zoster.toJson(),
    ],
    "scheduleSupportingData": scheduleSupportingData.toJson(),
  });
  test('Overall', () {
    expect(DeepCollectionEquality().equals(fromFile, fromJson), true);
  });
}
