import 'package:fhir/r4.dart';

Code getStatusReason(String status) {
  switch (status) {
    case 'Age: Too Young':
      return Code('tooyoung');
    case 'Age: Too Old':
      return Code('tooold');
    case 'Live Virus Conflict':
      return Code('productconflict');
    case 'Interval: too short':
      return Code('tooyoung');
    default:
      return null;
  }
}

String seriesStatusCode(String status) {
  switch (status.toLowerCase()) {
    case 'complete':
      return 'complete';
    case 'not complete':
      return 'notComplete';
    case 'not recommended':
      return 'notRecommended';
    case 'immune':
      return 'immune';
    case 'contraindicated':
      return 'contraindicated';
    case 'aged out':
      return 'agedOut';
    case 'conditional':
      return 'conditional';
    default:
      return 'notComplete';
  }
}

String seriesStatusDisplay(String status) {
  switch (status.toLowerCase()) {
    case 'complete':
      return 'Complete';
    case 'not complete':
      return 'Not Complete';
    case 'not recommended':
      return 'Not Recommended';
    case 'immune':
      return 'Immune';
    case 'contraindicated':
      return 'Contraindicated';
    case 'aged out':
      return 'Aged Out';
    case 'conditional':
      return 'Conditional';
    default:
      return 'Not Complete';
  }
}
