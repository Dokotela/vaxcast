import 'package:test/test.dart';
import 'package:vaxcast/vax_date.dart';

void main() {
  test('Add years', () {
    expect(
      VaxDate.fromMMDDYYYY('01/01/2000').changeIfNotNull('3 years'),
      VaxDate.fromMMDDYYYY('01/01/2003'),
    );
  });
  test('Add months', () {
    expect(
      VaxDate.fromMMDDYYYY('01/01/2000').changeIfNotNull('6 months'),
      VaxDate.fromMMDDYYYY('07/01/2000'),
    );
    expect(
      VaxDate.fromMMDDYYYY('11/01/2000').changeIfNotNull('6 months'),
      VaxDate.fromMMDDYYYY('05/01/2001'),
    );
  });
  test('Add weeks', () {
    expect(
      VaxDate.fromMMDDYYYY('01/01/2000').changeIfNotNull('3 weeks'),
      VaxDate.fromMMDDYYYY('01/22/2000'),
    );
    expect(
      VaxDate.fromMMDDYYYY('02/01/2000').changeIfNotNull('5 weeks'),
      VaxDate.fromMMDDYYYY('03/07/2000'),
    );
    expect(
      VaxDate.fromMMDDYYYY('02/01/2001').changeIfNotNull('5 weeks'),
      VaxDate.fromMMDDYYYY('03/08/2001'),
    );
  });
  test('Add days', () {
    expect(
      VaxDate.fromMMDDYYYY('01/01/2000').changeIfNotNull('3 days'),
      VaxDate.fromMMDDYYYY('01/04/2000'),
    );
  });
  test('Subtract days', () {
    expect(
      VaxDate.fromMMDDYYYY('01/15/2000').changeIfNotNull('-4 days'),
      VaxDate.fromMMDDYYYY('01/11/2000'),
    );
  });
  test('Nonexistent dates', () {
    expect(
      VaxDate.fromMMDDYYYY('03/31/2000').changeIfNotNull('6 months'),
      VaxDate.fromMMDDYYYY('10/01/2000'),
    );
    expect(
      VaxDate.fromMMDDYYYY('08/31/2000').changeIfNotNull('6 months'),
      VaxDate.fromMMDDYYYY('03/01/2001'),
    );
  });
  test('Compound calculation', () {
    expect(
      VaxDate.fromMMDDYYYY('01/31/2000').changeIfNotNull('6 months -4 days'),
      VaxDate.fromMMDDYYYY('07/27/2000'),
    );
  });
}
