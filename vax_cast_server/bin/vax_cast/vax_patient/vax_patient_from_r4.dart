part of 'vax_patient.dart';

VaxPatient _$VaxPatientFromR4({
  r4.Patient patient,
  List<r4.Immunization> immunizations,
  List<r4.Condition> conditions,
  List<r4.AllergyIntolerance> allergies,
  String assessmentDate,
}) {
  Tuple2<List<Dose>, List<Dose>> pastDoses = getPastR4Doses(immunizations);
  VaxDate assessDate = VaxDate.fromString(assessmentDate);
  assessDate = assessDate.year == 2999 ? VaxDate.now() : assessDate;
  return VaxPatient(
    dob: VaxDate.fromString(patient.birthDate.toString()),
    sex: getGender(patient?.gender),
    id: patient.id.toString(),
    conditions: <Obs>[],
    assessmentDate: assessDate,
    pastImmunizations: pastDoses.value1,
    liveVirusList: pastDoses.value2,
  );
}

Tuple2<List<Dose>, List<Dose>> getPastR4Doses(
    List<r4.Immunization> immunizations) {
  List<Dose> pastImmunizations = [];
  List<Dose> liveVirusList = [];
  if (immunizations?.isNotEmpty ?? false)
    immunizations.forEach(
      (vax) {
        var newDose = getNewR4Dose(vax);
        pastImmunizations.add(newDose);
        var index = liveIndex(newDose.cvx);
        if (index != -1) {
          liveVirusList.add(newDose);
        }
      },
    );
  return Tuple2(pastImmunizations, liveVirusList);
}

Dose getNewR4Dose(r4.Immunization vax) => Dose(
      doseId: vax.id.toString(),
      vol: vax.doseQuantity.toString(),
      dateGiven: VaxDate.fromString(vax.occurrenceDateTime.toString()),
      cvx: _$StringToCvx[vax.vaccineCode.coding[0].code.toString().length == 1
          ? '0' + vax.vaccineCode.coding[0].code.toString()
          : vax.vaccineCode.coding[0].code.toString()],
      mvx: vax.vaccineCode.coding.length > 1
          ? vax.vaccineCode.coding[1].code.toString()
          : null,
      antigens: listAgForCvx(_$StringToCvx[
          vax.vaccineCode.coding[0].code.toString().length == 1
              ? '0' + vax.vaccineCode.coding[0].code.toString()
              : vax.vaccineCode.coding[0].code.toString()]),
      evaluation: r4checkForInvalidReasons(vax),
    );

Tuple2<EvalStatus, EvalReason> r4checkForInvalidReasons(r4.Immunization vax) {
  if (VaxDate.fromString(vax.expirationDate.toString()) <
      VaxDate.fromString(vax.occurrenceDateTime.toString())) {
    return Tuple2(EvalStatus.notValid, EvalReason.expired);
  }
  if (vax.isSubpotent.toString() == 'true') {
    vax.subpotentReason.forEach((reason) {
      reason.coding.forEach((coding) {
        if (coding.code.toString() == 'partial') {
          return Tuple2(EvalStatus.notValid, EvalReason.quantity);
        }
        if (coding.code.toString() == 'coldchainbreak') {
          return Tuple2(EvalStatus.notValid, EvalReason.storage);
        }
        if (coding.code.toString() == 'recall') {
          return Tuple2(EvalStatus.notValid, EvalReason.recall);
        }
      });
    });
  }
  return Tuple2(EvalStatus.notEvaluated, EvalReason.notEvaluated);
}

List<Obs> getR4Conditions(List<r4.Condition> conditions) {
  List<Obs> conditionList = [];
  conditions.forEach((condition) {
    var condIndex = condition.code.coding
        .indexWhere((coding) => coding.system.toString().contains('snomed'));
    if (condIndex != -1) {
      SupportingData.scheduleSupportingData.observations.observation
          .forEach((observation) {
        if (observation?.codedValues?.codedValue ?? false) {
          for (final codedValue in observation.codedValues.codedValue) {
            if (condition.code.coding[condIndex].system.toString() ==
                codedValue.code.toString()) {
              conditionList.add(observation.observationCode);
            }
          }
        }
      });
    }
  });
  return conditionList;
}
