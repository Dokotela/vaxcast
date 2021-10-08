import 'package:fhir/stu3.dart';

final stu3CapabilityStatement = CapabilityStatement(
  id: Id('stu3_vaxcast'),
  name: 'STU3 VaxCast',
  title: 'STU3 VaxCast',
  fhirVersion: '3.0.2',
  date: FhirDateTime('2021-01-01'),
  status: CapabilityStatementStatus.active,
  publisher: 'FHIR-FLI',
  contact: [
    ContactDetail(
      name: 'System Administrator',
      telecom: [
        ContactPoint(
            system: ContactPointSystem.email, value: 'grey@fhirfli.dev'),
      ],
    ),
  ],
  description: 'VaxCast Server to Provide Immunization Forecasting',
  kind: CapabilityStatementKind.capability,
  format: [
    'json',
    'json_fhir',
    'yaml',
  ],
  rest: [
    CapabilityStatementRest(
      mode: CapabilityStatementRestMode.server,
      documentation: 'Immunization Forecast',
      operation: [
        CapabilityStatementOperation(
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
