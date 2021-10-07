import 'package:generate_vax_cast/create_supporting_data/create_supporting_data.dart';

import 'utils/download_sheets.dart';

Future<void> main() async {
  final supportingStringsList = await downloadSheets();

  await createSupportingData(supportingStringsList);
}
