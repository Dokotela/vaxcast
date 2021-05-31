import 'dart:convert';
import 'dart:io';

import 'package:vax_cast/vax_cast.dart';

Future<void> main() async {
  var dir = Directory('./input');
  await for (var entity in dir.list(recursive: true, followLinks: false)) {
    var file = await File(entity.path).readAsString();
    var ag;
    if (jsonDecode(file)['antigenSupportingData'] != null) {
      ag = AntigenSupportingData.fromJson(
          jsonDecode(file)['antigenSupportingData']);
    } else {
      ag = AntigenSupportingData.fromJson(jsonDecode(file));
    }
    var newPath = entity.path.replaceAll('input', 'output');
    if(!(await File(newPath).exists())){
      await File(newPath).create();
    }
    await File(newPath).writeAsString(jsonEncode(ag.toJson()));
  }
}
