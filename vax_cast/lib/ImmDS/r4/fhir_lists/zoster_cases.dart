import 'package:fhir/r4.dart';

Bundle zosterCases = Bundle(
  resourceType: 'Bundle',
  type: BundleType.searchset,
  entry: [
    BundleEntry(
      resource: List_(
        resourceType: 'List',
        status: List_Status.current,
        mode: List_Mode.working,
        entry: [
          ListEntry(item: Reference(reference: 'Patient/2015-0013')),
          ListEntry(item: Reference(reference: 'Patient/2015-0014')),
          ListEntry(item: Reference(reference: 'Patient/2015-0016')),
          ListEntry(item: Reference(reference: 'Patient/2015-0018')),
          ListEntry(item: Reference(reference: 'Patient/2015-0019')),
          ListEntry(item: Reference(reference: 'Patient/2018-0001')),
          ListEntry(item: Reference(reference: 'Patient/2018-0002')),
          ListEntry(item: Reference(reference: 'Patient/2018-0003')),
          ListEntry(item: Reference(reference: 'Patient/2018-0004')),
          ListEntry(item: Reference(reference: 'Patient/2018-0005')),
          ListEntry(item: Reference(reference: 'Patient/2018-0006')),
          ListEntry(item: Reference(reference: 'Patient/2018-0008')),
          ListEntry(item: Reference(reference: 'Patient/2018-0009')),
          ListEntry(item: Reference(reference: 'Patient/2018-0011')),
          ListEntry(item: Reference(reference: 'Patient/2018-0012')),
          ListEntry(item: Reference(reference: 'Patient/2018-0013')),
          ListEntry(item: Reference(reference: 'Patient/2018-0014')),
          ListEntry(item: Reference(reference: 'Patient/2019-0001')),
          ListEntry(item: Reference(reference: 'Patient/2019-0002')),
          ListEntry(item: Reference(reference: 'Patient/2019-0003')),
        ],
      ),
    )
  ],
);
