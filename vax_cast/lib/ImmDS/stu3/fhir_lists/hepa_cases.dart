import 'package:fhir/stu3.dart';

Bundle hepaCases = Bundle(
  resourceType: 'Bundle',
  type: BundleType.searchset,
  entry: [
    BundleEntry(
      resource: List_(
        resourceType: 'List',
        status: List_Status.current,
        mode: List_Mode.working,
        entry: [
          ListEntry(item: Reference(reference: 'Patient/2013-0185')),
          ListEntry(item: Reference(reference: 'Patient/2013-0186')),
          ListEntry(item: Reference(reference: 'Patient/2013-0188')),
          ListEntry(item: Reference(reference: 'Patient/2013-0189')),
          ListEntry(item: Reference(reference: 'Patient/2013-0190')),
          ListEntry(item: Reference(reference: 'Patient/2013-0191')),
          ListEntry(item: Reference(reference: 'Patient/2013-0192')),
          ListEntry(item: Reference(reference: 'Patient/2013-0193')),
          ListEntry(item: Reference(reference: 'Patient/2013-0194')),
          ListEntry(item: Reference(reference: 'Patient/2013-0196')),
          ListEntry(item: Reference(reference: 'Patient/2013-0197')),
          ListEntry(item: Reference(reference: 'Patient/2019-0010')),
          ListEntry(item: Reference(reference: 'Patient/2019-0011')),
          ListEntry(item: Reference(reference: 'Patient/2019-0012')),
          ListEntry(item: Reference(reference: 'Patient/2019-0013')),
          ListEntry(item: Reference(reference: 'Patient/2019-0014')),
          ListEntry(item: Reference(reference: 'Patient/2020-0001')),
        ],
      ),
    )
  ],
);
