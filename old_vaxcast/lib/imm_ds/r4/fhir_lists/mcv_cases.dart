import 'package:fhir/fhir_r4.dart';

Bundle mcvCases = Bundle(
  resourceType: 'Bundle',
  type: BundleType.searchset,
  entry: [
    BundleEntry(
      resource: List_(
        resourceType: 'List',
        status: List_Status.current,
        mode: List_Mode.working,
        entry: [
          ListEntry(item: Reference(reference: 'Patient/2013-0487')),
          ListEntry(item: Reference(reference: 'Patient/2013-0488')),
          ListEntry(item: Reference(reference: 'Patient/2013-0489')),
          ListEntry(item: Reference(reference: 'Patient/2013-0491')),
          ListEntry(item: Reference(reference: 'Patient/2013-0495')),
          ListEntry(item: Reference(reference: 'Patient/2013-0497')),
          ListEntry(item: Reference(reference: 'Patient/2013-0498')),
          ListEntry(item: Reference(reference: 'Patient/2013-0499')),
          ListEntry(item: Reference(reference: 'Patient/2013-0500')),
          ListEntry(item: Reference(reference: 'Patient/2013-0501')),
          ListEntry(item: Reference(reference: 'Patient/2013-0502')),
          ListEntry(item: Reference(reference: 'Patient/2013-0503')),
          ListEntry(item: Reference(reference: 'Patient/2013-0504')),
          ListEntry(item: Reference(reference: 'Patient/2013-0505')),
          ListEntry(item: Reference(reference: 'Patient/2013-0507')),
          ListEntry(item: Reference(reference: 'Patient/2013-0508')),
          ListEntry(item: Reference(reference: 'Patient/2013-0509')),
          ListEntry(item: Reference(reference: 'Patient/2013-0510')),
          ListEntry(item: Reference(reference: 'Patient/2013-0511')),
          ListEntry(item: Reference(reference: 'Patient/2013-0512')),
        ],
      ),
    )
  ],
);
