import 'package:fhir/r4.dart';

Bundle hepbCases = Bundle(
  resourceType: 'Bundle',
  type: BundleType.searchset,
  entry: [
    BundleEntry(
      resource: List_(
        resourceType: 'List',
        status: List_Status.current,
        mode: List_Mode.working,
        entry: [
          ListEntry(item: Reference(reference: 'Patient/2013-0198')),
          ListEntry(item: Reference(reference: 'Patient/2013-0199')),
          ListEntry(item: Reference(reference: 'Patient/2013-0200')),
          ListEntry(item: Reference(reference: 'Patient/2013-0201')),
          ListEntry(item: Reference(reference: 'Patient/2013-0202')),
          ListEntry(item: Reference(reference: 'Patient/2013-0203')),
          ListEntry(item: Reference(reference: 'Patient/2013-0204')),
          ListEntry(item: Reference(reference: 'Patient/2013-0205')),
          ListEntry(item: Reference(reference: 'Patient/2013-0206')),
          ListEntry(item: Reference(reference: 'Patient/2013-0207')),
          ListEntry(item: Reference(reference: 'Patient/2013-0208')),
          ListEntry(item: Reference(reference: 'Patient/2013-0209')),
          ListEntry(item: Reference(reference: 'Patient/2013-0210')),
          ListEntry(item: Reference(reference: 'Patient/2013-0211')),
          ListEntry(item: Reference(reference: 'Patient/2013-0212')),
          ListEntry(item: Reference(reference: 'Patient/2013-0213')),
          ListEntry(item: Reference(reference: 'Patient/2013-0216')),
          ListEntry(item: Reference(reference: 'Patient/2013-0219')),
          ListEntry(item: Reference(reference: 'Patient/2013-0220')),
          ListEntry(item: Reference(reference: 'Patient/2013-0221')),
          ListEntry(item: Reference(reference: 'Patient/2013-0222')),
          ListEntry(item: Reference(reference: 'Patient/2013-0223')),
          ListEntry(item: Reference(reference: 'Patient/2013-0224')),
          ListEntry(item: Reference(reference: 'Patient/2013-0225')),
          ListEntry(item: Reference(reference: 'Patient/2013-0227')),
          ListEntry(item: Reference(reference: 'Patient/2013-0228')),
          ListEntry(item: Reference(reference: 'Patient/2013-0229')),
          ListEntry(item: Reference(reference: 'Patient/2013-0230')),
          ListEntry(item: Reference(reference: 'Patient/2013-0231')),
          ListEntry(item: Reference(reference: 'Patient/2013-0232')),
          ListEntry(item: Reference(reference: 'Patient/2013-0233')),
          ListEntry(item: Reference(reference: 'Patient/2013-0234')),
          ListEntry(item: Reference(reference: 'Patient/2013-0235')),
          ListEntry(item: Reference(reference: 'Patient/2013-0236')),
          ListEntry(item: Reference(reference: 'Patient/2013-0237')),
          ListEntry(item: Reference(reference: 'Patient/2013-0238')),
          ListEntry(item: Reference(reference: 'Patient/2013-0239')),
          ListEntry(item: Reference(reference: 'Patient/2013-0241')),
          ListEntry(item: Reference(reference: 'Patient/2013-0243')),
          ListEntry(item: Reference(reference: 'Patient/2013-0244')),
          ListEntry(item: Reference(reference: 'Patient/2013-0245')),
          ListEntry(item: Reference(reference: 'Patient/2013-0246')),
          ListEntry(item: Reference(reference: 'Patient/2013-0247')),
          ListEntry(item: Reference(reference: 'Patient/2013-0248')),
          ListEntry(item: Reference(reference: 'Patient/2013-0249')),
          ListEntry(item: Reference(reference: 'Patient/2013-0250')),
          ListEntry(item: Reference(reference: 'Patient/2013-0251')),
          ListEntry(item: Reference(reference: 'Patient/2013-0255')),
          ListEntry(item: Reference(reference: 'Patient/2013-0256')),
          ListEntry(item: Reference(reference: 'Patient/2013-0257')),
          ListEntry(item: Reference(reference: 'Patient/2013-0258')),
          ListEntry(item: Reference(reference: 'Patient/2013-0259')),
          ListEntry(item: Reference(reference: 'Patient/2013-0260')),
          ListEntry(item: Reference(reference: 'Patient/2013-0261')),
          ListEntry(item: Reference(reference: 'Patient/2013-0262')),
          ListEntry(item: Reference(reference: 'Patient/2013-0263')),
          ListEntry(item: Reference(reference: 'Patient/2013-0264')),
          ListEntry(item: Reference(reference: 'Patient/2013-0266')),
          ListEntry(item: Reference(reference: 'Patient/2013-0267')),
          ListEntry(item: Reference(reference: 'Patient/2013-0268')),
          ListEntry(item: Reference(reference: 'Patient/2013-0269')),
          ListEntry(item: Reference(reference: 'Patient/2013-0270')),
          ListEntry(item: Reference(reference: 'Patient/2013-0271')),
          ListEntry(item: Reference(reference: 'Patient/2016-0022')),
          ListEntry(item: Reference(reference: 'Patient/2017-0002')),
          ListEntry(item: Reference(reference: 'Patient/2018-0015')),
          ListEntry(item: Reference(reference: 'Patient/2018-0016')),
          ListEntry(item: Reference(reference: 'Patient/2018-0017')),
          ListEntry(item: Reference(reference: 'Patient/2018-0018')),
          ListEntry(item: Reference(reference: 'Patient/2018-0019')),
          ListEntry(item: Reference(reference: 'Patient/2018-0020')),
          ListEntry(item: Reference(reference: 'Patient/2018-0021')),
          ListEntry(item: Reference(reference: 'Patient/2018-0022')),
          ListEntry(item: Reference(reference: 'Patient/2018-0023')),
        ],
      ),
    )
  ],
);
