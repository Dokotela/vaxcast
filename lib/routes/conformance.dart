import 'package:fhir/fhir_r4.dart' as r4;

r4.CapabilityStatement conformanceStatement() => r4.CapabilityStatement(
      resourceType: 'CapabilityStatement',
      status: r4.CapabilityStatementStatus.active,
      date: r4.FhirDateTime(DateTime.now().toIso8601String()),
      software:
          r4.CapabilityStatementSoftware(name: 'VaxCast', version: '1.0.0'),
      fhirVersion: r4.CapabilityStatementFhirVersion.v4_0_1,
      format: [r4.Code('application/fhir+json')],
      rest: [
        r4.CapabilityStatementRest(
          mode: r4.CapabilityStatementRestMode.server,
          resource: [
            r4.CapabilityStatementResource(
              type: r4.Code('Bundle'),
              profile: r4.Canonical(
                  'http://hl7.org/fhir/StructureDefinition/Bundle'),
              interaction: [
                r4.CapabilityStatementInteraction(
                    code: r4.CapabilityStatementInteractionCode.read)
              ],
            ),
            r4.CapabilityStatementResource(
              type: r4.Code('List'),
              profile:
                  r4.Canonical('http://hl7.org/fhir/StructureDefinition/List'),
              interaction: [
                r4.CapabilityStatementInteraction(
                    code: r4.CapabilityStatementInteractionCode.read)
              ],
            ),
            r4.CapabilityStatementResource(
              type: r4.Code('Parameters'),
              profile: r4.Canonical(
                  'http://hl7.org/fhir/StructureDefinition/Parameters'),
              interaction: [
                r4.CapabilityStatementInteraction(
                    code: r4.CapabilityStatementInteractionCode.read)
              ],
            ),
          ],
        ),
      ],
    );
