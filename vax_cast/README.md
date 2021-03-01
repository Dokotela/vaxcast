## vax_cast
FHIR Immunization Forecasting Tool for use with Dart &amp; Flutter

### to run server locally
``` 
$ dart --observe ./bin/server.dart 
```
This can then be accessed via 127.0.0.1:3000/{endpoint}

### Test case querying
NIST and the CDC have released [802 test cases](https://fits.nist.gov/fits/#/home) for helping to evaluate vaccination forecast engines. This server can provide them in a FHIR format for dstu2, stu3, r4 and r5. As is usual, all information is sent as a bundle. The following endpoints can be queried:
1. /patient/{fhir version}/all - will provide a bundle with a single entry, a List resource, containing all patients:
```
{"resourceType":"Bundle","type":"searchset","entry":[{"resource":{"resourceType":"List","status":"current","mode":"working","entry":[{"item":{"reference":"Patient/2019-0003"}}]}}]}
```
2. /patient/{fhir version}/ag/{antigen} - will provide a bundle in the same format as above, but only for the given antigen
3. /patient/{fhir version}/{case id}/case - will provide a bundle with a single entry, a parameter resource. within this parameter resource, there are multiple resources, an assessment date, a patient, and then any past immunizations, if they exist. It is consistent with [this example](http://build.fhir.org/ig/HL7/ImmunizationFHIRDS/Parameters-parameters-in-example.json.html).
4. /patient/{fhir version}/{case id}/response - a bundle with a single entry, a parameter. This parameter has multiple resources, an evaluation for each immunization the patient has received, and then a single recommendation. It is consistent with [this example](http://build.fhir.org/ig/HL7/ImmunizationFHIRDS/Parameters-parameters-out-example.json.html).
5. /patient/{fhir version}/{case id}/full - this is a bundle with two entries, both parameters. It contains the parameter from number 3 above and the parameter for number 4 above, for a complete record of the test patient.

### FHIR and Vaccine Forecasting
This application receives FHIR resources and then evaluates which vaccines are further needed for a patient. It is currently operating under the [specifications found here](http://florence.immregistries.org/ImmunizationFhirDSShorthand/site/).

### CDC Guidelines
The CDC has released structure for [Clinical Decision Support for Immunization (CDSi)](https://www.cdc.gov/vaccines/programs/iis/cdsi.html). [This is their full manual](https://www.cdc.gov/vaccines/programs/iis/interop-proj/downloads/logic-spec-acip-rec-4.0.pdf). You may also download the [individual files](https://www.cdc.gov/vaccines/programs/iis/interop-proj/downloads/supporting-data-4.3-508.zip) that I've used to build the logic. The main difference is that I've taken their [xml](documentation/cdc/XML) and converted it to [json](documentation/cdc/JSON) because I find that easier to work with.

The whole process starts by creating a [spreadsheet for each antigen](documentation/cdc/Excel). Here they are in [ODF Format](documentation/cdc/CDC%20ODF). These are then parsed into the XML above.

We are currently working on developing the same structure using [WHO guidelines](https://www.who.int/immunization/policy/immunization_tables/en/). This work has just started, and we've [completed BCG](documentation/cdc/WHO%20ODF).

### My Manual
I found the CDC manual helpful, but at times challenging to understand. I have attempted to rewrite much of it for added clarity. Mostly for myself (as I doubt anyone else will read it) but in case anyone else would like to, I have included it here.

### Contents

#### [Introduction](documentation/manual/00.%20introduction.md) - brief overview and some high points that are useful to keep in mind
#### [chapter 1](documentation/manual/01.%20chapter%201%20-%20Logic%20Specification%20Concepts.md) - Explanation of the Target Dose, how dates are calculated, and an (unnecessarily) long list of definitions
#### [chapter 2](documentation/manual/02.%20chapter%202%20-%20Processing%20Model.md) - These are the necessary steps towards forecasting, starting with getting the history
#### [chapter 3](documentation/manual/03.%20chapter%203%20-%20Create%20Relevant%20Patient%20Series.md) - How to find the series that are relevant for that patient
#### [chapter 4](documentation/manual/04.%20chapter%204%20-%20Evaluation%20Process%20Steps%20copy.md) - Logic behind evaluating the vaccination steps for doses that have already been given.
#### [chapter 5](documentation/manual/05.%20chapter%205%20-%20Forecast%20Dates%20and%20Reasons.md) - the logic behind the actual forecasting the next doses in the series. Still very much a work in progress.

### ToDo

Live Virus Conflict needs to be thought out further.
