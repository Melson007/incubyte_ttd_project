class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    RegExp delimiter =
        RegExp(r'[,\n]'); // Default delimiters: comma and newline

    // Check for custom delimiter
    if (numbers.startsWith('//')) {
      int newlineIndex = numbers.indexOf('\n');
      String customDelimiter = numbers.substring(2, newlineIndex);
      delimiter = RegExp(
          RegExp.escape(customDelimiter)); // Properly handle custom delimiters
      numbers = numbers.substring(newlineIndex + 1);
    }

    // Ensure no empty elements before parsing
    List<String> elements =
        numbers.split(delimiter).where((e) => e.isNotEmpty).toList();

    List<int> negatives = [];
    int sum = 0;

    return sum;
  }
}
