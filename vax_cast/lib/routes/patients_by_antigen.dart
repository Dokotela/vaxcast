import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/stu3.dart' as stu3;
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;

import '../ImmDS/dstu2/fhir_lists/antigen_case_lists.dart' as dstu2Ag;
import '../ImmDS/stu3/fhir_lists/antigen_case_lists.dart' as stu3Ag;
import '../ImmDS/r4/fhir_lists/antigen_case_lists.dart' as r4Ag;
import '../ImmDS/r5/fhir_lists/antigen_case_lists.dart' as r5Ag;

dynamic patientsByAntigen(String version, String antigen) {
  switch (version) {
    case 'dstu2':
      return dstu2AntigenBundle(antigen);
    case 'stu3':
      return stu3AntigenBundle(antigen);
    case 'r4':
      return r4AntigenBundle(antigen);
    case 'r5':
      return r5AntigenBundle(antigen);
  }
}

dstu2.Bundle dstu2AntigenBundle(String antigen) {
  switch (antigen) {
    case 'dtap':
      return dstu2Ag.dtapCases;
    case 'flu':
      return dstu2Ag.fluCases;
    case 'hepa':
      return dstu2Ag.hepaCases;
    case 'hepb':
      return dstu2Ag.hepbCases;
    case 'hib':
      return dstu2Ag.dtapCases;
    case 'hpv':
      return dstu2Ag.dtapCases;
    case 'mcv':
      return dstu2Ag.dtapCases;
    case 'mmr':
      return dstu2Ag.dtapCases;
    case 'pcv':
      return dstu2Ag.dtapCases;
    case 'pol':
      return dstu2Ag.dtapCases;
    case 'rota':
      return dstu2Ag.dtapCases;
    case 'var':
      return dstu2Ag.dtapCases;
    case 'zoster':
      return dstu2Ag.dtapCases;
    default:
      return null;
  }
}

stu3.Bundle stu3AntigenBundle(String antigen) {
  switch (antigen) {
    case 'dtap':
      return stu3Ag.dtapCases;
    case 'flu':
      return stu3Ag.fluCases;
    case 'hepa':
      return stu3Ag.hepaCases;
    case 'hepb':
      return stu3Ag.hepbCases;
    case 'hib':
      return stu3Ag.dtapCases;
    case 'hpv':
      return stu3Ag.dtapCases;
    case 'mcv':
      return stu3Ag.dtapCases;
    case 'mmr':
      return stu3Ag.dtapCases;
    case 'pcv':
      return stu3Ag.dtapCases;
    case 'pol':
      return stu3Ag.dtapCases;
    case 'rota':
      return stu3Ag.dtapCases;
    case 'var':
      return stu3Ag.dtapCases;
    case 'zoster':
      return stu3Ag.dtapCases;
    default:
      return null;
  }
}

r4.Bundle r4AntigenBundle(String antigen) {
  switch (antigen) {
    case 'dtap':
      return r4Ag.dtapCases;
    case 'flu':
      return r4Ag.fluCases;
    case 'hepa':
      return r4Ag.hepaCases;
    case 'hepb':
      return r4Ag.hepbCases;
    case 'hib':
      return r4Ag.dtapCases;
    case 'hpv':
      return r4Ag.dtapCases;
    case 'mcv':
      return r4Ag.dtapCases;
    case 'mmr':
      return r4Ag.dtapCases;
    case 'pcv':
      return r4Ag.dtapCases;
    case 'pol':
      return r4Ag.dtapCases;
    case 'rota':
      return r4Ag.dtapCases;
    case 'var':
      return r4Ag.dtapCases;
    case 'zoster':
      return r4Ag.dtapCases;
    default:
      return null;
  }
}

r5.Bundle r5AntigenBundle(String antigen) {
  switch (antigen) {
    case 'dtap':
      return r5Ag.dtapCases;
    case 'flu':
      return r5Ag.fluCases;
    case 'hepa':
      return r5Ag.hepaCases;
    case 'hepb':
      return r5Ag.hepbCases;
    case 'hib':
      return r5Ag.dtapCases;
    case 'hpv':
      return r5Ag.dtapCases;
    case 'mcv':
      return r5Ag.dtapCases;
    case 'mmr':
      return r5Ag.dtapCases;
    case 'pcv':
      return r5Ag.dtapCases;
    case 'pol':
      return r5Ag.dtapCases;
    case 'rota':
      return r5Ag.dtapCases;
    case 'var':
      return r5Ag.dtapCases;
    case 'zoster':
      return r5Ag.dtapCases;
    default:
      return null;
  }
}
