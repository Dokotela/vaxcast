String GetDataType(String obj) {
  var newObj = obj.split('_')[0];
  var type;
  PrimitiveTypes().contains(newObj)
      ? type = 'PrimitiveType'
      : Resource().contains(newObj)
          ? type = 'GenDataType'
          : Quantity().contains(newObj)
              ? type = 'MetaDataType'
              : Element().contains(newObj)
                  ? type = 'SpecialPurposeType'
                  : DomainResource().contains(newObj)
                      ? type = 'ResourceType'
                      : type = '***unknown data type $newObj';
  return type;
}

List<String> PrimitiveTypes() => [
      'instant',
      'time',
      'date',
      'dateTime',
      'base64Binary',
      'decimal',
      'boolean',
      'url',
      'code',
      'string',
      'integer',
      'uri',
      'canonical',
      'markdown',
      'id',
      'unsignedInt',
      'positiveInt',
      'oid',
      'uuid',
      'xhtml',
      'ResourceList',
      'Element'
    ];

List<String> Resource() => ['Binary', 'Bundle', 'DomainResource', 'Parameters'];

List<String> Quantity() => ['Duration', 'Distance', 'Count', 'Money', 'Age'];

List<String> Element() => [
      'Extension',
      'BackboneElement',
      'Narrative',
      'Annotation',
      'Attachment',
      'Identifier',
      'CodeableConcept',
      'Coding',
      'Quantity',
      'Range',
      'Period',
      'Ratio',
      'Reference',
      'SampledData',
      'Signature',
      'HumanName',
      'Address',
      'ContactPoint',
      'Timing',
      'Meta',
      'ElementDefinition',
      'ContactDetail',
      'Contributor',
      'Dosage',
      'RelatedArtifact',
      'UsageContext',
      'DataRequirement',
      'ParameterDefinition',
      'TriggerDefinition',
      'Resource'
    ];

List<String> DomainResource() => [
      'Account',
      'ActivityDefinition',
      'AdverseEvent',
      'AllergyIntolerance',
      'Appointment',
      'AppointmentResponse',
      'AuditEvent',
      'Basic',
      'BodySite',
      'CapabilityStatement',
      'CarePlan',
      'CareTeam',
      'ChargeItem',
      'Claim',
      'ClaimResponse',
      'ClinicalImpression',
      'CodeSystem',
      'Communication',
      'CommunicationRequest',
      'CompartmentDefinition',
      'Composition',
      'ConceptMap',
      'Condition',
      'Consent',
      'Contract',
      'Coverage',
      'DataElement',
      'DetectedIssue',
      'Device',
      'DeviceComponent',
      'DeviceMetric',
      'DeviceRequest',
      'DeviceUseStatement',
      'DiagnosticReport',
      'DocumentManifest',
      'DocumentReference',
      'EligibilityRequest',
      'EligibilityResponse',
      'Encounter',
      'Endpoint',
      'EnrollmentRequest',
      'EnrollmentResponse',
      'EpisodeOfCare',
      'ExpansionProfile',
      'ExplanationOfBenefit',
      'FamilyMemberHistory',
      'Flag',
      'Goal',
      'GraphDefinition',
      'Group',
      'GuidanceResponse',
      'HealthcareService',
      'ImagingManifest',
      'ImagingStudy',
      'Immunization',
      'ImmunizationRecommendation',
      'ImplementationGuide',
      'Library',
      'Linkage',
      'List',
      'Location',
      'Measure',
      'MeasureReport',
      'Media',
      'Medication',
      'MedicationAdministration',
      'MedicationDispense',
      'MedicationRequest',
      'MedicationStatement',
      'MessageDefinition',
      'MessageHeader',
      'NamingSystem',
      'NutritionOrder',
      'Observation',
      'OperationDefinition',
      'OperationOutcome',
      'Organization',
      'Patient',
      'PaymentNotice',
      'PaymentReconciliation',
      'Person',
      'PlanDefinition',
      'Practitioner',
      'PractitionerRole',
      'Procedure',
      'ProcedureRequest',
      'ProcessRequest',
      'ProcessResponse',
      'Provenance',
      'Questionnaire',
      'QuestionnaireResponse',
      'ReferralRequest',
      'RelatedPerson',
      'RequestGroup',
      'ResearchStudy',
      'ResearchSubject',
      'RiskAssessment',
      'Schedule',
      'SearchParameter',
      'Sequence',
      'ServiceDefinition',
      'Slot',
      'Specimen',
      'StructureDefinition',
      'StructureMap',
      'Subscription',
      'Substance',
      'SupplyDelivery',
      'SupplyRequest',
      'Task',
      'TestReport',
      'TestScript',
      'ValueSet',
      'VisionPrescription'
    ];
