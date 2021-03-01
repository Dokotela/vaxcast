import 'package:fhir/stu3.dart';

Bundle hpvCases = Bundle(
  resourceType: 'Bundle',
  type: BundleType.searchset,
  entry: [
    BundleEntry(
      resource: List_(
        resourceType: 'List',
        status: List_Status.current,
        mode: List_Mode.working,
        entry: [
          ListEntry(item: Reference(reference: 'Patient/2013-0392')),
          ListEntry(item: Reference(reference: 'Patient/2013-0394')),
          ListEntry(item: Reference(reference: 'Patient/2013-0395')),
          ListEntry(item: Reference(reference: 'Patient/2013-0396')),
          ListEntry(item: Reference(reference: 'Patient/2013-0398')),
          ListEntry(item: Reference(reference: 'Patient/2013-0399')),
          ListEntry(item: Reference(reference: 'Patient/2013-0400')),
          ListEntry(item: Reference(reference: 'Patient/2013-0402')),
          ListEntry(item: Reference(reference: 'Patient/2013-0403')),
          ListEntry(item: Reference(reference: 'Patient/2013-0404')),
          ListEntry(item: Reference(reference: 'Patient/2013-0405')),
          ListEntry(item: Reference(reference: 'Patient/2013-0406')),
          ListEntry(item: Reference(reference: 'Patient/2013-0407')),
          ListEntry(item: Reference(reference: 'Patient/2013-0409')),
          ListEntry(item: Reference(reference: 'Patient/2013-0410')),
          ListEntry(item: Reference(reference: 'Patient/2013-0411')),
          ListEntry(item: Reference(reference: 'Patient/2013-0413')),
          ListEntry(item: Reference(reference: 'Patient/2013-0414')),
          ListEntry(item: Reference(reference: 'Patient/2013-0415')),
          ListEntry(item: Reference(reference: 'Patient/2013-0416')),
          ListEntry(item: Reference(reference: 'Patient/2013-0418')),
          ListEntry(item: Reference(reference: 'Patient/2013-0421')),
          ListEntry(item: Reference(reference: 'Patient/2013-0422')),
          ListEntry(item: Reference(reference: 'Patient/2013-0423')),
          ListEntry(item: Reference(reference: 'Patient/2013-0424')),
          ListEntry(item: Reference(reference: 'Patient/2013-0425')),
          ListEntry(item: Reference(reference: 'Patient/2013-0426')),
          ListEntry(item: Reference(reference: 'Patient/2013-0427')),
          ListEntry(item: Reference(reference: 'Patient/2013-0428')),
          ListEntry(item: Reference(reference: 'Patient/2013-0429')),
          ListEntry(item: Reference(reference: 'Patient/2013-0430')),
          ListEntry(item: Reference(reference: 'Patient/2013-0433')),
          ListEntry(item: Reference(reference: 'Patient/2013-0434')),
          ListEntry(item: Reference(reference: 'Patient/2013-0437')),
          ListEntry(item: Reference(reference: 'Patient/2013-0438')),
          ListEntry(item: Reference(reference: 'Patient/2013-0439')),
          ListEntry(item: Reference(reference: 'Patient/2013-0440')),
          ListEntry(item: Reference(reference: 'Patient/2013-0441')),
          ListEntry(item: Reference(reference: 'Patient/2013-0442')),
          ListEntry(item: Reference(reference: 'Patient/2013-0443')),
          ListEntry(item: Reference(reference: 'Patient/2013-0444')),
          ListEntry(item: Reference(reference: 'Patient/2013-0445')),
          ListEntry(item: Reference(reference: 'Patient/2013-0446')),
          ListEntry(item: Reference(reference: 'Patient/2013-0447')),
          ListEntry(item: Reference(reference: 'Patient/2013-0448')),
          ListEntry(item: Reference(reference: 'Patient/2013-0450')),
          ListEntry(item: Reference(reference: 'Patient/2013-0451')),
          ListEntry(item: Reference(reference: 'Patient/2013-0452')),
          ListEntry(item: Reference(reference: 'Patient/2013-0453')),
          ListEntry(item: Reference(reference: 'Patient/2013-0454')),
          ListEntry(item: Reference(reference: 'Patient/2013-0455')),
          ListEntry(item: Reference(reference: 'Patient/2013-0456')),
          ListEntry(item: Reference(reference: 'Patient/2013-0457')),
          ListEntry(item: Reference(reference: 'Patient/2013-0458')),
          ListEntry(item: Reference(reference: 'Patient/2013-0459')),
          ListEntry(item: Reference(reference: 'Patient/2013-0460')),
          ListEntry(item: Reference(reference: 'Patient/2013-0462')),
          ListEntry(item: Reference(reference: 'Patient/2013-0463')),
          ListEntry(item: Reference(reference: 'Patient/2013-0465')),
          ListEntry(item: Reference(reference: 'Patient/2013-0466')),
          ListEntry(item: Reference(reference: 'Patient/2013-0467')),
          ListEntry(item: Reference(reference: 'Patient/2013-0468')),
          ListEntry(item: Reference(reference: 'Patient/2013-0469')),
          ListEntry(item: Reference(reference: 'Patient/2013-0470')),
          ListEntry(item: Reference(reference: 'Patient/2013-0471')),
          ListEntry(item: Reference(reference: 'Patient/2013-0472')),
          ListEntry(item: Reference(reference: 'Patient/2013-0473')),
          ListEntry(item: Reference(reference: 'Patient/2013-0474')),
          ListEntry(item: Reference(reference: 'Patient/2013-0475')),
          ListEntry(item: Reference(reference: 'Patient/2013-0476')),
          ListEntry(item: Reference(reference: 'Patient/2013-0477')),
          ListEntry(item: Reference(reference: 'Patient/2013-0478')),
          ListEntry(item: Reference(reference: 'Patient/2013-0480')),
          ListEntry(item: Reference(reference: 'Patient/2013-0481')),
          ListEntry(item: Reference(reference: 'Patient/2013-0482')),
          ListEntry(item: Reference(reference: 'Patient/2013-0483')),
          ListEntry(item: Reference(reference: 'Patient/2013-0484')),
          ListEntry(item: Reference(reference: 'Patient/2013-0485')),
          ListEntry(item: Reference(reference: 'Patient/2013-0486')),
          ListEntry(item: Reference(reference: 'Patient/2016-0013')),
          ListEntry(item: Reference(reference: 'Patient/2016-0015')),
          ListEntry(item: Reference(reference: 'Patient/2016-0016')),
          ListEntry(item: Reference(reference: 'Patient/2016-0017')),
          ListEntry(item: Reference(reference: 'Patient/2016-0018')),
          ListEntry(item: Reference(reference: 'Patient/2016-0019')),
          ListEntry(item: Reference(reference: 'Patient/2016-0020')),
          ListEntry(item: Reference(reference: 'Patient/2016-0021')),
          ListEntry(item: Reference(reference: 'Patient/2016-0023')),
          ListEntry(item: Reference(reference: 'Patient/2016-0024')),
          ListEntry(item: Reference(reference: 'Patient/2017-0001')),
          ListEntry(item: Reference(reference: 'Patient/2019-0006')),
          ListEntry(item: Reference(reference: 'Patient/2019-0007')),
        ],
      ),
    )
  ],
);
