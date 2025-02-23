import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_ttd_project/calculator.dart';

void main() {
  test('empty string should return 0', () {
    final calculator = StringCalculator();
    expect(calculator.add(""), 0);
  });
}
