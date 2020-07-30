import 'package:fhir/fhir_r4.dart';
import 'package:intl/intl.dart';

Patient getPatient(List<String> row) => Patient(
        resourceType: 'Patient',
        id: Id(row[0]),
        birthDate: Date(
          DateFormat('MM/dd/yyyy').parse(row[2]).toString().substring(0, 10),
        ),
        gender: row[3] == 'M' ? PatientGender.male : PatientGender.female,
        //name text contains description of case
        name: [
          HumanName(
            family:
                '${row[1]}\nEvaluation_Test_Type: ${row[56]}\nGeneral_Description: ${row[62]}',
          ),
        ],
        contact: [
          PatientContact(
              organization: Reference(reference: 'Organization/FakeHospital'))
        ]);
