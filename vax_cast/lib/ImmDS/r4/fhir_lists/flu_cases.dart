import 'package:fhir/r4.dart';

Bundle fluCases = Bundle(
  resourceType: 'Bundle',
  type: BundleType.searchset,
  entry: [
    BundleEntry(
      resource: List_(
        resourceType: 'List',
        status: List_Status.current,
        mode: List_Mode.working,
        entry: [
          ListEntry(item: Reference(reference: 'Patient/2013-0167')),
          ListEntry(item: Reference(reference: 'Patient/2013-0168')),
          ListEntry(item: Reference(reference: 'Patient/2013-0169')),
          ListEntry(item: Reference(reference: 'Patient/2013-0170')),
          ListEntry(item: Reference(reference: 'Patient/2013-0171')),
          ListEntry(item: Reference(reference: 'Patient/2013-0172')),
          ListEntry(item: Reference(reference: 'Patient/2013-0178')),
          ListEntry(item: Reference(reference: 'Patient/2013-0179')),
          ListEntry(item: Reference(reference: 'Patient/2013-0183')),
          ListEntry(item: Reference(reference: 'Patient/2013-0184')),
          ListEntry(item: Reference(reference: 'Patient/2016-0012')),
          ListEntry(item: Reference(reference: 'Patient/2018-0024')),
          ListEntry(item: Reference(reference: 'Patient/2018-0025')),
          ListEntry(item: Reference(reference: 'Patient/2018-0026')),
          ListEntry(item: Reference(reference: 'Patient/2019-0004')),
          ListEntry(item: Reference(reference: 'Patient/2019-0005')),
          ListEntry(item: Reference(reference: 'Patient/2019-0015')),
          ListEntry(item: Reference(reference: 'Patient/2019-0016')),
        ],
      ),
    )
  ],
);
