import 'dart:convert';
import 'dart:io';

import 'package:angel_framework/angel_framework.dart';
import 'package:logging/logging.dart';

import 'shared_routes.dart';

Future<Angel> createServer() async {
  var app = new Angel()..serializer = json.encode;

  // Edit this line, and then refresh the page in your browser!
  app.get('/', (req, res) => 'Welcome to VaxCast!');

  //full list of patients as Bundle in requested version
  app.get('/patient/:version/all',
      (req, res) => fullPatientList(req.params['version']));

  //patient list as Bundle in requested version by antigen
  app.get(
      '/patient/:version/ag/:antigen',
      (req, res) =>
          patientsByAntigen(req.params['version'], req.params['antigen']));

  //returns bundle of parameters consisting of patient with given ID and
  //immunization history
  app.get(
      'patient/:version/:id/case',
      (req, res) async =>
          await patientCase(req.params['version'], req.params['id']));

  //returns bundle of parameters consisting of evaluations and recommendation
  //for patient with given ID
  app.get(
      'patient/:version/:id/response',
      (req, res) async =>
          await patientResponse(req.params['version'], req.params['id']));

  //returns bundle of parameters consisting of the two above bundles combined
  app.get(
      'patient/:version/:id/full',
      (req, res) async =>
          await fullPatient(req.params['version'], req.params['id']));

  app.post('/:version/forecast',
      (req, res) => forecast(req.params['version'], req.bodyAsMap));

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
        print(rec.stackTrace);
      }
    });

  return app;
}
