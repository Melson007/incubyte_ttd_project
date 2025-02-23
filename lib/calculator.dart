class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    List<String> numList = numbers.split(RegExp(r',|\n'));
    return numList.map(int.parse).reduce((a, b) => a + b);
  }
}
