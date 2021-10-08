// import 'dart:convert';
// import 'dart:io';

// import 'package:vax_cast/vax_cast.dart';

// Future<void> main() async {
//   var dir = Directory('./input');
//   await writeOut(dir);
//   dir = Directory('../vax_cast_supporting_data/assets/new_json');
//   await writeOut(dir);
// }

// Future writeOut(Directory dir) async {
//   final encoder = JsonEncoder.withIndent('  ');
//   await for (var entity in dir.list(recursive: true, followLinks: false)) {
//     var file = await File(entity.path).readAsString();
//     var ag;
//     if (jsonDecode(file)['antigenSupportingData'] != null) {
//       ag = AntigenSupportingData.fromJson(
//           jsonDecode(file)['antigenSupportingData']);
//     } else {
//       ag = AntigenSupportingData.fromJson(jsonDecode(file));
//     }
//     var newPath = 'output/' + entity.path.toString().split('/').last;
//     if (!(await File(newPath).exists())) {
//       await File(newPath).create();
//     }
//     await File(newPath).writeAsString(encoder.convert(ag.toJson()));
//   }
// }
