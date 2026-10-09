
Map<String, int> countNumbers(List<int> numbers) {
  int positive = 0;
  int negative = 0;
  int zero = 0;

  for (int number in numbers) {
    if (number > 0) {
      positive++;
    } else if (number < 0) {
      negative++;
    } else {
      zero++;
    }
  }

  return {
    'positive': positive,
    'negative': negative,
    'zero': zero,
  };
}

void main() {
  List<int> numbers = [5, -2, 0, 7, -4, 0];

  Map<String, int> result = countNumbers(numbers);

  print('Positive: ${result['positive']}');
  print('Negative: ${result['negative']}');
  print('Zero: ${result['zero']}');
}
