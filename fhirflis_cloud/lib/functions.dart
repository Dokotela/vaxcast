import 'dart:convert';

import 'package:fhir/dstu2.dart' as dstu2;
import 'package:fhir/stu3.dart' as stu3;
import 'package:fhir/r4.dart' as r4;
import 'package:fhir/r5.dart' as r5;
import 'package:functions_framework/functions_framework.dart';
import 'package:shelf/shelf.dart';

import 'capability_statements/capability_statements.dart';
import 'vax_cast/vax_cast.dart';

@CloudFunction()
Future<Response> function(Request request) async {
  switch (request.method) {
    case 'GET':
      {
        switch (request.url.toString()) {
          case 'dstu2/metadata':
            {
              return Response.ok(dstu2Metadata());
            }
            break;
          case 'stu3/metadata':
            {
              return Response.ok(stu3Metadata());
            }
            break;
          case 'r4/metadata':
            {
              return Response.ok(r4Metadata());
            }
            break;
          case 'r5/metadata':
            {
              return Response.ok(r5Metadata());
            }
            break;
          default:
            {
              return Response.ok(handleDefault(request));
            }
        }
      }
      break;
    case 'POST':
      {
        switch (request.url.toString()) {
          case 'dstu2/metadata':
            {
              return Response.ok(dstu2Metadata());
            }
            break;
          case 'stu3/metadata':
            {
              return Response.ok(stu3Metadata());
            }
            break;
          case 'r4/metadata':
            {
              return Response.ok(r4Metadata());
            }
            break;
          case 'r5/metadata':
            {
              return Response.ok(r5Metadata());
            }
            break;
          case 'dstu2/ImmDSForecastOperation':
            {
              return Response.ok(await dstu2VaxCast(request));
            }
            break;
          case 'stu3/ImmDSForecastOperation':
            {
              return Response.ok(await stu3VaxCast(request));
            }
            break;
          case 'r4/ImmDSForecastOperation':
            {
              return Response.ok(await r4VaxCast(request));
            }
            break;
          case 'r5/ImmDSForecastOperation':
            {
              return Response.ok(await r5VaxCast(request));
            }
            break;
          default:
            {
              return Response.ok(handleDefault(request));
            }
        }
      }
      break;
    default:
      {
        return Response.ok(handleDefault(request));
      }
  }
}

String dstu2Metadata() => dstu2CapabilityStatement.toYaml();

String stu3Metadata() => stu3CapabilityStatement.toYaml();

String r4Metadata() => r4CapabilityStatement.toYaml();

String r5Metadata() => r5CapabilityStatement.toYaml();

String handleDefault(Request request) =>
    'Unsupported request: ${request.method}';

Future<String> dstu2VaxCast(Request request) async {
  final resource =
      dstu2.Resource.fromJson(json.decode(await request.readAsString()));
  return resource.toYaml();
}

Future<String> stu3VaxCast(Request request) async {
  final resource =
      stu3.Resource.fromJson(json.decode(await request.readAsString()));
  return resource.toYaml();
}

Future<String> r4VaxCast(Request request) async {
  var input = r4.Parameters.fromJson(json.decode(await request.readAsString()));
  r4.Patient newPatient = input.parameter[1].resource;
  var assessmentDate = input.parameter[0].valueDate.toString();
  List newImmunizations = <r4.Immunization>[];
  input.parameter.forEach((parameter) {
    if (parameter?.resource?.resourceType == r4.R4ResourceType.Immunization) {
      newImmunizations.add(parameter.resource);
    }
  });
  return jsonEncode(
      (await VaxCast().forecastR4(newPatient, newImmunizations, assessmentDate))
          .toJson());
}

Future<String> r5VaxCast(Request request) async {
  final resource =
      r5.Resource.fromJson(json.decode(await request.readAsString()));
  return resource.toYaml();
}
