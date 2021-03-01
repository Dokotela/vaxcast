import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:angel_framework/angel_framework.dart';
import 'package:angel_hot/angel_hot.dart';

main() async {
  var hot = new HotReloader(createServer, [
    'main.dart',
  ]);
  await hot.startServer('127.0.0.1', 3000);
}

Future<Angel> createServer() async {
  var app = new Angel()..serializer = json.encode;

  app.get('/', (req, res) => {'hello': 'hot world!'});
  app.get('/request', (req, res) {
    HttpRequest body = req.body;
    print('\n');
    print('BodySession: ${body.session}');
    print('\n');
    print(
        "Uri\n${req.uri.toString().replaceAll('&', '\n').replaceAll('?', '\n')}");
  });

  app.fallback((req, res) => throw new AngelHttpException.notFound());

  app.encoders.addAll({
    'gzip': gzip.encoder,
    'deflate': zlib.encoder,
  });

  return app;
}

// print('HEADERS');
// print(req.headers);
// print('Container: ${req.container}');
// print('ContentType: ${req.contentType}');
// print('Cookies: ${req.cookies}');
// print('Extension: ${req.extension}');
// print('HasParsedBody: ${req.hasParsedBody}');
// print('HostName: ${req.hostname}');
// print('IP: ${req.ip}');
// print('Method: ${req.method}');
// print('OriginalMethod: ${req.originalMethod}');
// print('Params: ${req.params}');
// print('Path: ${req.path}');
// print('RemoteAddress: ${req.remoteAddress}');
// print('ServiceParams: ${req.serviceParams}');

// var raw = req.rawRequest;
// print('RawCertificate: ${raw.certificate}');
// print('RawConnectionInfo: ${raw.connectionInfo}');
// print('RawContentLength: ${raw.contentLength}');
// print('RawCookies: ${raw.cookies}');
// print('RAWHEADERS\n${raw.headers}');
// print('RawMethod: ${raw.method}');
// print('RawPersistentConnection: ${raw.persistentConnection}');
// print('RawProtocolVersion: ${raw.protocolVersion}');
// // print(raw.requestUri);
// print('RawResponse: ${raw.response}');

// print('BodyCertificate: ${body.certificate}');
// print('BodyConnectionInfo: ${body.connectionInfo}');
// print('BodyContentLength: ${body.contentLength}');
// print('BodyCookies: ${body.cookies}');
// print('RAWHEADERS\n${body.headers}');
// print('BodyMethod: ${body.method}');
// print('BodyPersistentConnection: ${body.persistentConnection}');
// print('BodyProtocolVersion: ${body.protocolVersion}');
// // print(body.requestUri);
// print('BodyResponse: ${body.response}');
// print('\n');

// print('RawUri: ${raw.uri}');
// print('\n');
// print('BodyUri: ${body.uri}');
// print('\n');
// print('RawSession: ${raw.session}');
// print('\n');
