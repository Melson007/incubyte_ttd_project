import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_ttd_project/calculator.dart';

void main() {
  test('empty string should return 0', () {
    final calculator = StringCalculator();
    expect(calculator.add(""), 0);
  });

  test('single number should return the number itself', () {
    final calculator = StringCalculator();
    expect(calculator.add("1"), 1);
  });

  test('two numbers separated by a comma should return their sum', () {
    final calculator = StringCalculator();
    expect(calculator.add("1,2"), 3);
  });
  test('multiple numbers separated by commas should return their sum', () {
    final calculator = StringCalculator();
    expect(calculator.add("1,2,3,4"), 10);
  });
  test('should handle newline as a separator', () {
    final calculator = StringCalculator();
    expect(calculator.add("1\n2,3"), 6);
  });
  test('should support custom delimiters', () {
    final calculator = StringCalculator();
    expect(calculator.add("//;\n1;2"), 3);
  });
}
