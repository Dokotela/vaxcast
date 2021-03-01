import 'package:fhir/r5.dart';

final r5CapabilityStatement = CapabilityStatement(
  id: Id('r5_vaxcast'),
  name: 'R5 VaxCast',
  title: 'R5 VaxCast',
  fhirVersion: CapabilityStatementFhirVersion.v4_5_0,
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
  description: Markdown('VaxCast Server to Provide Immunization Forecasting'),
  kind: CapabilityStatementKind.capability,
  format: [
    Code('json'),
    Code('json_fhir'),
    Code('yaml'),
  ],
  rest: [
    CapabilityStatementRest(
      mode: CapabilityStatementRestMode.server,
      documentation: Markdown('Immunization Forecast'),
      operation: [
        CapabilityStatementOperation(
          name: 'ImmDSForecast',
          definition: Canonical(
            'http://hl7.org/fhir/us/ImmunizationFHIRDS/OperationDefinition/ImmDSForecastOperation',
          ),
        ),
      ],
    ),
  ],
);
