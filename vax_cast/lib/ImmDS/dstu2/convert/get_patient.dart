import 'package:fhir/dstu2.dart';
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
          text:
              '${row[1]}\nEvaluation_Test_Type: ${row[56]}\nGeneral_Description: ${row[62]}',
        ),
      ],
    );
