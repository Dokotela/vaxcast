import 'dart:convert';
import 'dart:io';

import 'package:angel_framework/angel_framework.dart';
import 'package:logging/logging.dart';
import '../imm_ds/r4/fhir_lists/all_cases.dart' as r4;

import 'shared_routes.dart';

Future<Angel> createServer() async {
  var app = new Angel()..serializer = json.encode;

  // Edit this line, and then refresh the page in your browser!
  app.get('/', (req, res) => 'Welcome to VaxCast!');

  app.get('/:version/metadata', (req, res) => conformanceStatement());

  //full list of patients as Bundle in requested version
  app.get('/:version/patientList/all', (req, res) => r4.cases);

  //patient list as Bundle in requested version by antigen
  app.get('/:version/patientList/:antigen',
      (req, res) => r4AntigenBundle(req.params['antigen']));

  //patient list as Bundle in requested version by antigen
  app.post('/:version/fhir/\$immds-forecast', (req, res) async {
    await req.parseBody();
    return jsonEncode(await immdsForecast(req.bodyAsMap, req.headers));
  });

  //returns bundle of parameters consisting of patient with given ID and
  //immunization history
  app.get(
      '/:version/parameters/case/:id',
      (req, res) async => await jsonDecode(await File(
              './lib/imm_ds/${req.params['version']}/individual_cases/${req.params['id']}.json')
          .readAsString()));

  //returns bundle of parameters consisting of evaluations and recommendation
  //for patient with given ID
  app.get(
      '/:version/parameters/response/:id',
      (req, res) async => await jsonDecode(await File(
              './lib/imm_ds/${req.params['version']}/individual_responses/${req.params['id']}.json')
          .readAsString()));

  app.fallback((req, res) => throw new AngelHttpException.notFound());

  app.encoders.addAll({
    'gzip': gzip.encoder,
    'deflate': zlib.encoder,
  });

  app.logger = new Logger('angel')
    ..onRecord.listen((rec) {
      print(rec);
      if (rec.error != null) {
        print(rec.error);
        // print(rec.stackTrace);
      }
    });

  return app;
}
