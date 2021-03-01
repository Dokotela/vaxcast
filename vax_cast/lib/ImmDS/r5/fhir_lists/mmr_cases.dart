import 'package:fhir/r5.dart';

Bundle mmrCases = Bundle(
  resourceType: 'Bundle',
  type: BundleType.searchset,
  entry: [
    BundleEntry(
      resource: List_(
        resourceType: 'List',
        status: List_Status.current,
        mode: List_Mode.working,
        entry: [
          ListEntry(item: Reference(reference: 'Patient/2013-0523')),
          ListEntry(item: Reference(reference: 'Patient/2013-0524')),
          ListEntry(item: Reference(reference: 'Patient/2013-0525')),
          ListEntry(item: Reference(reference: 'Patient/2013-0528')),
          ListEntry(item: Reference(reference: 'Patient/2013-0530')),
          ListEntry(item: Reference(reference: 'Patient/2013-0531')),
          ListEntry(item: Reference(reference: 'Patient/2013-0534')),
          ListEntry(item: Reference(reference: 'Patient/2013-0535')),
          ListEntry(item: Reference(reference: 'Patient/2013-0536')),
          ListEntry(item: Reference(reference: 'Patient/2013-0537')),
          ListEntry(item: Reference(reference: 'Patient/2013-0538')),
          ListEntry(item: Reference(reference: 'Patient/2013-0539')),
          ListEntry(item: Reference(reference: 'Patient/2013-0540')),
          ListEntry(item: Reference(reference: 'Patient/2013-0541')),
          ListEntry(item: Reference(reference: 'Patient/2013-0542')),
          ListEntry(item: Reference(reference: 'Patient/2013-0543')),
          ListEntry(item: Reference(reference: 'Patient/2013-0544')),
          ListEntry(item: Reference(reference: 'Patient/2013-0545')),
          ListEntry(item: Reference(reference: 'Patient/2013-0546')),
          ListEntry(item: Reference(reference: 'Patient/2013-0547')),
          ListEntry(item: Reference(reference: 'Patient/2013-0548')),
          ListEntry(item: Reference(reference: 'Patient/2013-0549')),
          ListEntry(item: Reference(reference: 'Patient/2013-0550')),
          ListEntry(item: Reference(reference: 'Patient/2013-0551')),
          ListEntry(item: Reference(reference: 'Patient/2013-0552')),
          ListEntry(item: Reference(reference: 'Patient/2013-0554')),
          ListEntry(item: Reference(reference: 'Patient/2013-0555')),
          ListEntry(item: Reference(reference: 'Patient/2013-0556')),
          ListEntry(item: Reference(reference: 'Patient/2013-0557')),
          ListEntry(item: Reference(reference: 'Patient/2013-0558')),
          ListEntry(item: Reference(reference: 'Patient/2013-0559')),
          ListEntry(item: Reference(reference: 'Patient/2013-0562')),
          ListEntry(item: Reference(reference: 'Patient/2013-0563')),
          ListEntry(item: Reference(reference: 'Patient/2013-0565')),
          ListEntry(item: Reference(reference: 'Patient/2013-0570')),
          ListEntry(item: Reference(reference: 'Patient/2013-0571')),
          ListEntry(item: Reference(reference: 'Patient/2013-0572')),
          ListEntry(item: Reference(reference: 'Patient/2013-0573')),
          ListEntry(item: Reference(reference: 'Patient/2013-0574')),
          ListEntry(item: Reference(reference: 'Patient/2015-0024')),
          ListEntry(item: Reference(reference: 'Patient/2019-0017')),
          ListEntry(item: Reference(reference: 'Patient/2019-0018')),
          ListEntry(item: Reference(reference: 'Patient/2019-0019')),
          ListEntry(item: Reference(reference: 'Patient/2019-0020')),
          ListEntry(item: Reference(reference: 'Patient/2019-0021')),
          ListEntry(item: Reference(reference: 'Patient/2019-0022')),
        ],
      ),
    )
  ],
);
