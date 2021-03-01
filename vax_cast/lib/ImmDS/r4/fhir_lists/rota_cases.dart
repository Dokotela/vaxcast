import 'package:fhir/r4.dart';

Bundle rotaCases = Bundle(
  resourceType: 'Bundle',
  type: BundleType.searchset,
  entry: [
    BundleEntry(
      resource: List_(
        resourceType: 'List',
        status: List_Status.current,
        mode: List_Mode.working,
        entry: [
          ListEntry(item: Reference(reference: 'Patient/2013-0753')),
          ListEntry(item: Reference(reference: 'Patient/2013-0754')),
          ListEntry(item: Reference(reference: 'Patient/2013-0755')),
          ListEntry(item: Reference(reference: 'Patient/2013-0756')),
          ListEntry(item: Reference(reference: 'Patient/2013-0757')),
          ListEntry(item: Reference(reference: 'Patient/2013-0758')),
          ListEntry(item: Reference(reference: 'Patient/2013-0759')),
          ListEntry(item: Reference(reference: 'Patient/2013-0760')),
          ListEntry(item: Reference(reference: 'Patient/2013-0761')),
          ListEntry(item: Reference(reference: 'Patient/2013-0762')),
          ListEntry(item: Reference(reference: 'Patient/2013-0763')),
          ListEntry(item: Reference(reference: 'Patient/2013-0764')),
          ListEntry(item: Reference(reference: 'Patient/2013-0765')),
          ListEntry(item: Reference(reference: 'Patient/2013-0766')),
          ListEntry(item: Reference(reference: 'Patient/2013-0767')),
          ListEntry(item: Reference(reference: 'Patient/2013-0768')),
          ListEntry(item: Reference(reference: 'Patient/2013-0769')),
          ListEntry(item: Reference(reference: 'Patient/2013-0770')),
          ListEntry(item: Reference(reference: 'Patient/2013-0771')),
          ListEntry(item: Reference(reference: 'Patient/2013-0772')),
          ListEntry(item: Reference(reference: 'Patient/2013-0773')),
          ListEntry(item: Reference(reference: 'Patient/2013-0774')),
          ListEntry(item: Reference(reference: 'Patient/2013-0775')),
          ListEntry(item: Reference(reference: 'Patient/2013-0776')),
          ListEntry(item: Reference(reference: 'Patient/2013-0777')),
          ListEntry(item: Reference(reference: 'Patient/2013-0778')),
          ListEntry(item: Reference(reference: 'Patient/2013-0781')),
          ListEntry(item: Reference(reference: 'Patient/2013-0782')),
          ListEntry(item: Reference(reference: 'Patient/2013-0783')),
          ListEntry(item: Reference(reference: 'Patient/2013-0784')),
          ListEntry(item: Reference(reference: 'Patient/2013-0785')),
          ListEntry(item: Reference(reference: 'Patient/2013-0786')),
        ],
      ),
    )
  ],
);
