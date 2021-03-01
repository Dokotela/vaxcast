import 'dart:io';

import 'package:angel_hot/angel_hot.dart';

import 'lib/routes/routes.dart';

main() async {
  var vaxServer = new HotReloader(
    createServer,
    [
      new Directory('lib'),
      Uri.parse('package:angel_hot/angel_hot.dart'),
    ],
  );
  await vaxServer.startServer('0.0.0.0', 3000);
}
