import 'dart:io';

import 'package:angel_hot/angel_hot.dart';

import 'lib/routes/routes.dart';

main() async {
  var vaxServer = new HotReloader(
    createServer,
    [
      new Directory('bin'),
      new Directory('src'),
      Uri.parse('package:angel_hot/angel_hot.dart'),
    ],
  );
  await vaxServer.startServer('127.0.0.1', 3000);
}
