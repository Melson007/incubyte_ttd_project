class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    RegExp delimiter =
        RegExp(r'[,\n]'); // Default delimiters: comma and newline

    // Check for custom delimiter
    if (numbers.startsWith('//')) {
      int newlineIndex = numbers.indexOf('\n');
      String customDelimiter = numbers.substring(2, newlineIndex);
      delimiter = RegExp(RegExp.escape(customDelimiter)); // Escape properly
      numbers = numbers.substring(newlineIndex + 1);
    }

    // Ensure valid input before parsing
    List<String> elements =
        numbers.split(delimiter).where((e) => e.isNotEmpty).toList();

    List<int> negatives = [];
    int sum = 0;

    for (String element in elements) {
      int? number = int.tryParse(element); // Prevent FormatException
      if (number == null) continue; // Skip invalid entries

      if (number < 0) {
        negatives.add(number);
      } else {
        sum += number;
      }
    }

    if (negatives.isNotEmpty) {
      throw Exception("Negative numbers not allowed: ${negatives.join(', ')}");
    }

    return sum;
  }
}
