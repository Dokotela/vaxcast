// import 'dart:convert';
// import 'dart:io';

// import 'package:fhir/r4.dart' as r4;

// import 'capability_statements/capability_statements.dart';
// import 'vax_cast/vax_cast.dart';

// Future<void> main() async {
//   final server = await createServer();
//   print('Server started: ${server.address} port ${server.port}');
//   await handleRequests(server);
// }

// Future<HttpServer> createServer() async {
//   final address = InternetAddress.tryParse('0.0.0.0');
//   const port = 8080;
//   return await HttpServer.bind(address, port);
// }

// Future<void> handleRequests(HttpServer server) async {
//   await for (HttpRequest request in server) {
//     switch (request.method) {
//       case 'GET':
//         {
//           switch (request.uri.toString()) {
//             case '/dstu2/metadata':
//               {
//                 dstu2Metadata(request);
//               }
//               break;
//             case '/stu3/metadata':
//               {
//                 stu3Metadata(request);
//               }
//               break;
//             case '/r4/metadata':
//               {
//                 r4Metadata(request);
//               }
//               break;
//             case '/r5/metadata':
//               {
//                 r5Metadata(request);
//               }
//               break;
//             default:
//               {
//                 handleDefault(request);
//               }
//           }
//         }
//         break;
//       case 'POST':
//         {
//           switch (request.uri.toString()) {
//             case '/dstu2/metadata':
//               {
//                 dstu2Metadata(request);
//               }
//               break;
//             case '/stu3/metadata':
//               {
//                 stu3Metadata(request);
//               }
//               break;
//             case '/r4/metadata':
//               {
//                 r4Metadata(request);
//               }
//               break;
//             case '/r5/metadata':
//               {
//                 r5Metadata(request);
//               }
//               break;
//             case '/dstu2/ImmDSForecastOperation':
//               {
//                 dstu2VaxCast(request);
//               }
//               break;
//             case '/stu3/ImmDSForecastOperation':
//               {
//                 stu3VaxCast(request);
//               }
//               break;
//             case '/r4/ImmDSForecastOperation':
//               {
//                 r4VaxCast(request);
//               }
//               break;
//             case '/r5/ImmDSForecastOperation':
//               {
//                 r5VaxCast(request);
//               }
//               break;
//             default:
//               {
//                 handleDefault(request);
//               }
//           }
//         }
//         break;
//       default:
//         {
//           handleDefault(request);
//         }
//     }
//   }
// }

// void dstu2Metadata(HttpRequest request) {
//   request.response
//     ..write(dstu2CapabilityStatement.toYaml())
//     ..close();
// }

// void stu3Metadata(HttpRequest request) {
//   request.response
//     ..write(stu3CapabilityStatement.toYaml())
//     ..close();
// }

// void r4Metadata(HttpRequest request) {
//   request.response
//     ..write(r4CapabilityStatement.toYaml())
//     ..close();
// }

// void r5Metadata(HttpRequest request) {
//   request.response
//     ..write(r5CapabilityStatement.toYaml())
//     ..close();
// }

// Future<void> dstu2VaxCast(HttpRequest request) async {
//   final parameterMap = await utf8.decoder.bind(request).join();
//   request.response
//     ..write('${_prettyPrint(parameterMap)}')
//     ..close();
// }

// Future<void> stu3VaxCast(HttpRequest request) async {
//   final parameterMap = await utf8.decoder.bind(request).join();
//   request.response
//     ..write('${_prettyPrint(parameterMap)}')
//     ..close();
// }

// Future<void> r4VaxCast(HttpRequest request) async {
//   final parameterMap = await utf8.decoder.bind(request).join();
//   r4.Parameters input = r4.Parameters.fromJson(jsonDecode(parameterMap));
//   r4.Patient newPatient = input.parameter![1].resource! as r4.Patient;
//   String assessmentDate = input.parameter![0].valueDate.toString();
//   List<r4.Immunization> newImmunizations = [];
//   input.parameter?.forEach((parameter) {
//     if (parameter.resource?.resourceType == r4.R4ResourceType.Immunization) {
//       newImmunizations.add(parameter.resource! as r4.Immunization);
//     }
//   });
//   r4.Parameters forecast =
//       await VaxCast().forecastR4(newPatient, newImmunizations, assessmentDate);
//   request.response
//     ..write('${jsonEncode(forecast.toJson())}')
//     ..close();
// }

// Future<void> r5VaxCast(HttpRequest request) async {
//   final parameterMap = await utf8.decoder.bind(request).join();
//   request.response
//     ..write('${_prettyPrint(parameterMap)}')
//     ..close();
// }

// void handleDefault(HttpRequest request) {
//   request.response
//     ..statusCode = HttpStatus.methodNotAllowed
//     ..write('Unsupported request: ${request.method}.')
//     ..close();
// }

// String _prettyPrint(String resource) {
//   JsonDecoder decoder = JsonDecoder();
//   JsonEncoder encoder = JsonEncoder.withIndent('  ');
//   var object = decoder.convert(resource);
//   return encoder.convert(object);
// }
