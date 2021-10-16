import 'package:fhir/r4.dart' as r4;
import 'package:vaxcast/vaxcast.dart';

void cvxToAntigens(List<r4.Immunization> immunizations) {}

class Dose {
  String? doseId;
  String? volume;
  VaxDate dateGiven;
  Cvx cvx;
  String? mvx;
  List<TargetDisease>? antigens;
  EvalStatus? evalStatus;
  EvalReason? evalReason;

  Dose({
    this.doseId,
    this.volume,
    required this.cvx,
    this.mvx,
    required this.dateGiven,
    this.antigens,
    this.evalStatus,
    this.evalReason,
  });
}

Dose getNewR4Dose(r4.Immunization immunization) {
  EvalStatus? status;
  EvalReason? reason;
  if (VaxDate.fromString(immunization.expirationDate.toString()) <
      VaxDate.fromString(immunization.occurrenceDateTime.toString())) {
    status = EvalStatus.notValid;
    reason = EvalReason.expired;
  }
  if (immunization.isSubpotent.toString() == 'true') {
    immunization.subpotentReason?.forEach((subpotentReason) {
      subpotentReason.coding?.forEach((coding) {
        if (coding.code.toString() == 'partial') {
          status = EvalStatus.notValid;
          reason = EvalReason.quantity;
        }
        if (coding.code.toString() == 'coldchainbreak') {
          status = EvalStatus.notValid;
          reason = EvalReason.storage;
        }
        if (coding.code.toString() == 'recall') {
          status = EvalStatus.notValid;
          reason = EvalReason.recall;
        }
      });
    });
  }
  return Dose(
    doseId: immunization.id.toString(),
    volume: immunization.doseQuantity.toString(),
    dateGiven: VaxDate.fromString(immunization.occurrenceDateTime.toString()),
    cvx: codingToCvx(immunization.vaccineCode.coding),
    mvx: codingToMvx(immunization.vaccineCode.coding),
    antigens: listAgForCvx(codingToCvx(immunization.vaccineCode.coding)),
    evalStatus: status,
    evalReason: reason,
  );
}

Cvx codingToCvx(List<r4.Coding>? codings) {
  if (codings == null) {
    throw Exception('No Cvx Code passed');
  }
  final coding = codings.firstWhere(
      (element) => element.system.toString() == 'http://hl7.org/fhir/sid/cvx');
  final cvx = stringToEnum(Cvx, coding.code.toString());
  if (cvx == null) {
    throw Exception('Invalid Cvx code');
  } else {
    return cvx as Cvx;
  }
}

String? codingToMvx(List<r4.Coding>? codings) => codings == null
    ? null
    : codings
        .firstWhere((element) =>
            element.system.toString() ==
            'http://terminology.hl7.org/NamingSystem/MVX')
        .code
        ?.toString();

List<TargetDisease>? listAgForCvx(Cvx cvx) =>
    simpleCvxMap[enumToString(cvx)]?.antigens;
