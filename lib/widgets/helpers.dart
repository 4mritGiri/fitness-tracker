import 'dart:math';

final Map<int, String> daysOfWeek = {
  1: "MON",
  2: "TUE",
  3: "WED",
  4: "THU",
  5: "FRI",
  6: "SAT",
  7: "SUN",
};

int randBetween(int min, int max) {
  return Random().nextInt(max - min) + min;
}

String formatNumber(int number) {
  return number.toString().replaceAllMapped(
        RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
        (Match match) => '${match[1]},',
      );
}

String formatNepNumber(int number) {
  String numStr = number.toString();
  if (numStr.length <= 3) return numStr;

  String lastThree = numStr.substring(numStr.length - 3);
  String remaining = numStr.substring(0, numStr.length - 3);
  String reversedRemaining = remaining.split('').reversed.join('');
  String formattedReversedRemaining = reversedRemaining.replaceAllMapped(
    RegExp(r'(\d{2})'),
    (Match match) => '${match[1]},',
  );
  String formattedRemaining =
      formattedReversedRemaining.split('').reversed.join('');
  if (formattedRemaining.startsWith(',')) {
    formattedRemaining = formattedRemaining.substring(1);
  }
  return '$formattedRemaining,$lastThree';
}
