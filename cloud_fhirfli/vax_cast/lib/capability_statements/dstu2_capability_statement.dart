import 'package:fhir/dstu2.dart';

final dstu2CapabilityStatement = Conformance(
  id: Id('dstu2-vaxcast'),
  name: 'DSTU2 VaxCast',
  fhirVersion: Id('1.0.2'),
  date: FhirDateTime('2021-01-01'),
  status: ConformanceStatus.active,
  publisher: 'FHIR-FLI',
  acceptUnknown: ConformanceAcceptUnknown.no,
  contact: [
    ConformanceContact(
      name: 'System Administrator',
      telecom: [
        ContactPoint(
            system: ContactPointSystem.email, value: 'grey@fhirfli.dev'),
      ],
    ),
  ],
  description: 'VaxCast Server to Provide Immunization Forecasting',
  kind: ConformanceKind.capability,
  format: [
    ConformanceFormat.json,
    ConformanceFormat.json_fhir,
    ConformanceFormat.yaml,
  ],
  rest: [
    ConformanceRest(
      mode: RestMode.server,
      documentation: 'Immunization Forecast',
      resource: null,
      operation: [
        ConformanceRestOperation(
          name: 'ImmDSForecast',
          definition: Reference(
            reference:
                'http://hl7.org/fhir/us/ImmunizationFHIRDS/OperationDefinition/ImmDSForecastOperation',
          ),
        ),
      ],
    ),
  ],
);
