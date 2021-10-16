import 'package:vaxcast/vaxcast.dart';

class AgByCvx {
  final String shortDescription;
  final List<TargetDisease> antigens;

  AgByCvx(this.shortDescription, this.antigens);
}

final Map<String, AgByCvx> simpleCvxMap = {
  '01': AgByCvx(
    'DTP',
    [TargetDisease.diptheria, TargetDisease.tetanus, TargetDisease.pertussis],
  ),
  '02': AgByCvx(
    'OPV',
    [TargetDisease.polio],
  ),
  '03': AgByCvx(
    'MMR',
    [TargetDisease.measles, TargetDisease.mumps, TargetDisease.rubella],
  ),
  '04': AgByCvx(
    'M/R',
    [TargetDisease.measles, TargetDisease.rubella],
  ),
  '05': AgByCvx(
    'measles',
    [TargetDisease.measles],
  ),
  '06': AgByCvx(
    'rubella',
    [TargetDisease.rubella],
  ),
  '07': AgByCvx(
    'mumps',
    [TargetDisease.mumps],
  ),
  '08': AgByCvx(
    'Hep B, adolescent or pediatric',
    [TargetDisease.hepB],
  ),
  '09': AgByCvx(
    'Td (adult), adsorbed',
    [TargetDisease.tetanus, TargetDisease.diptheria],
  ),
  '10': AgByCvx(
    'IPV',
    [TargetDisease.polio],
  ),
  '11': AgByCvx(
    'pertussis',
    [TargetDisease.pertussis],
  ),
  '15': AgByCvx(
    'influenza, split (incl. purified surface antigen)',
    [TargetDisease.influenza],
  ),
  '16': AgByCvx(
    'influenza, whole',
    [TargetDisease.influenza],
  ),
  '17': AgByCvx(
    'Hib, unspecified formulation',
    [TargetDisease.hib],
  ),
  '18': AgByCvx(
    'Rabies, intramuscular injection',
    [TargetDisease.rabies],
  ),
  '19': AgByCvx(
    'Bacillus Calmette-Guerin vaccine',
    [TargetDisease.tuberculosis],
  ),
  '20': AgByCvx(
    'DTaP',
    [TargetDisease.diptheria, TargetDisease.tetanus, TargetDisease.pertussis],
  ),
  '21': AgByCvx(
    'varicella',
    [TargetDisease.varicella],
  ),
  '22': AgByCvx(
    'DTP-Hib',
    [
      TargetDisease.diptheria,
      TargetDisease.tetanus,
      TargetDisease.pertussis,
      TargetDisease.hib
    ],
  ),
  '25': AgByCvx(
    'Typhoid oral, live, attenuated',
    [TargetDisease.typhoid],
  ),
  '26': AgByCvx(
    'cholera, unspecified formulation',
    [TargetDisease.cholera],
  ),
  '28': AgByCvx(
    'DT (pediatric)',
    [TargetDisease.diptheria, TargetDisease.tetanus],
  ),
  '31': AgByCvx(
    'Hep A, pediatric, unspecified formulation',
    [TargetDisease.hepA],
  ),
  '32': AgByCvx(
    'meningococcal MPSV4',
    [TargetDisease.meningococcal],
  ),
  '33': AgByCvx(
    'pneumococcal polysaccharide PPV23',
    [TargetDisease.pneumococcal],
  ),
  '35': AgByCvx(
    'tetanus toxoid, adsorbed',
    [TargetDisease.tetanus],
  ),
  '37': AgByCvx(
    'Yellow Fever',
    [TargetDisease.yellowFever],
  ),
  '38': AgByCvx(
    'rubella/mumps',
    [TargetDisease.rubella, TargetDisease.mumps],
  ),
  '39': AgByCvx(
    'Japanese encephalitis SC',
    [TargetDisease.japaneseEncephalitis],
  ),
  '40': AgByCvx(
    'rabies, intradermal injection',
    [TargetDisease.rabies],
  ),
  '41': AgByCvx(
    'typhoid, parenteral',
    [TargetDisease.typhoid],
  ),
  '42': AgByCvx(
    'Hep B, adolescent/high risk infant',
    [TargetDisease.hepB],
  ),
  '43': AgByCvx(
    'Hep B, adult',
    [TargetDisease.hepB],
  ),
  '44': AgByCvx(
    'Hep B, dialysis',
    [TargetDisease.hepB],
  ),
  '45': AgByCvx(
    'Hep B, unspecified formulation',
    [TargetDisease.hepB],
  ),
  '46': AgByCvx(
    'Hib (PRP-D)',
    [TargetDisease.hib],
  ),
  '47': AgByCvx(
    'Hib (HbOC)',
    [TargetDisease.hib],
  ),
  '48': AgByCvx(
    'Hib (PRP-T)',
    [TargetDisease.hib],
  ),
  '49': AgByCvx(
    'Hib (PRP-OMP)',
    [TargetDisease.hib],
  ),
  '50': AgByCvx(
    'DTaP-Hib',
    [
      TargetDisease.diptheria,
      TargetDisease.tetanus,
      TargetDisease.pertussis,
      TargetDisease.hib
    ],
  ),
  '51': AgByCvx(
    'Hib-Hep B',
    [TargetDisease.hib, TargetDisease.hepB],
  ),
  '53': AgByCvx(
    'typhoid, parenteral, AKD (U.S. military)',
    [TargetDisease.typhoid],
  ),
  '52': AgByCvx(
    'Hep A, adult',
    [TargetDisease.hepA],
  ),
  '62': AgByCvx(
    'HPV, quadrivalent',
    [TargetDisease.hpv],
  ),
  '74': AgByCvx(
    'rotavirus, tetravalent',
    [TargetDisease.rotavirus],
  ),
  '83': AgByCvx(
    'Hep A, ped/adol, 2 dose',
    [TargetDisease.hepA],
  ),
  '84': AgByCvx(
    'Hep A, ped/adol, 3 dose',
    [TargetDisease.hepA],
  ),
  '85': AgByCvx(
    'Hep A, unspecified formulation',
    [TargetDisease.hepA],
  ),
  '88': AgByCvx(
    'influenza, unspecified formulation',
    [TargetDisease.influenza],
  ),
  '89': AgByCvx(
    'polio, unspecified formulation',
    [TargetDisease.polio],
  ),
  '90': AgByCvx(
    'Rabies, unspecified formulation',
    [TargetDisease.rabies],
  ),
  '91': AgByCvx(
    'typhoid, unspecified formulation',
    [TargetDisease.typhoid],
  ),
  '94': AgByCvx(
    'MMRV',
    [
      TargetDisease.measles,
      TargetDisease.mumps,
      TargetDisease.rubella,
      TargetDisease.varicella
    ],
  ),
  '100': AgByCvx(
    'pneumococcal conjugate PCV 7',
    [TargetDisease.pneumococcal],
  ),
  '101': AgByCvx(
    'Typhoid capsular polysaccharide',
    [TargetDisease.typhoid],
  ),
  '102': AgByCvx(
    'DTP-Hib-Hep B',
    [
      TargetDisease.diptheria,
      TargetDisease.tetanus,
      TargetDisease.pertussis,
      TargetDisease.hib,
      TargetDisease.hepB
    ],
  ),
  '103': AgByCvx(
    'meningococcal C conjugate',
    [TargetDisease.meningococcal],
  ),
  '104': AgByCvx(
    'Hep A-Hep B',
    [TargetDisease.hepA, TargetDisease.hepB],
  ),
  '106': AgByCvx(
    'DTaP, 5 pertussis antigens',
    [TargetDisease.diptheria, TargetDisease.tetanus, TargetDisease.pertussis],
  ),
  '107': AgByCvx(
    'DTaP, unspecified formulation',
    [TargetDisease.diptheria, TargetDisease.tetanus, TargetDisease.pertussis],
  ),
  '108': AgByCvx(
    'meningococcal, unspecified formulation',
    [TargetDisease.meningococcal],
  ),
  '109': AgByCvx(
    'pneumococcal, unspecified formulation',
    [TargetDisease.pneumococcal],
  ),
  '110': AgByCvx(
    'DTaP-Hep B-IPV',
    [
      TargetDisease.diptheria,
      TargetDisease.tetanus,
      TargetDisease.pertussis,
      TargetDisease.hepB,
      TargetDisease.polio
    ],
  ),
  '111': AgByCvx(
    'influenza, live, intranasal',
    [TargetDisease.influenza],
  ),
  '112': AgByCvx(
    'tetanus toxoid, unspecified formulation',
    [TargetDisease.tetanus],
  ),
  '113': AgByCvx(
    'Td (adult) preservative free',
    [TargetDisease.tetanus, TargetDisease.diptheria],
  ),
  '114': AgByCvx(
    'meningococcal MCV4P',
    [TargetDisease.meningococcal],
  ),
  '115': AgByCvx(
    'Tdap',
    [TargetDisease.tetanus, TargetDisease.diptheria, TargetDisease.pertussis],
  ),
  '116': AgByCvx(
    'rotavirus, pentavalent',
    [TargetDisease.rotavirus],
  ),
  '118': AgByCvx(
    'HPV, bivalent',
    [TargetDisease.hpv],
  ),
  '119': AgByCvx(
    'rotavirus, monovalent',
    [TargetDisease.rotavirus],
  ),
  '120': AgByCvx(
    'DTaP-Hib-IPV',
    [
      TargetDisease.diptheria,
      TargetDisease.tetanus,
      TargetDisease.pertussis,
      TargetDisease.hib,
      TargetDisease.polio
    ],
  ),
  '121': AgByCvx(
    'Zoster live',
    [TargetDisease.varicella, TargetDisease.zoster],
  ),
  '122': AgByCvx(
    'rotavirus, unspecified formulation',
    [TargetDisease.rotavirus],
  ),
  '129': AgByCvx(
    'Japanese Encephalitis, unspecified formulation',
    [TargetDisease.japaneseEncephalitis],
  ),
  '130': AgByCvx(
    'DTaP-IPV',
    [
      TargetDisease.diptheria,
      TargetDisease.tetanus,
      TargetDisease.pertussis,
      TargetDisease.polio
    ],
  ),
  '132': AgByCvx(
    'DTaP-IPV-HIB-HEP B, historical',
    [
      TargetDisease.diptheria,
      TargetDisease.tetanus,
      TargetDisease.pertussis,
      TargetDisease.polio,
      TargetDisease.hib,
      TargetDisease.hepB
    ],
  ),
  '133': AgByCvx(
    'Pneumococcal conjugate PCV 13',
    [TargetDisease.pneumococcal],
  ),
  '134': AgByCvx(
    'Japanese Encephalitis, VC',
    [TargetDisease.japaneseEncephalitis],
  ),
  '135': AgByCvx(
    'Influenza, high dose seasonal',
    [TargetDisease.influenza],
  ),
  '136': AgByCvx(
    'Meningococcal MCV4O',
    [TargetDisease.meningococcal],
  ),
  '137': AgByCvx(
    'HPV, unspecified formulation',
    [TargetDisease.hpv],
  ),
  '138': AgByCvx(
    'Td (adult)',
    [TargetDisease.tetanus, TargetDisease.diptheria],
  ),
  '139': AgByCvx(
    'Td(adult) unspecified formulation',
    [TargetDisease.tetanus, TargetDisease.diptheria],
  ),
  '140': AgByCvx(
    'Influenza, seasonal, injectable, preservative free',
    [TargetDisease.influenza],
  ),
  '141': AgByCvx(
    'Influenza, seasonal, injectable',
    [TargetDisease.influenza],
  ),
  '142': AgByCvx(
    'tetanus toxoid, not adsorbed',
    [TargetDisease.tetanus],
  ),
  '144': AgByCvx(
    'influenza, seasonal, intradermal, preservative free',
    [TargetDisease.influenza],
  ),
  '146': AgByCvx(
    'DTaP,IPV,Hib,HepB',
    [
      TargetDisease.diptheria,
      TargetDisease.tetanus,
      TargetDisease.pertussis,
      TargetDisease.polio,
      TargetDisease.hib,
      TargetDisease.hepB
    ],
  ),
  '147': AgByCvx(
    'meningococcal MCV4, unspecified formulation',
    [TargetDisease.meningococcal],
  ),
  '148': AgByCvx(
    'Meningococcal C/Y-HIB PRP',
    [TargetDisease.meningococcal, TargetDisease.hib],
  ),
  '149': AgByCvx(
    'influenza, live, intranasal, quadrivalent',
    [TargetDisease.influenza],
  ),
  '150': AgByCvx(
    'influenza, injectable, quadrivalent, preservative free',
    [TargetDisease.influenza],
  ),
  '151': AgByCvx(
    'influenza, nasal, unspecified formulation',
    [TargetDisease.influenza],
  ),
  '152': AgByCvx(
    'Pneumococcal Conjugate, unspecified formulation',
    [TargetDisease.pneumococcal],
  ),
  '153': AgByCvx(
    'Influenza, injectable, Madin Darby Canine Kidney, preservative free',
    [TargetDisease.influenza],
  ),
  '155': AgByCvx(
    'influenza, recombinant, injectable, preservative free',
    [TargetDisease.influenza],
  ),
  '158': AgByCvx(
    'influenza, injectable, quadrivalent',
    [TargetDisease.influenza],
  ),
  '161': AgByCvx(
    'Influenza, injectable,quadrivalent, preservative free, pediatric',
    [TargetDisease.influenza],
  ),
  '162': AgByCvx(
    'Meningococcal B, recombinant',
    [TargetDisease.meningococcalB],
  ),
  '163': AgByCvx(
    'Meningococcal B, OMV',
    [TargetDisease.meningococcalB],
  ),
  '164': AgByCvx(
    'meningococcal B, unspecified',
    [TargetDisease.meningococcalB],
  ),
  '165': AgByCvx(
    'HPV9',
    [TargetDisease.hpv],
  ),
  '166': AgByCvx(
    'influenza, intradermal, quadrivalent, preservative free',
    [TargetDisease.influenza],
  ),
  '167': AgByCvx(
    'meningococcal, unknown serogroups',
    [TargetDisease.meningococcal, TargetDisease.meningococcalB],
  ),
  '168': AgByCvx(
    'influenza, trivalent, adjuvanted',
    [TargetDisease.influenza],
  ),
  '169': AgByCvx(
    'Hep A, live attenuated',
    [TargetDisease.hepA],
  ),
  '170': AgByCvx(
    'DTAP/IPV/HIB - non-US',
    [
      TargetDisease.diptheria,
      TargetDisease.tetanus,
      TargetDisease.pertussis,
      TargetDisease.polio,
      TargetDisease.hib
    ],
  ),
  '171': AgByCvx(
    'Influenza, injectable, MDCK, preservative free, quadrivalent',
    [TargetDisease.influenza],
  ),
  '172': AgByCvx(
    'cholera, WC-rBS',
    [TargetDisease.cholera],
  ),
  '173': AgByCvx(
    'cholera, BivWC',
    [TargetDisease.cholera],
  ),
  '174': AgByCvx(
    'cholera, live attenuated',
    [TargetDisease.cholera],
  ),
  '175': AgByCvx(
    'Rabies - IM Diploid cell culture',
    [TargetDisease.rabies],
  ),
  '176': AgByCvx(
    'Rabies - IM fibroblast culture',
    [TargetDisease.rabies],
  ),
  '177': AgByCvx(
    'pneumococcal conjugate PCV10',
    [TargetDisease.pneumococcal],
  ),
  '178': AgByCvx(
    'OPV bivalent',
    [TargetDisease.polio],
  ),
  '179': AgByCvx(
    'OPV ,monovalent, unspecified',
    [TargetDisease.polio],
  ),
  '182': AgByCvx(
    'OPV, Unspecified',
    [TargetDisease.polio],
  ),
  '183': AgByCvx(
    'Yellow fever vaccine - alt',
    [TargetDisease.yellowFever],
  ),
  '184': AgByCvx(
    'Yellow fever, unspecified formulation',
    [TargetDisease.yellowFever],
  ),
  '185': AgByCvx(
    'influenza, recombinant, quadrivalent,injectable, preservative free',
    [TargetDisease.influenza],
  ),
  '186': AgByCvx(
    'Influenza, injectable, MDCK, preservative, quadrivalent',
    [TargetDisease.influenza],
  ),
  '187': AgByCvx(
    'zoster recombinant',
    [TargetDisease.zoster],
  ),
  '188': AgByCvx(
    'zoster, unspecified formulation',
    [TargetDisease.zoster],
  ),
  '189': AgByCvx(
    'Hep B, adjuvanted',
    [TargetDisease.hepB],
  ),
  '190': AgByCvx(
    'Typhoid conjugate vaccine (TCV)',
    [TargetDisease.typhoid],
  ),
  '191': AgByCvx(
    'meningococcal A polysaccharide',
    [TargetDisease.meningococcal],
  ),
  '192': AgByCvx(
    'meningococcal AC polysaccharide',
    [TargetDisease.meningococcal],
  ),
  '193': AgByCvx(
    'Hep A-Hep B, pediatric/adolescent',
    [TargetDisease.hepA, TargetDisease.hepB],
  ),
  '194': AgByCvx(
    'Influenza, Southern Hemisphere, unspecified formulation',
    [TargetDisease.influenza],
  ),
  '195': AgByCvx(
    'DT, IPV adsorbed',
    [TargetDisease.diptheria, TargetDisease.tetanus, TargetDisease.polio],
  ),
  '196': AgByCvx(
    'Td, adsorbed, preservative free, adult use, Lf unspecified',
    [TargetDisease.tetanus, TargetDisease.diptheria],
  ),
  '198': AgByCvx(
    'DTP-hepB-Hib Pentavalent Non-US',
    [
      TargetDisease.diptheria,
      TargetDisease.tetanus,
      TargetDisease.pertussis,
      TargetDisease.hepB,
      TargetDisease.hib
    ],
  ),
};
