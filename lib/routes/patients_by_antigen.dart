import 'package:fhir/fhir_r4.dart' as r4;

import '../imm_ds/r4/fhir_lists/antigen_case_lists.dart' as r4Ag;

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
